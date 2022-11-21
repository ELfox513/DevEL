package com.esotericsoftware.kryo.util;

import com.esotericsoftware.kryo.ClassResolver;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.Registration;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.minlog.Log;
/* loaded from: classes.dex */
public class DefaultClassResolver implements ClassResolver {
    public static final byte NAME = -1;

    /* renamed from: b */
    public Registration f7396b;

    /* renamed from: c */
    public Class f7397c;
    public IdentityObjectIntMap<Class> classToNameId;

    /* renamed from: d */
    public Registration f7398d;
    public Kryo kryo;
    public IntMap<Class> nameIdToClass;
    public ObjectMap<String, Class> nameToClass;
    public int nextNameId;
    public final IntMap<Registration> idToRegistration = new IntMap<>();
    public final IdentityMap<Class, Registration> classToRegistration = new IdentityMap<>();

    /* renamed from: a */
    public int f7395a = -1;

    @Override // com.esotericsoftware.kryo.ClassResolver
    public Registration getRegistration(Class cls) {
        if (cls == this.f7397c) {
            return this.f7398d;
        }
        Registration registration = this.classToRegistration.get(cls);
        if (registration != null) {
            this.f7397c = cls;
            this.f7398d = registration;
        }
        return registration;
    }

    public Class getTypeByName(String str) {
        ObjectMap<String, Class> objectMap = this.nameToClass;
        if (objectMap != null) {
            return objectMap.get(str);
        }
        return null;
    }

