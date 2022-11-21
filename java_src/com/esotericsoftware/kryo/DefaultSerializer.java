package com.esotericsoftware.kryo;

import com.esotericsoftware.kryo.SerializerFactory;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface DefaultSerializer {
    Class<? extends SerializerFactory> serializerFactory() default SerializerFactory.ReflectionSerializerFactory.class;

    Class<? extends Serializer> value() default Serializer.class;
}
