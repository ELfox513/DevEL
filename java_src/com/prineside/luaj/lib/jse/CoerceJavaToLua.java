package com.prineside.luaj.lib.jse;

import com.prineside.luaj.LuaDouble;
import com.prineside.luaj.LuaInteger;
import com.prineside.luaj.LuaString;
import com.prineside.luaj.LuaValue;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public class CoerceJavaToLua {

    /* renamed from: a */
    public static final Map f8269a;

    /* renamed from: b */
    public static final Coercion f8270b;

    /* renamed from: c */
    public static final Coercion f8271c;

    /* renamed from: d */
    public static final Coercion f8272d;

    /* loaded from: classes2.dex */
    public static final class ArrayCoercion implements Coercion {
        public ArrayCoercion() {
        }

        @Override // com.prineside.luaj.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return new JavaArray(obj);
        }
    }

    /* loaded from: classes2.dex */
    public static final class BoolCoercion implements Coercion {
        public BoolCoercion() {
        }

        @Override // com.prineside.luaj.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            if (((Boolean) obj).booleanValue()) {
                return LuaValue.TRUE;
            }
            return LuaValue.FALSE;
        }
    }

    /* loaded from: classes2.dex */
    public static final class BytesCoercion implements Coercion {
        public BytesCoercion() {
        }

        @Override // com.prineside.luaj.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return LuaValue.valueOf((byte[]) obj);
        }
    }

    /* loaded from: classes2.dex */
    public static final class CharCoercion implements Coercion {
        public CharCoercion() {
        }

        @Override // com.prineside.luaj.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return LuaInteger.valueOf((int) ((Character) obj).charValue());
        }
    }

    /* loaded from: classes2.dex */
    public static final class ClassCoercion implements Coercion {
        public ClassCoercion() {
        }

        @Override // com.prineside.luaj.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return JavaClass.m22426r((Class) obj);
        }
    }

    /* loaded from: classes2.dex */
    public interface Coercion {
        LuaValue coerce(Object obj);
    }

    /* loaded from: classes2.dex */
    public static final class DoubleCoercion implements Coercion {
        public DoubleCoercion() {
        }

        @Override // com.prineside.luaj.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return LuaDouble.valueOf(((Number) obj).doubleValue());
        }
    }

    /* loaded from: classes2.dex */
    public static final class InstanceCoercion implements Coercion {
        public static final WeakHashMap<Object, LuaValue> cache = new WeakHashMap<>();

        @Override // com.prineside.luaj.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return new JavaInstance(obj);
        }
    }

    /* loaded from: classes2.dex */
    public static final class IntCoercion implements Coercion {
        public IntCoercion() {
        }

        @Override // com.prineside.luaj.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return LuaInteger.valueOf(((Number) obj).intValue());
        }
    }

    /* loaded from: classes2.dex */
    public static final class LuaCoercion implements Coercion {
        public LuaCoercion() {
        }

        @Override // com.prineside.luaj.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return (LuaValue) obj;
        }
    }

    /* loaded from: classes2.dex */
    public static final class StringCoercion implements Coercion {
        public StringCoercion() {
        }

        @Override // com.prineside.luaj.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return LuaString.valueOf(obj.toString());
        }
    }

    static {
        Map synchronizedMap = Collections.synchronizedMap(new HashMap());
        f8269a = synchronizedMap;
        BoolCoercion boolCoercion = new BoolCoercion();
        IntCoercion intCoercion = new IntCoercion();
        CharCoercion charCoercion = new CharCoercion();
        DoubleCoercion doubleCoercion = new DoubleCoercion();
        StringCoercion stringCoercion = new StringCoercion();
        BytesCoercion bytesCoercion = new BytesCoercion();
        ClassCoercion classCoercion = new ClassCoercion();
        synchronizedMap.put(Boolean.class, boolCoercion);
        synchronizedMap.put(Byte.class, intCoercion);
        synchronizedMap.put(Character.class, charCoercion);
        synchronizedMap.put(Short.class, intCoercion);
        synchronizedMap.put(Integer.class, intCoercion);
        synchronizedMap.put(Long.class, doubleCoercion);
        synchronizedMap.put(Float.class, doubleCoercion);
        synchronizedMap.put(Double.class, doubleCoercion);
        synchronizedMap.put(String.class, stringCoercion);
        synchronizedMap.put(byte[].class, bytesCoercion);
        synchronizedMap.put(Class.class, classCoercion);
        f8270b = new InstanceCoercion();
        f8271c = new ArrayCoercion();
        f8272d = new LuaCoercion();
    }

    public static LuaValue coerce(Object obj) {
        if (obj == null) {
            return LuaValue.NIL;
        }
        Class<?> cls = obj.getClass();
        Map map = f8269a;
        Coercion coercion = (Coercion) map.get(cls);
        if (coercion == null) {
            if (cls.isArray()) {
                coercion = f8271c;
            } else if (obj instanceof LuaValue) {
                coercion = f8272d;
            } else {
                coercion = f8270b;
            }
            map.put(cls, coercion);
        }
        return coercion.coerce(obj);
    }
}
