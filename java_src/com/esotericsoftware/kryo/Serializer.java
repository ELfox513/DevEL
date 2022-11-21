package com.esotericsoftware.kryo;

import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
/* loaded from: classes.dex */
public abstract class Serializer<T> {

    /* renamed from: a */
    public boolean f7263a;

    /* renamed from: b */
    public boolean f7264b;

    public Serializer() {
    }

    public boolean getAcceptsNull() {
        return this.f7263a;
    }

    public boolean isImmutable() {
        return this.f7264b;
    }

    public abstract T read(Kryo kryo, Input input, Class<? extends T> cls);

    public void setAcceptsNull(boolean z) {
        this.f7263a = z;
    }

    public void setImmutable(boolean z) {
        this.f7264b = z;
    }

    public abstract void write(Kryo kryo, Output output, T t);

    public Serializer(boolean z) {
        this.f7263a = z;
    }

    public T copy(Kryo kryo, T t) {
        if (isImmutable()) {
            return t;
        }
        throw new KryoException("Serializer does not support copy: " + getClass().getName());
    }

    public Serializer(boolean z, boolean z2) {
        this.f7263a = z;
        this.f7264b = z2;
    }
}
