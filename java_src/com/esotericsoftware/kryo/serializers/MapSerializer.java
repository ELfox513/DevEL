package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.SerializerFactory;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.util.Generics;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class MapSerializer<T extends Map> extends Serializer<T> {

    /* renamed from: c */
    public Class f7348c;

    /* renamed from: d */
    public Class f7349d;

    /* renamed from: e */
    public Serializer f7350e;

    /* renamed from: f */
    public Serializer f7351f;

    /* renamed from: g */
    public boolean f7352g = true;

    /* renamed from: h */
    public boolean f7353h = true;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface BindMap {
        Class keyClass() default Object.class;

        Class<? extends Serializer> keySerializer() default Serializer.class;

        Class<? extends SerializerFactory> keySerializerFactory() default SerializerFactory.class;

        boolean keysCanBeNull() default true;

        Class valueClass() default Object.class;

        Class<? extends Serializer> valueSerializer() default Serializer.class;

        Class<? extends SerializerFactory> valueSerializerFactory() default SerializerFactory.class;

        boolean valuesCanBeNull() default true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.esotericsoftware.kryo.Serializer
    public /* bridge */ /* synthetic */ Object copy(Kryo kryo, Object obj) {
        return copy(kryo, (Kryo) ((Map) obj));
    }

    public T createCopy(Kryo kryo, T t) {
        return (T) kryo.newInstance(t.getClass());
    }

    public Class getKeyClass() {
        return this.f7348c;
    }

    public Serializer getKeySerializer() {
        return this.f7350e;
    }

    public Class getValueClass() {
        return this.f7349d;
    }

    public Serializer getValueSerializer() {
        return this.f7351f;
    }

    public void setKeyClass(Class cls) {
        this.f7348c = cls;
    }

    public void setKeySerializer(Serializer serializer) {
        this.f7350e = serializer;
    }

    public void setKeysCanBeNull(boolean z) {
        this.f7352g = z;
    }

    public void setValueClass(Class cls) {
        this.f7349d = cls;
    }

    public void setValueSerializer(Serializer serializer) {
        this.f7351f = serializer;
    }

    public void setValuesCanBeNull(boolean z) {
        this.f7353h = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.esotericsoftware.kryo.Serializer
    public /* bridge */ /* synthetic */ void write(Kryo kryo, Output output, Object obj) {
        write(kryo, output, (Output) ((Map) obj));
    }

    public void writeHeader(Kryo kryo, Output output, T t) {
    }

    public T copy(Kryo kryo, T t) {
        T createCopy = createCopy(kryo, t);
        for (Map.Entry entry : t.entrySet()) {
            createCopy.put(kryo.copy(entry.getKey()), kryo.copy(entry.getValue()));
        }
        return createCopy;
    }

    public T create(Kryo kryo, Input input, Class<? extends T> cls, int i) {
        if (cls == HashMap.class) {
            if (i < 3) {
                i++;
            } else if (i < 1073741824) {
                i = (int) ((i / 0.75f) + 1.0f);
            }
            return new HashMap(i);
        }
        return (T) kryo.newInstance(cls);
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public T read(Kryo kryo, Input input, Class<? extends T> cls) {
        Object readClassAndObject;
        Object readClassAndObject2;
        Class resolve;
        Class resolve2;
        int readVarInt = input.readVarInt(true);
        if (readVarInt == 0) {
            return null;
        }
        int i = readVarInt - 1;
        T create = create(kryo, input, cls, i);
        kryo.reference(create);
        if (i == 0) {
            return create;
        }
        Class cls2 = this.f7348c;
        Class cls3 = this.f7349d;
        Serializer serializer = this.f7350e;
        Serializer serializer2 = this.f7351f;
        Generics.GenericType[] nextGenericTypes = kryo.getGenerics().nextGenericTypes();
        if (nextGenericTypes != null) {
            if (serializer == null && (resolve2 = nextGenericTypes[0].resolve(kryo.getGenerics())) != null && kryo.isFinal(resolve2)) {
                serializer = kryo.getSerializer(resolve2);
                cls2 = resolve2;
            }
            if (serializer2 == null && (resolve = nextGenericTypes[1].resolve(kryo.getGenerics())) != null && kryo.isFinal(resolve)) {
                serializer2 = kryo.getSerializer(resolve);
                cls3 = resolve;
            }
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (nextGenericTypes != null) {
                kryo.getGenerics().pushGenericType(nextGenericTypes[0]);
            }
            if (serializer != null) {
                if (this.f7352g) {
                    readClassAndObject = kryo.readObjectOrNull(input, cls2, serializer);
                } else {
                    readClassAndObject = kryo.readObject(input, cls2, serializer);
                }
            } else {
                readClassAndObject = kryo.readClassAndObject(input);
            }
            if (nextGenericTypes != null) {
                kryo.getGenerics().popGenericType();
            }
            if (serializer2 != null) {
                if (this.f7353h) {
                    readClassAndObject2 = kryo.readObjectOrNull(input, cls3, serializer2);
                } else {
                    readClassAndObject2 = kryo.readObject(input, cls3, serializer2);
                }
            } else {
                readClassAndObject2 = kryo.readClassAndObject(input);
            }
            create.put(readClassAndObject, readClassAndObject2);
        }
        kryo.getGenerics().popGenericType();
        return create;
    }

    public void setKeyClass(Class cls, Serializer serializer) {
        this.f7348c = cls;
        this.f7350e = serializer;
    }

    public void setValueClass(Class cls, Serializer serializer) {
        this.f7349d = cls;
        this.f7351f = serializer;
    }

    public void write(Kryo kryo, Output output, T t) {
        Class resolve;
        Class resolve2;
        if (t == null) {
            output.writeByte(0);
            return;
        }
        int size = t.size();
        if (size == 0) {
            output.writeByte(1);
            writeHeader(kryo, output, t);
            return;
        }
        output.writeVarInt(size + 1, true);
        writeHeader(kryo, output, t);
        Serializer serializer = this.f7350e;
        Serializer serializer2 = this.f7351f;
        Generics.GenericType[] nextGenericTypes = kryo.getGenerics().nextGenericTypes();
        if (nextGenericTypes != null) {
            if (serializer == null && (resolve2 = nextGenericTypes[0].resolve(kryo.getGenerics())) != null && kryo.isFinal(resolve2)) {
                serializer = kryo.getSerializer(resolve2);
            }
            if (serializer2 == null && (resolve = nextGenericTypes[1].resolve(kryo.getGenerics())) != null && kryo.isFinal(resolve)) {
                serializer2 = kryo.getSerializer(resolve);
            }
        }
        for (Map.Entry entry : t.entrySet()) {
            if (nextGenericTypes != null) {
                kryo.getGenerics().pushGenericType(nextGenericTypes[0]);
            }
            if (serializer != null) {
                if (this.f7352g) {
                    kryo.writeObjectOrNull(output, entry.getKey(), serializer);
                } else {
                    kryo.writeObject(output, entry.getKey(), serializer);
                }
            } else {
                kryo.writeClassAndObject(output, entry.getKey());
            }
            if (nextGenericTypes != null) {
                kryo.getGenerics().popGenericType();
            }
            if (serializer2 != null) {
                if (this.f7353h) {
                    kryo.writeObjectOrNull(output, entry.getValue(), serializer2);
                } else {
                    kryo.writeObject(output, entry.getValue(), serializer2);
                }
            } else {
                kryo.writeClassAndObject(output, entry.getValue());
            }
        }
        kryo.getGenerics().popGenericType();
    }

    public MapSerializer() {
        setAcceptsNull(true);
    }
}
