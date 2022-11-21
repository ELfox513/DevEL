package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import com.esotericsoftware.minlog.Log;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* loaded from: classes.dex */
public class VersionFieldSerializer<T> extends FieldSerializer<T> {

    /* renamed from: h */
    public final VersionFieldSerializerConfig f7370h;

    /* renamed from: i */
    public int f7371i;

    /* renamed from: j */
    public int[] f7372j;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Since {
        int value() default 0;
    }

    /* loaded from: classes.dex */
    public static class VersionFieldSerializerConfig extends FieldSerializer.FieldSerializerConfig {

        /* renamed from: t */
        public boolean f7373t = true;

        public boolean getCompatible() {
            return this.f7373t;
        }

        public void setCompatible(boolean z) {
            this.f7373t = z;
            if (Log.TRACE) {
                Log.trace("kryo", "VersionFieldSerializerConfig setCompatible: " + z);
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.FieldSerializerConfig
        public VersionFieldSerializerConfig clone() {
            return (VersionFieldSerializerConfig) super.m27844clone();
        }
    }

    public VersionFieldSerializer(Kryo kryo, Class cls) {
        this(kryo, cls, new VersionFieldSerializerConfig());
    }

    public VersionFieldSerializerConfig getVersionFieldSerializerConfig() {
        return this.f7370h;
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer, com.esotericsoftware.kryo.Serializer
    public T read(Kryo kryo, Input input, Class<? extends T> cls) {
        int readVarInt = input.readVarInt(true);
        if (readVarInt == 0) {
            return null;
        }
        int i = readVarInt - 1;
        if (!this.f7370h.f7373t && i != this.f7371i) {
            throw new KryoException("Version is not compatible: " + i + " != " + this.f7371i);
        }
        int pushTypeVariables = pushTypeVariables();
        T create = create(kryo, input, cls);
        kryo.reference(create);
        FieldSerializer.CachedField[] cachedFieldArr = this.f7325f.f7296b;
        int length = cachedFieldArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (this.f7372j[i2] > i) {
                if (Log.DEBUG) {
                    Log.debug("Skip field: " + cachedFieldArr[i2].f7327a.getName());
                }
            } else {
                if (Log.TRACE) {
                    log("Read", cachedFieldArr[i2], input.position());
                }
                cachedFieldArr[i2].read(input, create);
            }
        }
        popTypeVariables(pushTypeVariables);
        return create;
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer
    public void removeField(String str) {
        super.removeField(str);
        initializeCachedFields();
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer, com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, T t) {
        if (t == null) {
            output.writeByte((byte) 0);
            return;
        }
        int pushTypeVariables = pushTypeVariables();
        FieldSerializer.CachedField[] cachedFieldArr = this.f7325f.f7296b;
        output.writeVarInt(this.f7371i + 1, true);
        int length = cachedFieldArr.length;
        for (int i = 0; i < length; i++) {
            if (Log.TRACE) {
                log("Write", cachedFieldArr[i], output.position());
            }
            cachedFieldArr[i].write(output, t);
        }
        popTypeVariables(pushTypeVariables);
    }

    public VersionFieldSerializer(Kryo kryo, Class cls, VersionFieldSerializerConfig versionFieldSerializerConfig) {
        super(kryo, cls, versionFieldSerializerConfig);
        this.f7370h = versionFieldSerializerConfig;
        setAcceptsNull(true);
        initializeCachedFields();
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer
    public void initializeCachedFields() {
        FieldSerializer.CachedField[] cachedFieldArr = this.f7325f.f7296b;
        this.f7372j = new int[cachedFieldArr.length];
        int length = cachedFieldArr.length;
        for (int i = 0; i < length; i++) {
            Since since = (Since) cachedFieldArr[i].f7327a.getAnnotation(Since.class);
            if (since != null) {
                this.f7372j[i] = since.value();
                this.f7371i = Math.max(this.f7372j[i], this.f7371i);
            } else {
                this.f7372j[i] = 0;
            }
        }
        if (Log.DEBUG) {
            Log.debug("Version for type " + getType().getName() + ": " + this.f7371i);
        }
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer
    public void removeField(FieldSerializer.CachedField cachedField) {
        super.removeField(cachedField);
        initializeCachedFields();
    }
}
