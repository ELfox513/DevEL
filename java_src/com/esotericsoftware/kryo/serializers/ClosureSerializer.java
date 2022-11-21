package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.util.Util;
import java.io.Serializable;
import java.lang.invoke.SerializedLambda;
import java.lang.reflect.Method;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class ClosureSerializer extends Serializer {

    /* renamed from: c */
    public static Method f7300c;

    /* loaded from: classes.dex */
    public static class Closure {
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public Object copy(Kryo kryo, Object obj) {
        try {
            return f7300c.invoke(m23248a(obj), new Object[0]);
        } catch (Exception e) {
            throw new KryoException("Error copying closure.", e);
        }
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public Object read(Kryo kryo, Input input, Class cls) {
        int readVarInt = input.readVarInt(true);
        Object[] objArr = new Object[readVarInt];
        for (int i = 0; i < readVarInt; i++) {
            objArr[i] = kryo.readClassAndObject(input);
        }
        try {
            return f7300c.invoke(new SerializedLambda(kryo.readClass(input).getType(), input.readString(), input.readString(), input.readString(), input.readVarInt(true), input.readString(), input.readString(), input.readString(), input.readString(), objArr), new Object[0]);
        } catch (Exception e) {
            throw new KryoException("Error reading closure.", e);
        }
    }

    public ClosureSerializer() {
        if (f7300c == null) {
            try {
                Method declaredMethod = SerializedLambda.class.getDeclaredMethod("readResolve", new Class[0]);
                f7300c = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception e) {
                throw new KryoException("Unable to obtain SerializedLambda#readResolve via reflection.", e);
            }
        }
    }

    /* renamed from: a */
    public final SerializedLambda m23248a(Object obj) {
        Object obj2;
        String className;
        try {
            Method declaredMethod = obj.getClass().getDeclaredMethod("writeReplace", new Class[0]);
            declaredMethod.setAccessible(true);
            try {
                return (SerializedLambda) declaredMethod.invoke(obj, new Object[0]);
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("writeReplace must return a SerializedLambda: ");
                if (obj2 == null) {
                    className = null;
                } else {
                    className = Util.className(obj2.getClass());
                }
                sb.append(className);
                throw new KryoException(sb.toString(), e);
            }
        } catch (Exception e2) {
            if (obj instanceof Serializable) {
                throw new KryoException("Error serializing closure.", e2);
            }
            throw new KryoException("Closure must implement java.io.Serializable.", e2);
        }
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, Object obj) {
        SerializedLambda m23248a = m23248a(obj);
        int capturedArgCount = m23248a.getCapturedArgCount();
        output.writeVarInt(capturedArgCount, true);
        for (int i = 0; i < capturedArgCount; i++) {
            kryo.writeClassAndObject(output, m23248a.getCapturedArg(i));
        }
        try {
            kryo.writeClass(output, Class.forName(m23248a.getCapturingClass().replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH)));
            output.writeString(m23248a.getFunctionalInterfaceClass());
            output.writeString(m23248a.getFunctionalInterfaceMethodName());
            output.writeString(m23248a.getFunctionalInterfaceMethodSignature());
            output.writeVarInt(m23248a.getImplMethodKind(), true);
            output.writeString(m23248a.getImplClass());
            output.writeString(m23248a.getImplMethodName());
            output.writeString(m23248a.getImplMethodSignature());
            output.writeString(m23248a.getInstantiatedMethodType());
        } catch (ClassNotFoundException e) {
            throw new KryoException("Error writing closure.", e);
        }
    }
}
