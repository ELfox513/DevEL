package com.prineside.tdi2.utils;

import com.badlogic.gdx.utils.Pool;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
@REGS
/* loaded from: classes2.dex */
public class ObjectPair implements Pool.Poolable, KryoSerializable {
    public Object first;
    public Object second;

    public ObjectPair() {
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.first = null;
        this.second = null;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeClassAndObject(output, this.first);
        kryo.writeClassAndObject(output, this.second);
    }

    public ObjectPair(Object obj, Object obj2) {
        this.first = obj;
        this.second = obj2;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.first = kryo.readClassAndObject(input);
        this.second = kryo.readClassAndObject(input);
    }
}
