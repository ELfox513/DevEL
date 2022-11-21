package com.esotericsoftware.kryo;

import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.serializers.CompatibleFieldSerializer;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import com.esotericsoftware.kryo.serializers.TaggedFieldSerializer;
import com.esotericsoftware.kryo.serializers.VersionFieldSerializer;
import com.esotericsoftware.kryo.util.Util;
/* loaded from: classes.dex */
public interface SerializerFactory<T extends Serializer> {

    /* loaded from: classes.dex */
    public static abstract class BaseSerializerFactory<T extends Serializer> implements SerializerFactory<T> {
        @Override // com.esotericsoftware.kryo.SerializerFactory
        public boolean isSupported(Class cls) {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class CompatibleFieldSerializerFactory extends BaseSerializerFactory<CompatibleFieldSerializer> {

        /* renamed from: a */
        public final CompatibleFieldSerializer.CompatibleFieldSerializerConfig f7265a;

        public CompatibleFieldSerializerFactory() {
            this.f7265a = new CompatibleFieldSerializer.CompatibleFieldSerializerConfig();
        }

        public CompatibleFieldSerializer.CompatibleFieldSerializerConfig getConfig() {
            return this.f7265a;
        }

        @Override // com.esotericsoftware.kryo.SerializerFactory
        public CompatibleFieldSerializer newSerializer(Kryo kryo, Class cls) {
            return new CompatibleFieldSerializer(kryo, cls, this.f7265a.clone());
        }

        public CompatibleFieldSerializerFactory(CompatibleFieldSerializer.CompatibleFieldSerializerConfig compatibleFieldSerializerConfig) {
            this.f7265a = compatibleFieldSerializerConfig;
        }
    }

    /* loaded from: classes.dex */
    public static class FieldSerializerFactory extends BaseSerializerFactory<FieldSerializer> {

        /* renamed from: a */
        public final FieldSerializer.FieldSerializerConfig f7266a;

        public FieldSerializerFactory() {
            this.f7266a = new FieldSerializer.FieldSerializerConfig();
        }

        public FieldSerializer.FieldSerializerConfig getConfig() {
            return this.f7266a;
        }

        @Override // com.esotericsoftware.kryo.SerializerFactory
        public FieldSerializer newSerializer(Kryo kryo, Class cls) {
            return new FieldSerializer(kryo, cls, this.f7266a.m27844clone());
        }

        public FieldSerializerFactory(FieldSerializer.FieldSerializerConfig fieldSerializerConfig) {
            this.f7266a = fieldSerializerConfig;
        }
    }

    /* loaded from: classes.dex */
    public static class ReflectionSerializerFactory<T extends Serializer> extends BaseSerializerFactory<T> {

        /* renamed from: a */
        public final Class<T> f7267a;

        @Override // com.esotericsoftware.kryo.SerializerFactory
        public T newSerializer(Kryo kryo, Class cls) {
            return (T) newSerializer(kryo, this.f7267a, cls);
        }

        public static <T extends Serializer> T newSerializer(Kryo kryo, Class<T> cls, Class cls2) {
            try {
                try {
                    try {
                        try {
                            return cls.getConstructor(Kryo.class, Class.class).newInstance(kryo, cls2);
                        } catch (NoSuchMethodException unused) {
                            return cls.newInstance();
                        }
                    } catch (Exception e) {
                        throw new IllegalArgumentException("Unable to create serializer \"" + cls.getName() + "\" for class: " + Util.className(cls2), e);
                    }
                } catch (NoSuchMethodException unused2) {
                    return cls.getConstructor(Kryo.class).newInstance(kryo);
                }
            } catch (NoSuchMethodException unused3) {
                return cls.getConstructor(Class.class).newInstance(cls2);
            }
        }

        public ReflectionSerializerFactory(Class<T> cls) {
            this.f7267a = cls;
        }
    }

    /* loaded from: classes.dex */
    public static class TaggedFieldSerializerFactory extends BaseSerializerFactory<TaggedFieldSerializer> {

        /* renamed from: a */
        public final TaggedFieldSerializer.TaggedFieldSerializerConfig f7269a;

        public TaggedFieldSerializerFactory() {
            this.f7269a = new TaggedFieldSerializer.TaggedFieldSerializerConfig();
        }

        public TaggedFieldSerializer.TaggedFieldSerializerConfig getConfig() {
            return this.f7269a;
        }

        @Override // com.esotericsoftware.kryo.SerializerFactory
        public TaggedFieldSerializer newSerializer(Kryo kryo, Class cls) {
            return new TaggedFieldSerializer(kryo, cls, this.f7269a.clone());
        }

        public TaggedFieldSerializerFactory(TaggedFieldSerializer.TaggedFieldSerializerConfig taggedFieldSerializerConfig) {
            this.f7269a = taggedFieldSerializerConfig;
        }
    }

    /* loaded from: classes.dex */
    public static class VersionFieldSerializerFactory extends BaseSerializerFactory<VersionFieldSerializer> {

        /* renamed from: a */
        public final VersionFieldSerializer.VersionFieldSerializerConfig f7270a;

        public VersionFieldSerializerFactory() {
            this.f7270a = new VersionFieldSerializer.VersionFieldSerializerConfig();
        }

        public VersionFieldSerializer.VersionFieldSerializerConfig getConfig() {
            return this.f7270a;
        }

        @Override // com.esotericsoftware.kryo.SerializerFactory
        public VersionFieldSerializer newSerializer(Kryo kryo, Class cls) {
            return new VersionFieldSerializer(kryo, cls, this.f7270a.clone());
        }

        public VersionFieldSerializerFactory(VersionFieldSerializer.VersionFieldSerializerConfig versionFieldSerializerConfig) {
            this.f7270a = versionFieldSerializerConfig;
        }
    }

    boolean isSupported(Class cls);

    T newSerializer(Kryo kryo, Class cls);

    /* loaded from: classes.dex */
    public static class SingletonSerializerFactory<T extends Serializer> extends BaseSerializerFactory<T> {

        /* renamed from: a */
        public final T f7268a;

        @Override // com.esotericsoftware.kryo.SerializerFactory
        public T newSerializer(Kryo kryo, Class cls) {
            return this.f7268a;
        }

        public SingletonSerializerFactory(T t) {
            this.f7268a = t;
        }
    }
}
