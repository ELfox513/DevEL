package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.minlog.Log;
import com.esotericsoftware.reflectasm.MethodAccess;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes.dex */
public class BeanSerializer<T> extends Serializer<T> {

    /* renamed from: e */
    public static final Object[] f7279e = new Object[0];

    /* renamed from: c */
    public CachedProperty[] f7280c;

    /* renamed from: d */
    public Object f7281d;

    /* loaded from: classes.dex */
    public class CachedProperty<X> {

        /* renamed from: a */
        public String f7283a;

        /* renamed from: b */
        public Method f7284b;

        /* renamed from: c */
        public Method f7285c;

        /* renamed from: d */
        public Class f7286d;

        /* renamed from: e */
        public Serializer f7287e;

        /* renamed from: f */
        public int f7288f;

        /* renamed from: g */
        public int f7289g;

        public CachedProperty() {
        }

        public String toString() {
            return this.f7283a;
        }

        /* renamed from: a */
        public Object m23257a(Object obj) {
            Object obj2 = BeanSerializer.this.f7281d;
            if (obj2 != null) {
                return ((MethodAccess) obj2).invoke(obj, this.f7288f, new Object[0]);
            }
            return this.f7284b.invoke(obj, BeanSerializer.f7279e);
        }

        /* renamed from: b */
        public void m23256b(Object obj, Object obj2) {
            Object obj3 = BeanSerializer.this.f7281d;
            if (obj3 != null) {
                ((MethodAccess) obj3).invoke(obj, this.f7289g, obj2);
            } else {
                this.f7285c.invoke(obj, obj2);
            }
        }
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public T copy(Kryo kryo, T t) {
        T t2 = (T) kryo.newInstance(t.getClass());
        int length = this.f7280c.length;
        for (int i = 0; i < length; i++) {
            CachedProperty cachedProperty = this.f7280c[i];
            try {
                cachedProperty.m23256b(t2, cachedProperty.m23257a(t));
            } catch (KryoException e) {
                e.addTrace(cachedProperty + " (" + t2.getClass().getName() + ")");
                throw e;
            } catch (Exception e2) {
                throw new KryoException("Error copying bean property: " + cachedProperty + " (" + t2.getClass().getName() + ")", e2);
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(cachedProperty + " (" + t2.getClass().getName() + ")");
                throw kryoException;
            }
        }
        return t2;
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public T read(Kryo kryo, Input input, Class<? extends T> cls) {
        Object readClassAndObject;
        T t = (T) kryo.newInstance(cls);
        kryo.reference(t);
        int length = this.f7280c.length;
        for (int i = 0; i < length; i++) {
            CachedProperty cachedProperty = this.f7280c[i];
            try {
                if (Log.TRACE) {
                    Log.trace("kryo", "Read property: " + cachedProperty + " (" + t.getClass() + ")");
                }
                Serializer serializer = cachedProperty.f7287e;
                if (serializer != null) {
                    readClassAndObject = kryo.readObjectOrNull(input, cachedProperty.f7286d, serializer);
                } else {
                    readClassAndObject = kryo.readClassAndObject(input);
                }
                cachedProperty.m23256b(t, readClassAndObject);
            } catch (KryoException e) {
                e.addTrace(cachedProperty + " (" + t.getClass().getName() + ")");
                throw e;
            } catch (IllegalAccessException e2) {
                throw new KryoException("Error accessing setter method: " + cachedProperty + " (" + t.getClass().getName() + ")", e2);
            } catch (InvocationTargetException e3) {
                throw new KryoException("Error invoking setter method: " + cachedProperty + " (" + t.getClass().getName() + ")", e3);
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(cachedProperty + " (" + t.getClass().getName() + ")");
                throw kryoException;
            }
        }
        return t;
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, T t) {
        Class<?> cls = t.getClass();
        int length = this.f7280c.length;
        for (int i = 0; i < length; i++) {
            CachedProperty cachedProperty = this.f7280c[i];
            try {
                if (Log.TRACE) {
                    Log.trace("kryo", "Write property: " + cachedProperty + " (" + cls.getName() + ")");
                }
                Object m23257a = cachedProperty.m23257a(t);
                Serializer serializer = cachedProperty.f7287e;
                if (serializer != null) {
                    kryo.writeObjectOrNull(output, m23257a, serializer);
                } else {
                    kryo.writeClassAndObject(output, m23257a);
                }
            } catch (KryoException e) {
                e.addTrace(cachedProperty + " (" + cls.getName() + ")");
                throw e;
            } catch (IllegalAccessException e2) {
                throw new KryoException("Error accessing getter method: " + cachedProperty + " (" + cls.getName() + ")", e2);
            } catch (InvocationTargetException e3) {
                throw new KryoException("Error invoking getter method: " + cachedProperty + " (" + cls.getName() + ")", e3);
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.addTrace(cachedProperty + " (" + cls.getName() + ")");
                throw kryoException;
            }
        }
    }

    public BeanSerializer(Kryo kryo, Class cls) {
        try {
            PropertyDescriptor[] propertyDescriptors = Introspector.getBeanInfo(cls).getPropertyDescriptors();
            Arrays.sort(propertyDescriptors, new Comparator<PropertyDescriptor>() { // from class: com.esotericsoftware.kryo.serializers.BeanSerializer.1
                @Override // java.util.Comparator
                public int compare(PropertyDescriptor propertyDescriptor, PropertyDescriptor propertyDescriptor2) {
                    return propertyDescriptor.getName().compareTo(propertyDescriptor2.getName());
                }
            });
            ArrayList arrayList = new ArrayList(propertyDescriptors.length);
            for (PropertyDescriptor propertyDescriptor : propertyDescriptors) {
                String name = propertyDescriptor.getName();
                if (!name.equals("class")) {
                    Method readMethod = propertyDescriptor.getReadMethod();
                    Method writeMethod = propertyDescriptor.getWriteMethod();
                    if (readMethod != null && writeMethod != null) {
                        Class<?> returnType = readMethod.getReturnType();
                        Serializer serializer = kryo.isFinal(returnType) ? kryo.getRegistration(returnType).getSerializer() : null;
                        CachedProperty cachedProperty = new CachedProperty();
                        cachedProperty.f7283a = name;
                        cachedProperty.f7284b = readMethod;
                        cachedProperty.f7285c = writeMethod;
                        cachedProperty.f7287e = serializer;
                        cachedProperty.f7286d = writeMethod.getParameterTypes()[0];
                        arrayList.add(cachedProperty);
                    }
                }
            }
            this.f7280c = (CachedProperty[]) arrayList.toArray(new CachedProperty[arrayList.size()]);
            try {
                this.f7281d = MethodAccess.get(cls);
                int length = this.f7280c.length;
                for (int i = 0; i < length; i++) {
                    CachedProperty cachedProperty2 = this.f7280c[i];
                    cachedProperty2.f7288f = ((MethodAccess) this.f7281d).getIndex(cachedProperty2.f7284b.getName(), cachedProperty2.f7284b.getParameterTypes());
                    cachedProperty2.f7289g = ((MethodAccess) this.f7281d).getIndex(cachedProperty2.f7285c.getName(), cachedProperty2.f7285c.getParameterTypes());
                }
            } catch (Throwable unused) {
            }
        } catch (IntrospectionException e) {
            throw new KryoException("Error getting bean info.", e);
        }
    }
}
