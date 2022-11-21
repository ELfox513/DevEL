package com.esotericsoftware.kryo.util;

import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.SerializerFactory;
import com.esotericsoftware.kryo.serializers.ClosureSerializer;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import com.esotericsoftware.kryo.util.Generics;
import com.esotericsoftware.minlog.Log;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class Util {

    /* renamed from: a */
    public static final Map<Class<?>, Class<?>> f7457a;
    public static final boolean isAndroid = "Dalvik".equals(System.getProperty("java.vm.name"));
    public static final int maxArraySize = 2147483639;
    public static final boolean unsafe;

    /* renamed from: b */
    public static boolean m23155b(Class<?> cls, Class<?> cls2) {
        return m23156a(cls2) == cls;
    }

    public static boolean isEnum(Class cls) {
        return Enum.class.isAssignableFrom(cls) && cls != Enum.class;
    }

    public static boolean isWrapperClass(Class cls) {
        return cls == Integer.class || cls == Float.class || cls == Boolean.class || cls == Byte.class || cls == Long.class || cls == Character.class || cls == Double.class || cls == Short.class;
    }

    public static String pos(int i) {
        if (i == -1) {
            return "";
        }
        return " [" + i + "]";
    }

    public static String simpleName(Type type) {
        return type instanceof Class ? ((Class) type).getSimpleName() : type.toString();
    }

    static {
        boolean z = false;
        if ("false".equals(System.getProperty("kryo.unsafe"))) {
            if (Log.TRACE) {
                Log.trace("kryo", "Unsafe is disabled.");
            }
        } else {
            try {
                if (Class.forName("com.esotericsoftware.kryo.unsafe.UnsafeUtil", true, FieldSerializer.class.getClassLoader()).getField("unsafe").get(null) != null) {
                    z = true;
                }
            } catch (Throwable th) {
                if (Log.TRACE) {
                    Log.trace("kryo", "Unsafe is unavailable.", th);
                }
            }
        }
        unsafe = z;
        HashMap hashMap = new HashMap();
        f7457a = hashMap;
        hashMap.put(Boolean.TYPE, Boolean.class);
        hashMap.put(Byte.TYPE, Byte.class);
        hashMap.put(Character.TYPE, Character.class);
        hashMap.put(Double.TYPE, Double.class);
        hashMap.put(Float.TYPE, Float.class);
        hashMap.put(Integer.TYPE, Integer.class);
        hashMap.put(Long.TYPE, Long.class);
        hashMap.put(Short.TYPE, Short.class);
    }

    public static String canonicalName(Class cls) {
        if (cls == null) {
            return "null";
        }
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return className(cls);
        }
        return canonicalName;
    }

    public static String className(Class cls) {
        if (cls == null) {
            return "null";
        }
        if (cls.isArray()) {
            Class elementClass = getElementClass(cls);
            StringBuilder sb = new StringBuilder(16);
            int dimensionCount = getDimensionCount(cls);
            for (int i = 0; i < dimensionCount; i++) {
                sb.append("[]");
            }
            return className(elementClass) + ((Object) sb);
        } else if (!cls.isPrimitive() && cls != Object.class && cls != Boolean.class && cls != Byte.class && cls != Character.class && cls != Short.class && cls != Integer.class && cls != Long.class && cls != Float.class && cls != Double.class && cls != String.class) {
            return cls.getName();
        } else {
            return cls.getSimpleName();
        }
    }

    public static String classNames(Class[] clsArr) {
        StringBuilder sb = new StringBuilder(32);
        int length = clsArr.length;
        for (int i = 0; i < length; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(className(clsArr[i]));
        }
        return sb.toString();
    }

    public static Class getPrimitiveClass(Class cls) {
        if (cls == Integer.class) {
            return Integer.TYPE;
        }
        if (cls == Float.class) {
            return Float.TYPE;
        }
        if (cls == Boolean.class) {
            return Boolean.TYPE;
        }
        if (cls == Byte.class) {
            return Byte.TYPE;
        }
        if (cls == Long.class) {
            return Long.TYPE;
        }
        if (cls == Character.class) {
            return Character.TYPE;
        }
        if (cls == Double.class) {
            return Double.TYPE;
        }
        if (cls == Short.class) {
            return Short.TYPE;
        }
        if (cls == Void.class) {
            return Void.TYPE;
        }
        return cls;
    }

    public static Class getWrapperClass(Class cls) {
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Float.TYPE) {
            return Float.class;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.class;
        }
        if (cls == Byte.TYPE) {
            return Byte.class;
        }
        if (cls == Long.TYPE) {
            return Long.class;
        }
        if (cls == Character.TYPE) {
            return Character.class;
        }
        if (cls == Double.TYPE) {
            return Double.class;
        }
        if (cls == Short.TYPE) {
            return Short.class;
        }
        return cls;
    }

    public static boolean isAssignableTo(Class<?> cls, Class<?> cls2) {
        if (cls2 == Object.class || cls2.isAssignableFrom(cls)) {
            return true;
        }
        if (cls.isPrimitive()) {
            if (m23155b(cls2, cls) || cls2.isAssignableFrom(m23156a(cls))) {
                return true;
            }
            return false;
        } else if (cls2.isPrimitive()) {
            return m23155b(cls, cls2);
        } else {
            if (cls != ClosureSerializer.Closure.class) {
                return false;
            }
            return cls2.isInterface();
        }
    }

    public static void log(String str, Object obj, int i) {
        if (obj == null) {
            if (Log.TRACE) {
                Log.trace("kryo", str + ": null" + pos(i));
                return;
            }
            return;
        }
        Class<?> cls = obj.getClass();
        if (!cls.isPrimitive() && !isWrapperClass(cls) && cls != String.class) {
            Log.debug("kryo", str + ": " + string(obj) + pos(i));
        } else if (Log.TRACE) {
            Log.trace("kryo", str + ": " + string(obj) + pos(i));
        }
    }

    public static <T extends SerializerFactory> T newFactory(Class<T> cls, Class<? extends Serializer> cls2) {
        try {
            if (cls2 != null) {
                try {
                    return cls.getConstructor(Class.class).newInstance(cls2);
                } catch (NoSuchMethodException unused) {
                }
            }
            return cls.newInstance();
        } catch (Exception e) {
            if (cls2 == null) {
                throw new IllegalArgumentException("Unable to create serializer factory: " + cls.getName(), e);
            }
            throw new IllegalArgumentException("Unable to create serializer factory \"" + cls.getName() + "\" for serializer class: " + className(cls2), e);
        }
    }

    public static String string(Object obj) {
        String simpleName;
        if (obj == null) {
            return "null";
        }
        Class<?> cls = obj.getClass();
        if (cls.isArray()) {
            return className(cls);
        }
        if (Log.TRACE) {
            simpleName = className(cls);
        } else {
            simpleName = cls.getSimpleName();
        }
        try {
            if (cls.getMethod("toString", new Class[0]).getDeclaringClass() == Object.class) {
                return simpleName;
            }
        } catch (Exception unused) {
        }
        try {
            String str = String.valueOf(obj) + " (" + simpleName + ")";
            if (str.length() > 97) {
                return str.substring(0, 97) + "...";
            }
            return str;
        } catch (Throwable th) {
            return simpleName + " (toString exception: " + th + ")";
        }
    }

    /* renamed from: a */
    public static Class<?> m23156a(Class<?> cls) {
        if (cls.isPrimitive()) {
            return f7457a.get(cls);
        }
        throw new IllegalArgumentException("Argument has to be primitive type");
    }

    public static int getDimensionCount(Class cls) {
        int i = 0;
        for (Class<?> componentType = cls.getComponentType(); componentType != null; componentType = componentType.getComponentType()) {
            i++;
        }
        return i;
    }

    public static Class getElementClass(Class cls) {
        while (cls.getComponentType() != null) {
            cls = cls.getComponentType();
        }
        return cls;
    }

    public static boolean isAscii(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) > 127) {
                return false;
            }
        }
        return true;
    }

    public static boolean isClassAvailable(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Exception unused) {
            Log.debug("kryo", "Class not available: " + str);
            return false;
        }
    }

    public static String simpleName(Class cls, Generics.GenericType genericType) {
        StringBuilder sb = new StringBuilder(32);
        sb.append((cls.isArray() ? getElementClass(cls) : cls).getSimpleName());
        if (genericType.f7413b != null) {
            sb.append('<');
            int length = genericType.f7413b.length;
            for (int i = 0; i < length; i++) {
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(genericType.f7413b[i].toString());
            }
            sb.append('>');
        }
        if (cls.isArray()) {
            int dimensionCount = getDimensionCount(cls);
            for (int i2 = 0; i2 < dimensionCount; i2++) {
                sb.append("[]");
            }
        }
        return sb.toString();
    }
}
