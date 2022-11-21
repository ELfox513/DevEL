package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Serializer;
/* loaded from: classes.dex */
public abstract class ImmutableSerializer<T> extends Serializer<T> {
    public ImmutableSerializer() {
        setImmutable(true);
    }
}
