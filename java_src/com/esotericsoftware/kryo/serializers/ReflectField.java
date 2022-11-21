package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.Registration;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import com.esotericsoftware.kryo.util.Generics;
import java.lang.reflect.Field;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ReflectField extends FieldSerializer.CachedField {

    /* renamed from: m */
    public final FieldSerializer f7362m;

    /* renamed from: n */
    public final Generics.GenericType f7363n;

    /* loaded from: classes.dex */
    public static final class BooleanReflectField extends FieldSerializer.CachedField {
        public BooleanReflectField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            try {
                Field field = this.f7327a;
                field.setBoolean(obj2, field.getBoolean(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (boolean)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            try {
                this.f7327a.setBoolean(obj, input.readBoolean());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (boolean)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            try {
                output.writeBoolean(this.f7327a.getBoolean(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (boolean)");
                throw kryoException;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class ByteReflectField extends FieldSerializer.CachedField {
        public ByteReflectField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            try {
                Field field = this.f7327a;
                field.setByte(obj2, field.getByte(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (byte)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            try {
                this.f7327a.setByte(obj, input.readByte());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (byte)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            try {
                output.writeByte(this.f7327a.getByte(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (byte)");
                throw kryoException;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class CharReflectField extends FieldSerializer.CachedField {
        public CharReflectField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            try {
                Field field = this.f7327a;
                field.setChar(obj2, field.getChar(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (char)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            try {
                this.f7327a.setChar(obj, input.readChar());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (char)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            try {
                output.writeChar(this.f7327a.getChar(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (char)");
                throw kryoException;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class DoubleReflectField extends FieldSerializer.CachedField {
        public DoubleReflectField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            try {
                Field field = this.f7327a;
                field.setDouble(obj2, field.getDouble(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (double)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            try {
                this.f7327a.setDouble(obj, input.readDouble());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (double)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            try {
                output.writeDouble(this.f7327a.getDouble(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (double)");
                throw kryoException;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class FloatReflectField extends FieldSerializer.CachedField {
        public FloatReflectField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            try {
                Field field = this.f7327a;
                field.setFloat(obj2, field.getFloat(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (float)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            try {
                this.f7327a.setFloat(obj, input.readFloat());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (float)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            try {
                output.writeFloat(this.f7327a.getFloat(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (float)");
                throw kryoException;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class IntReflectField extends FieldSerializer.CachedField {
        public IntReflectField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            try {
                Field field = this.f7327a;
                field.setInt(obj2, field.getInt(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (int)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            try {
                if (this.f7332f) {
                    this.f7327a.setInt(obj, input.readVarInt(false));
                } else {
                    this.f7327a.setInt(obj, input.readInt());
                }
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (int)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            try {
                if (this.f7332f) {
                    output.writeVarInt(this.f7327a.getInt(obj), false);
                } else {
                    output.writeInt(this.f7327a.getInt(obj));
                }
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (int)");
                throw kryoException;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class LongReflectField extends FieldSerializer.CachedField {
        public LongReflectField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            try {
                Field field = this.f7327a;
                field.setLong(obj2, field.getLong(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (long)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            try {
                if (this.f7332f) {
                    this.f7327a.setLong(obj, input.readVarLong(false));
                } else {
                    this.f7327a.setLong(obj, input.readLong());
                }
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (long)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            try {
                if (this.f7332f) {
                    output.writeVarLong(this.f7327a.getLong(obj), false);
                } else {
                    output.writeLong(this.f7327a.getLong(obj));
                }
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (long)");
                throw kryoException;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class ShortReflectField extends FieldSerializer.CachedField {
        public ShortReflectField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            try {
                Field field = this.f7327a;
                field.setShort(obj2, field.getShort(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (short)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            try {
                this.f7327a.setShort(obj, input.readShort());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (short)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            try {
                output.writeShort(this.f7327a.getShort(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(this.f7328b + " (short)");
                throw kryoException;
            }
        }
    }

    public Object get(Object obj) {
        return this.f7327a.get(obj);
    }

    public void set(Object obj, Object obj2) {
        this.f7327a.set(obj, obj2);
    }

    /* renamed from: b */
    public Class m23220b() {
        Class resolve;
        if (this.f7329c == null && (resolve = this.f7363n.resolve(this.f7362m.f7322c.getGenerics())) != null && this.f7362m.f7322c.isFinal(resolve)) {
            return resolve;
        }
        return this.f7329c;
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
    public void copy(Object obj, Object obj2) {
        try {
            set(obj2, this.f7362m.f7322c.copy(get(obj)));
        } catch (KryoException e) {
            e.addTrace(this.f7328b + " (" + this.f7362m.f7323d.getName() + ")");
            throw e;
        } catch (IllegalAccessException e2) {
            throw new KryoException("Error accessing field: " + this.f7328b + " (" + this.f7362m.f7323d.getName() + ")", e2);
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.addTrace(this.f7328b + " (" + this.f7362m.f7323d.getName() + ")");
            throw kryoException;
        }
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
    public void read(Input input, Object obj) {
        Object readObject;
        Kryo kryo = this.f7362m.f7322c;
        try {
            Serializer serializer = this.f7330d;
            Class m23220b = m23220b();
            if (m23220b == null) {
                Registration readClass = kryo.readClass(input);
                if (readClass == null) {
                    set(obj, null);
                    return;
                }
                if (serializer == null) {
                    serializer = readClass.getSerializer();
                }
                kryo.getGenerics().pushGenericType(this.f7363n);
                readObject = kryo.readObject(input, readClass.getType(), serializer);
            } else {
                if (serializer == null) {
                    serializer = kryo.getSerializer(m23220b);
                    if (this.f7329c != null && this.f7334h) {
                        this.f7330d = serializer;
                    }
                }
                kryo.getGenerics().pushGenericType(this.f7363n);
                if (this.f7331e) {
                    readObject = kryo.readObjectOrNull(input, m23220b, serializer);
                } else {
                    readObject = kryo.readObject(input, m23220b, serializer);
                }
            }
            kryo.getGenerics().popGenericType();
            set(obj, readObject);
        } catch (KryoException e) {
            e.addTrace(this.f7328b + " (" + this.f7362m.f7323d.getName() + ")");
            throw e;
        } catch (IllegalAccessException e2) {
            throw new KryoException("Error accessing field: " + this.f7328b + " (" + this.f7362m.f7323d.getName() + ")", e2);
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.addTrace(this.f7328b + " (" + this.f7362m.f7323d.getName() + ")");
            throw kryoException;
        }
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
    public void write(Output output, Object obj) {
        Kryo kryo = this.f7362m.f7322c;
        try {
            Object obj2 = get(obj);
            Serializer serializer = this.f7330d;
            Class m23220b = m23220b();
            if (m23220b == null) {
                if (obj2 == null) {
                    kryo.writeClass(output, null);
                    return;
                }
                Registration writeClass = kryo.writeClass(output, obj2.getClass());
                if (serializer == null) {
                    serializer = writeClass.getSerializer();
                }
                kryo.getGenerics().pushGenericType(this.f7363n);
                kryo.writeObject(output, obj2, serializer);
            } else {
                if (serializer == null) {
                    serializer = kryo.getSerializer(m23220b);
                    if (this.f7329c != null && this.f7334h) {
                        this.f7330d = serializer;
                    }
                }
                kryo.getGenerics().pushGenericType(this.f7363n);
                if (this.f7331e) {
                    kryo.writeObjectOrNull(output, obj2, serializer);
                } else if (obj2 != null) {
                    kryo.writeObject(output, obj2, serializer);
                } else {
                    throw new KryoException("Field value cannot be null when canBeNull is false: " + this.f7328b + " (" + obj.getClass().getName() + ")");
                }
            }
            kryo.getGenerics().popGenericType();
        } catch (KryoException e) {
            e.addTrace(this.f7328b + " (" + obj.getClass().getName() + ")");
            throw e;
        } catch (IllegalAccessException e2) {
            throw new KryoException("Error accessing field: " + this.f7328b + " (" + obj.getClass().getName() + ")", e2);
        } catch (StackOverflowError e3) {
            throw new KryoException("A StackOverflow occurred. The most likely cause is that your data has a circular reference resulting in infinite recursion. Try enabling references with Kryo.setReferences(true). If your data structure is really more than " + kryo.getDepth() + " levels deep then try increasing your Java stack size.", e3);
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.addTrace(this.f7328b + " (" + obj.getClass().getName() + ")");
            throw kryoException;
        }
    }

    public ReflectField(Field field, FieldSerializer fieldSerializer, Generics.GenericType genericType) {
        super(field);
        this.f7362m = fieldSerializer;
        this.f7363n = genericType;
    }
}
