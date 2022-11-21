package com.prineside.tdi2.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
/* loaded from: classes2.dex */
public class ProxySerializer extends Serializer<Object> {
    @Override // com.esotericsoftware.kryo.Serializer
    public Object read(Kryo kryo, Input input, Class<? extends Object> cls) {
        Class[] clsArr = (Class[]) kryo.readObject(input, Class[].class);
        return Proxy.newProxyInstance(kryo.getClassLoader(), clsArr, (InvocationHandler) kryo.readClassAndObject(input));
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, Object obj) {
        kryo.writeClassAndObject(output, Proxy.getInvocationHandler(obj));
        kryo.writeObject(output, obj.getClass().getInterfaces());
    }
}
