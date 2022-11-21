package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.serializers.RecordSerializer;
import com.esotericsoftware.minlog.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.stream.Stream;
/* loaded from: classes.dex */
public class RecordSerializer<T> extends ImmutableSerializer<T> {

    /* renamed from: d */
    public static final Method f7354d;

    /* renamed from: e */
    public static final Method f7355e;

    /* renamed from: f */
    public static final Method f7356f;

    /* renamed from: g */
    public static final Method f7357g;

    /* renamed from: c */
    public boolean f7358c = false;

    static {
        Method method;
        Method method2;
        Method method3;
        Method method4 = null;
        try {
            Class<?> cls = Class.forName("java.lang.reflect.RecordComponent");
            Method declaredMethod = Class.class.getDeclaredMethod("isRecord", new Class[0]);
            method2 = Class.class.getMethod("getRecordComponents", new Class[0]);
            method3 = cls.getMethod("getName", new Class[0]);
            method = cls.getMethod("getType", new Class[0]);
            method4 = declaredMethod;
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            method = null;
            method2 = null;
            method3 = null;
        }
        f7354d = method4;
        f7355e = method2;
        f7356f = method3;
        f7357g = method;
    }

    /* renamed from: e */
    public static /* synthetic */ Class[] m23225e(int i) {
        return new Class[i];
    }

    public void setFixedFieldTypes(boolean z) {
        this.f7358c = z;
    }

    /* loaded from: classes.dex */
    public static final class RecordComponent {

        /* renamed from: a */
        public final String f7359a;

        /* renamed from: b */
        public final Class<?> f7360b;

        /* renamed from: c */
        public final int f7361c;

        /* renamed from: a */
        public int m23223a() {
            return this.f7361c;
        }

        /* renamed from: b */
        public String m23222b() {
            return this.f7359a;
        }

        /* renamed from: c */
        public Class<?> m23221c() {
            return this.f7360b;
        }

        public RecordComponent(String str, Class<?> cls, int i) {
            this.f7359a = str;
            this.f7360b = cls;
            this.f7361c = i;
        }
    }

    /* renamed from: f */
    public static <T> RecordComponent[] m23224f(Class<T> cls, Comparator<RecordComponent> comparator) {
        try {
            Object[] objArr = (Object[]) f7355e.invoke(cls, new Object[0]);
            RecordComponent[] recordComponentArr = new RecordComponent[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                Object obj = objArr[i];
                recordComponentArr[i] = new RecordComponent((String) f7356f.invoke(obj, new Object[0]), (Class) f7357g.invoke(obj, new Object[0]), i);
            }
            if (comparator != null) {
                Arrays.sort(recordComponentArr, comparator);
            }
            return recordComponentArr;
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.addTrace("Could not retrieve record components (" + cls.getName() + ")");
            throw kryoException;
        }
    }

