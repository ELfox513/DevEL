package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.Registration;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.InputChunked;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.p035io.OutputChunked;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import com.esotericsoftware.kryo.util.IntMap;
import com.esotericsoftware.kryo.util.Util;
import com.esotericsoftware.minlog.Log;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class TaggedFieldSerializer<T> extends FieldSerializer<T> {

    /* renamed from: h */
    public FieldSerializer.CachedField[] f7364h;

    /* renamed from: i */
    public IntMap<FieldSerializer.CachedField> f7365i;

    /* renamed from: j */
    public final TaggedFieldSerializerConfig f7366j;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Tag {
        int value();
    }

    /* loaded from: classes.dex */
    public static class TaggedFieldSerializerConfig extends FieldSerializer.FieldSerializerConfig {

        /* renamed from: t */
        public boolean f7367t;

        /* renamed from: u */
        public boolean f7368u;

        /* renamed from: v */
        public int f7369v = 1024;

        public int getChunkSize() {
            return this.f7369v;
        }

        public boolean getChunkedEncoding() {
            return this.f7368u;
        }

        public boolean getReadUnknownTagData() {
            return this.f7367t;
        }

        public void setReadUnknownTagData(boolean z) {
            this.f7367t = z;
        }

        public void setChunkSize(int i) {
            this.f7369v = i;
            if (Log.TRACE) {
                Log.trace("kryo", "TaggedFieldSerializerConfig setChunkSize: " + i);
            }
        }

        public void setChunkedEncoding(boolean z) {
            this.f7368u = z;
            if (Log.TRACE) {
                Log.trace("kryo", "TaggedFieldSerializerConfig setChunked: " + z);
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.FieldSerializerConfig
        public TaggedFieldSerializerConfig clone() {
            return (TaggedFieldSerializerConfig) super.m27844clone();
        }
    }

    public TaggedFieldSerializer(Kryo kryo, Class cls) {
        this(kryo, cls, new TaggedFieldSerializerConfig());
    }

    public TaggedFieldSerializerConfig getTaggedFieldSerializerConfig() {
        return this.f7366j;
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer
    public void removeField(String str) {
        super.removeField(str);
        initializeCachedFields();
    }

    public void writeHeader(Kryo kryo, Output output, T t) {
    }

    public TaggedFieldSerializer(Kryo kryo, Class cls, TaggedFieldSerializerConfig taggedFieldSerializerConfig) {
        super(kryo, cls, taggedFieldSerializerConfig);
        this.f7366j = taggedFieldSerializerConfig;
        setAcceptsNull(true);
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer
    public void initializeCachedFields() {
        FieldSerializer.CachedField[] cachedFieldArr = this.f7325f.f7296b;
        int length = cachedFieldArr.length;
        for (int i = 0; i < length; i++) {
            if (cachedFieldArr[i].f7327a.getAnnotation(Tag.class) == null) {
                if (Log.TRACE) {
                    Log.trace("kryo", "Ignoring field without tag: " + cachedFieldArr[i]);
                }
                super.removeField(cachedFieldArr[i]);
            }
        }
        FieldSerializer.CachedField[] cachedFieldArr2 = this.f7325f.f7296b;
        ArrayList arrayList = new ArrayList(cachedFieldArr2.length);
        this.f7365i = new IntMap<>((int) (cachedFieldArr2.length / 0.8f));
        for (FieldSerializer.CachedField cachedField : cachedFieldArr2) {
            Field field = cachedField.f7327a;
            int value = ((Tag) field.getAnnotation(Tag.class)).value();
            if (!this.f7365i.containsKey(value)) {
                this.f7365i.put(value, cachedField);
                if (field.getAnnotation(Deprecated.class) == null) {
                    arrayList.add(cachedField);
                }
                cachedField.f7338l = value;
            } else {
                throw new KryoException(String.format("Duplicate tag %d on fields: %s and %s", Integer.valueOf(value), field, arrayList.get(value)));
            }
        }
        this.f7364h = (FieldSerializer.CachedField[]) arrayList.toArray(new FieldSerializer.CachedField[arrayList.size()]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer, com.esotericsoftware.kryo.Serializer
    public T read(Kryo kryo, Input input, Class<? extends T> cls) {
        InputChunked inputChunked;
        Input input2;
        T t;
        boolean z;
        int i;
        Object obj;
        Object obj2;
        Input input3 = input;
        boolean z2 = true;
        int readVarInt = input3.readVarInt(true);
        if (readVarInt == 0) {
            return null;
        }
        int i2 = readVarInt - 1;
        int pushTypeVariables = pushTypeVariables();
        T create = create(kryo, input, cls);
        kryo.reference(create);
        TaggedFieldSerializerConfig taggedFieldSerializerConfig = this.f7366j;
        boolean z3 = taggedFieldSerializerConfig.f7368u;
        boolean z4 = taggedFieldSerializerConfig.f7367t;
        if (z3) {
            input2 = new InputChunked(input3, this.f7366j.f7369v);
            inputChunked = input2;
        } else {
            inputChunked = 0;
            input2 = input3;
        }
        IntMap<FieldSerializer.CachedField> intMap = this.f7365i;
        int i3 = 0;
        while (i3 < i2) {
            int i4 = i2;
            int readVarInt2 = input3.readVarInt(z2);
            FieldSerializer.CachedField cachedField = intMap.get(readVarInt2);
            IntMap<FieldSerializer.CachedField> intMap2 = intMap;
            int i5 = pushTypeVariables;
            if (z4) {
                try {
                    Registration readClass = kryo.readClass(input2);
                    if (readClass == null) {
                        if (z3) {
                            inputChunked.nextChunk();
                        }
                        obj2 = create;
                        z = z4;
                        i = i3;
                    } else {
                        z = z4;
                        Class type = readClass.getType();
                        if (cachedField == null) {
                            i = i3;
                            if (Log.TRACE) {
                                StringBuilder sb = new StringBuilder();
                                obj = create;
                                sb.append("Read unknown tag ");
                                sb.append(readVarInt2);
                                sb.append(" data, type: ");
                                sb.append(Util.className(type));
                                Log.trace("kryo", sb.toString());
                            } else {
                                obj = create;
                            }
                            try {
                                kryo.readObject(input2, type);
                            } catch (KryoException e) {
                                String str = "Unable to read unknown tag " + readVarInt2 + " data, type: " + Util.className(type) + " (" + getType().getName() + "#" + cachedField + ")";
                                if (z3) {
                                    if (Log.DEBUG) {
                                        Log.debug("kryo", str, e);
                                    }
                                } else {
                                    throw new KryoException(str, e);
                                }
                            }
                            if (z3) {
                                inputChunked.nextChunk();
                            }
                            obj2 = obj;
                        } else {
                            t = create;
                            i = i3;
                            cachedField.setCanBeNull(false);
                            cachedField.setValueClass(type);
                            cachedField.m23233a(false);
                        }
                    }
                } catch (KryoException e2) {
                    t = create;
                    z = z4;
                    i = i3;
                    String str2 = "Unable to read unknown tag " + readVarInt2 + " data (unknown type). (" + getType().getName() + "#" + cachedField + ")";
                    if (z3) {
                        if (Log.DEBUG) {
                            Log.debug("kryo", str2, e2);
                        }
                        inputChunked.nextChunk();
                    } else {
                        throw new KryoException(str2, e2);
                    }
                }
                i3 = i + 1;
                create = obj2;
                i2 = i4;
                intMap = intMap2;
                pushTypeVariables = i5;
                z4 = z;
                z2 = true;
                input3 = input;
            } else {
                t = create;
                z = z4;
                i = i3;
                if (cachedField == null) {
                    if (z3) {
                        if (Log.TRACE) {
                            Log.trace("kryo", "Skip unknown field tag: " + readVarInt2);
                        }
                        inputChunked.nextChunk();
                        obj2 = t;
                        i3 = i + 1;
                        create = obj2;
                        i2 = i4;
                        intMap = intMap2;
                        pushTypeVariables = i5;
                        z4 = z;
                        z2 = true;
                        input3 = input;
                    } else {
                        throw new KryoException("Unknown field tag: " + readVarInt2 + " (" + getType().getName() + ")");
                    }
                }
            }
            if (Log.TRACE) {
                log("Read", cachedField, input.position());
            }
            obj2 = t;
            cachedField.read(input2, obj2);
            if (z3) {
                inputChunked.nextChunk();
            }
            i3 = i + 1;
            create = obj2;
            i2 = i4;
            intMap = intMap2;
            pushTypeVariables = i5;
            z4 = z;
            z2 = true;
            input3 = input;
        }
        T t2 = create;
        popTypeVariables(pushTypeVariables);
        return t2;
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer, com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, T t) {
        OutputChunked outputChunked;
        OutputChunked outputChunked2;
        Kryo kryo2;
        Class<?> cls;
        if (t == null) {
            output.writeByte((byte) 0);
            return;
        }
        int pushTypeVariables = pushTypeVariables();
        FieldSerializer.CachedField[] cachedFieldArr = this.f7364h;
        output.writeVarInt(cachedFieldArr.length + 1, true);
        writeHeader(kryo, output, t);
        TaggedFieldSerializerConfig taggedFieldSerializerConfig = this.f7366j;
        boolean z = taggedFieldSerializerConfig.f7368u;
        boolean z2 = taggedFieldSerializerConfig.f7367t;
        if (z) {
            outputChunked2 = new OutputChunked(output, this.f7366j.f7369v);
            outputChunked = outputChunked2;
        } else {
            outputChunked = output;
            outputChunked2 = null;
        }
        for (FieldSerializer.CachedField cachedField : cachedFieldArr) {
            if (Log.TRACE) {
                log("Write", cachedField, output.position());
            }
            output.writeVarInt(cachedField.f7338l, true);
            if (z2) {
                try {
                    Object obj = cachedField.f7327a.get(t);
                    if (obj != null) {
                        cls = obj.getClass();
                    } else {
                        cls = null;
                    }
                    kryo2 = kryo;
                } catch (IllegalAccessException unused) {
                    kryo2 = kryo;
                    cls = null;
                }
                kryo2.writeClass(outputChunked, cls);
                if (cls == null) {
                    if (z) {
                        outputChunked2.endChunk();
                    }
                } else {
                    cachedField.setCanBeNull(false);
                    cachedField.setValueClass(cls);
                    cachedField.m23233a(false);
                }
            }
            cachedField.write(outputChunked, t);
            if (z) {
                outputChunked2.endChunk();
            }
        }
        popTypeVariables(pushTypeVariables);
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer
    public void removeField(FieldSerializer.CachedField cachedField) {
        super.removeField(cachedField);
        initializeCachedFields();
    }
}