    @Override // com.esotericsoftware.kryo.ClassResolver
    public Registration readClass(Input input) {
        int readVarInt = input.readVarInt(true);
        if (readVarInt != 0) {
            if (readVarInt != 1) {
                if (readVarInt == this.f7395a) {
                    if (Log.TRACE) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Read class ");
                        sb.append(readVarInt - 2);
                        sb.append(": ");
                        sb.append(Util.className(this.f7396b.getType()));
                        sb.append(Util.pos(input.position()));
                        Log.trace("kryo", sb.toString());
                    }
                    return this.f7396b;
                }
                int i = readVarInt - 2;
                Registration registration = this.idToRegistration.get(i);
                if (registration != null) {
                    if (Log.TRACE) {
                        Log.trace("kryo", "Read class " + i + ": " + Util.className(registration.getType()) + Util.pos(input.position()));
                    }
                    this.f7395a = readVarInt;
                    this.f7396b = registration;
                    return registration;
                }
                throw new KryoException("Encountered unregistered class ID: " + i);
            }
            return readName(input);
        }
        if (Log.TRACE || (Log.DEBUG && this.kryo.getDepth() == 1)) {
            Util.log("Read", null, input.position());
        }
        return null;
    }

    public Registration readName(Input input) {
        int readVarInt = input.readVarInt(true);
        if (this.nameIdToClass == null) {
            this.nameIdToClass = new IntMap<>();
        }
        Class<?> cls = this.nameIdToClass.get(readVarInt);
        if (cls == null) {
            String readString = input.readString();
            Class<?> typeByName = getTypeByName(readString);
            if (typeByName == null) {
                try {
                    typeByName = Class.forName(readString, false, this.kryo.getClassLoader());
                } catch (ClassNotFoundException e) {
                    try {
                        typeByName = Class.forName(readString, false, Kryo.class.getClassLoader());
                    } catch (ClassNotFoundException unused) {
                        throw new KryoException("Unable to find class: " + readString, e);
                    }
                }
                if (this.nameToClass == null) {
                    this.nameToClass = new ObjectMap<>();
                }
                this.nameToClass.put(readString, typeByName);
            }
            this.nameIdToClass.put(readVarInt, typeByName);
            if (Log.TRACE) {
                Log.trace("kryo", "Read class name: " + readString + Util.pos(input.position()));
            }
            cls = typeByName;
        } else if (Log.TRACE) {
            Log.trace("kryo", "Read class name reference " + readVarInt + ": " + Util.className(cls) + Util.pos(input.position()));
        }
        return this.kryo.getRegistration(cls);
    }

    @Override // com.esotericsoftware.kryo.ClassResolver
    public Registration register(Registration registration) {
        this.f7395a = -1;
        this.f7397c = null;
        if (registration != null) {
            if (registration.getId() != -1) {
                if (Log.TRACE) {
                    Log.trace("kryo", "Register class ID " + registration.getId() + ": " + Util.className(registration.getType()) + " (" + registration.getSerializer().getClass().getName() + ")");
                }
                this.idToRegistration.put(registration.getId(), registration);
            } else if (Log.TRACE) {
                Log.trace("kryo", "Register class name: " + Util.className(registration.getType()) + " (" + registration.getSerializer().getClass().getName() + ")");
            }
            this.classToRegistration.put(registration.getType(), registration);
            Class wrapperClass = Util.getWrapperClass(registration.getType());
            if (wrapperClass != registration.getType()) {
                this.classToRegistration.put(wrapperClass, registration);
            }
            return registration;
        }
        throw new IllegalArgumentException("registration cannot be null.");
    }

    @Override // com.esotericsoftware.kryo.ClassResolver
    public Registration registerImplicit(Class cls) {
        return register(new Registration(cls, this.kryo.getDefaultSerializer(cls), -1));
    }

    @Override // com.esotericsoftware.kryo.ClassResolver
    public void setKryo(Kryo kryo) {
        this.kryo = kryo;
    }

    @Override // com.esotericsoftware.kryo.ClassResolver
    public Registration writeClass(Output output, Class cls) {
        if (cls == null) {
            if (Log.TRACE || (Log.DEBUG && this.kryo.getDepth() == 1)) {
                Util.log("Write", null, output.position());
            }
            output.writeByte((byte) 0);
            return null;
        }
        Registration registration = this.kryo.getRegistration(cls);
        if (registration.getId() == -1) {
            writeName(output, cls, registration);
        } else {
            if (Log.TRACE) {
                Log.trace("kryo", "Write class " + registration.getId() + ": " + Util.className(cls) + Util.pos(output.position()));
            }
            output.writeVarInt(registration.getId() + 2, true);
        }
        return registration;
    }

    public void writeName(Output output, Class cls, Registration registration) {
        int i;
        output.writeByte(1);
        IdentityObjectIntMap<Class> identityObjectIntMap = this.classToNameId;
        if (identityObjectIntMap != null && (i = identityObjectIntMap.get(cls, -1)) != -1) {
            if (Log.TRACE) {
                Log.trace("kryo", "Write class name reference " + i + ": " + Util.className(cls) + Util.pos(output.position()));
            }
            output.writeVarInt(i, true);
            return;
        }
        if (Log.TRACE) {
            Log.trace("kryo", "Write class name: " + Util.className(cls) + Util.pos(output.position()));
        }
        int i2 = this.nextNameId;
        this.nextNameId = i2 + 1;
        if (this.classToNameId == null) {
            this.classToNameId = new IdentityObjectIntMap<>();
        }
        this.classToNameId.put(cls, i2);
        output.writeVarInt(i2, true);
        if (registration.isTypeNameAscii()) {
            output.writeAscii(cls.getName());
        } else {
            output.writeString(cls.getName());
        }
    }

    @Override // com.esotericsoftware.kryo.ClassResolver
    public void reset() {
        if (!this.kryo.isRegistrationRequired()) {
            IdentityObjectIntMap<Class> identityObjectIntMap = this.classToNameId;
            if (identityObjectIntMap != null) {
                identityObjectIntMap.clear(2048);
            }
            IntMap<Class> intMap = this.nameIdToClass;
            if (intMap != null) {
                intMap.clear();
            }
            this.nextNameId = 0;
        }
    }

    @Override // com.esotericsoftware.kryo.ClassResolver
    public Registration unregister(int i) {
        Registration remove = this.idToRegistration.remove(i);
        if (remove != null) {
            this.classToRegistration.remove(remove.getType());
            this.f7395a = -1;
            this.f7397c = null;
            Class wrapperClass = Util.getWrapperClass(remove.getType());
            if (wrapperClass != remove.getType()) {
                this.classToRegistration.remove(wrapperClass);
            }
        }
        return remove;
    }

    @Override // com.esotericsoftware.kryo.ClassResolver
    public Registration getRegistration(int i) {
        return this.idToRegistration.get(i);
    }
}