    /* renamed from: d */
    public final boolean m23226d(Class<?> cls) {
        return ((Boolean) f7354d.invoke(cls, new Object[0])).booleanValue();
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public T read(Kryo kryo, Input input, Class<? extends T> cls) {
        Comparator comparing;
        Comparator comparing2;
        if (m23226d(cls)) {
            comparing = Comparator.comparing(new C1381q());
            RecordComponent[] m23224f = m23224f(cls, comparing);
            Object[] objArr = new Object[m23224f.length];
            for (RecordComponent recordComponent : m23224f) {
                String m23222b = recordComponent.m23222b();
                Class m23221c = recordComponent.m23221c();
                try {
                    if (Log.TRACE) {
                        Log.trace("kryo", "Read property: " + m23222b + " (" + cls.getName() + ")");
                    }
                    if (m23221c.isPrimitive()) {
                        objArr[recordComponent.m23223a()] = kryo.readObject(input, m23221c);
                    } else {
                        if (!this.f7358c && !kryo.isFinal(m23221c)) {
                            objArr[recordComponent.m23223a()] = kryo.readClassAndObject(input);
                        }
                        objArr[recordComponent.m23223a()] = kryo.readObjectOrNull(input, m23221c);
                    }
                } catch (KryoException e) {
                    e.addTrace(m23222b + " (" + cls.getName() + ")");
                    throw e;
                } catch (Throwable th) {
                    KryoException kryoException = new KryoException(th);
                    kryoException.addTrace(m23222b + " (" + cls.getName() + ")");
                    throw kryoException;
                }
            }
            comparing2 = Comparator.comparing(new Function() { // from class: com.esotericsoftware.kryo.serializers.r
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Integer.valueOf(((RecordSerializer.RecordComponent) obj).m23223a());
                }
            });
            Arrays.sort(m23224f, comparing2);
            return (T) m23227c(cls, m23224f, objArr);
        }
        throw new KryoException("Not a record (" + cls + ")");
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, T t) {
        Comparator comparing;
        RecordComponent[] m23224f;
        Class<?> cls = t.getClass();
        if (m23226d(cls)) {
            comparing = Comparator.comparing(new C1381q());
            for (RecordComponent recordComponent : m23224f(cls, comparing)) {
                Class<?> m23221c = recordComponent.m23221c();
                String m23222b = recordComponent.m23222b();
                try {
                    if (Log.TRACE) {
                        Log.trace("kryo", "Write property: " + m23222b + " (" + m23221c.getName() + ")");
                    }
                    if (m23221c.isPrimitive()) {
                        kryo.writeObject(output, m23228b(t, recordComponent));
                    } else {
                        if (!this.f7358c && !kryo.isFinal(m23221c)) {
                            kryo.writeClassAndObject(output, m23228b(t, recordComponent));
                        }
                        kryo.writeObjectOrNull(output, m23228b(t, recordComponent), m23221c);
                    }
                } catch (KryoException e) {
                    e.addTrace(m23222b + " (" + m23221c.getName() + ")");
                    throw e;
                } catch (Throwable th) {
                    KryoException kryoException = new KryoException(th);
                    kryoException.addTrace(m23222b + " (" + m23221c.getName() + ")");
                    throw kryoException;
                }
            }
            return;
        }
        throw new KryoException(t + " is not a record");
    }

    /* renamed from: b */
    public static Object m23228b(Object obj, RecordComponent recordComponent) {
        try {
            Method declaredMethod = obj.getClass().getDeclaredMethod(recordComponent.m23222b(), new Class[0]);
            if (!declaredMethod.canAccess(obj)) {
                declaredMethod.setAccessible(true);
            }
            return declaredMethod.invoke(obj, new Object[0]);
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.addTrace("Could not retrieve record components (" + obj.getClass().getName() + ")");
            throw kryoException;
        }
    }

    /* renamed from: c */
    public static <T> T m23227c(Class<T> cls, RecordComponent[] recordComponentArr, Object[] objArr) {
        Stream stream;
        Class<?>[] clsArr;
        Constructor<T> declaredConstructor;
        try {
            stream = Arrays.stream(recordComponentArr);
            try {
                declaredConstructor = cls.getConstructor((Class[]) stream.map(new Function() { // from class: com.esotericsoftware.kryo.serializers.s
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((RecordSerializer.RecordComponent) obj).m23221c();
                    }
                }).toArray(new IntFunction() { // from class: com.esotericsoftware.kryo.serializers.t
                    @Override // java.util.function.IntFunction
                    public final Object apply(int i) {
                        Class[] m23225e;
                        m23225e = RecordSerializer.m23225e(i);
                        return m23225e;
                    }
                }));
            } catch (NoSuchMethodException unused) {
                declaredConstructor = cls.getDeclaredConstructor(clsArr);
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor.newInstance(objArr);
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.addTrace("Could not construct type (" + cls.getName() + ")");
            throw kryoException;
        }
    }
}
