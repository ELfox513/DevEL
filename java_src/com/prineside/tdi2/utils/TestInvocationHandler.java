package com.prineside.tdi2.utils;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import java.io.Serializable;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
@REGS
/* loaded from: classes2.dex */
public class TestInvocationHandler implements InvocationHandler, Serializable, KryoSerializable {
    public Object[] arr = new Object[1];

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        if ("toString".equals(method.getName())) {
            return "TestInvocationHandler";
        }
        return null;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.arr = (Object[]) kryo.readObject(input, Object[].class);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObject(output, this.arr);
    }
}
