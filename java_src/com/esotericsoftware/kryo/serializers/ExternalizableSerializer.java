package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.KryoObjectInput;
import com.esotericsoftware.kryo.p035io.KryoObjectOutput;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.util.ObjectMap;
import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class ExternalizableSerializer extends Serializer {

    /* renamed from: c */
    public ObjectMap<Class, JavaSerializer> f7319c;

    /* renamed from: d */
    public KryoObjectInput f7320d = null;

    /* renamed from: e */
    public KryoObjectOutput f7321e = null;

    /* renamed from: e */
    public static boolean m23237e(Class cls, String str) {
        Method method;
        while (true) {
            if (cls != null) {
                try {
                    method = cls.getDeclaredMethod(str, new Class[0]);
                    break;
                } catch (NoSuchMethodException unused) {
                    cls = cls.getSuperclass();
                }
            } else {
                method = null;
                break;
            }
        }
        return method != null && method.getReturnType() == Object.class;
    }

    /* renamed from: f */
    public final boolean m23236f(Class cls) {
        return m23237e(cls, "writeReplace") || m23237e(cls, "readResolve");
    }

    /* renamed from: a */
    public final JavaSerializer m23241a(Class cls) {
        ObjectMap<Class, JavaSerializer> objectMap = this.f7319c;
        if (objectMap == null) {
            this.f7319c = new ObjectMap<>();
            return null;
        }
        return objectMap.get(cls);
    }

    /* renamed from: c */
    public final ObjectInput m23239c(Kryo kryo, Input input) {
        KryoObjectInput kryoObjectInput = this.f7320d;
        if (kryoObjectInput == null) {
            this.f7320d = new KryoObjectInput(kryo, input);
        } else {
            kryoObjectInput.setInput(input);
        }
        return this.f7320d;
    }

    /* renamed from: d */
    public final ObjectOutput m23238d(Kryo kryo, Output output) {
        KryoObjectOutput kryoObjectOutput = this.f7321e;
        if (kryoObjectOutput == null) {
            this.f7321e = new KryoObjectOutput(kryo, output);
        } else {
            kryoObjectOutput.setOutput(output);
        }
        return this.f7321e;
    }

    /* renamed from: h */
    public final void m23234h(Kryo kryo, Output output, Object obj) {
        try {
            ((Externalizable) obj).writeExternal(m23238d(kryo, output));
        } catch (Exception e) {
            throw new KryoException(e);
        }
    }

    /* renamed from: b */
    public final JavaSerializer m23240b(Class cls) {
        JavaSerializer m23241a = m23241a(cls);
        if (m23241a == null && m23236f(cls)) {
            return new JavaSerializer();
        }
        return m23241a;
    }

    /* renamed from: g */
    public final Object m23235g(Kryo kryo, Input input, Class cls) {
        try {
            Externalizable externalizable = (Externalizable) kryo.newInstance(cls);
            externalizable.readExternal(m23239c(kryo, input));
            return externalizable;
        } catch (Exception e) {
            throw new KryoException(e);
        }
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public Object read(Kryo kryo, Input input, Class cls) {
        JavaSerializer m23240b = m23240b(cls);
        if (m23240b == null) {
            return m23235g(kryo, input, cls);
        }
        return m23240b.read(kryo, input, cls);
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, Object obj) {
        JavaSerializer m23240b = m23240b(obj.getClass());
        if (m23240b == null) {
            m23234h(kryo, output, obj);
        } else {
            m23240b.write(kryo, output, obj);
        }
    }
}
