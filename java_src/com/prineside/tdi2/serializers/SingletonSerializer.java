package com.prineside.tdi2.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
/* loaded from: classes2.dex */
public abstract class SingletonSerializer<T> extends Serializer<T> {
    public abstract T read();

    @Override // com.esotericsoftware.kryo.Serializer
    public T read(Kryo kryo, Input input, Class<? extends T> cls) {
        return read();
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, T t) {
    }

    public SingletonSerializer() {
        setImmutable(true);
    }
}
