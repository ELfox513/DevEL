package com.prineside.luaj.lib.jse;

import com.prineside.luaj.LuaString;
import com.prineside.luaj.LuaValue;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class CoerceLuaToJava {

    /* renamed from: a */
    public static int f8273a = 16;

    /* renamed from: b */
    public static int f8274b = 256;

    /* renamed from: c */
    public static int f8275c = 65536;

    /* renamed from: d */
    public static final Map f8276d;

    /* loaded from: classes2.dex */
    public static final class BoolCoercion implements Coercion {
        @Override // com.prineside.luaj.lib.jse.CoerceLuaToJava.Coercion
        public Object coerce(LuaValue luaValue) {
            return luaValue.toboolean() ? Boolean.TRUE : Boolean.FALSE;
        }

        @Override // com.prineside.luaj.lib.jse.CoerceLuaToJava.Coercion
        public int score(LuaValue luaValue) {
            return luaValue.type() != 1 ? 1 : 0;
        }

        public String toString() {
            return "BoolCoercion()";
        }
    }

    /* loaded from: classes2.dex */
    public interface Coercion {
        Object coerce(LuaValue luaValue);

        int score(LuaValue luaValue);
    }

    /* loaded from: classes2.dex */
    public static final class NumericCoercion implements Coercion {

        /* renamed from: b */
        public static final String[] f8279b = {"byte", "char", "short", "int", "long", "float", "double"};

        /* renamed from: a */
        public final int f8280a;

        public String toString() {
            return "NumericCoercion(" + f8279b[this.f8280a] + ")";
        }

        @Override // com.prineside.luaj.lib.jse.CoerceLuaToJava.Coercion
        public Object coerce(LuaValue luaValue) {
            switch (this.f8280a) {
                case 0:
                    return Byte.valueOf((byte) luaValue.toint());
                case 1:
                    return Character.valueOf((char) luaValue.toint());
                case 2:
                    return Short.valueOf((short) luaValue.toint());
                case 3:
                    return Integer.valueOf(luaValue.toint());
                case 4:
                    return Long.valueOf((long) luaValue.todouble());
                case 5:
                    return Float.valueOf((float) luaValue.todouble());
                case 6:
                    return Double.valueOf(luaValue.todouble());
                default:
                    return null;
            }
        }

        public NumericCoercion(int i) {
            this.f8280a = i;
        }

        @Override // com.prineside.luaj.lib.jse.CoerceLuaToJava.Coercion
        public int score(LuaValue luaValue) {
            int i = 4;
            int i2 = 0;
            if (luaValue.type() == 4) {
                luaValue = luaValue.tonumber();
                if (luaValue.isnil()) {
                    return CoerceLuaToJava.f8275c;
                }
            } else {
                i = 0;
            }
            if (luaValue.isint()) {
                switch (this.f8280a) {
                    case 0:
                        int i3 = luaValue.toint();
                        if (i3 != ((byte) i3)) {
                            i2 = CoerceLuaToJava.f8274b;
                        }
                        return i + i2;
                    case 1:
                        int i4 = luaValue.toint();
                        if (i4 == ((byte) i4)) {
                            i2 = 1;
                        } else if (i4 != ((char) i4)) {
                            i2 = CoerceLuaToJava.f8274b;
                        }
                        return i + i2;
                    case 2:
                        int i5 = luaValue.toint();
                        if (i5 == ((byte) i5)) {
                            i2 = 1;
                        } else if (i5 != ((short) i5)) {
                            i2 = CoerceLuaToJava.f8274b;
                        }
                        return i + i2;
                    case 3:
                        int i6 = luaValue.toint();
                        if (i6 == ((byte) i6)) {
                            i2 = 2;
                        } else if (i6 == ((char) i6) || i6 == ((short) i6)) {
                            i2 = 1;
                        }
                        return i + i2;
                    case 4:
                        return i + 1;
                    case 5:
                        return i + 1;
                    case 6:
                        return i + 2;
                    default:
                        return CoerceLuaToJava.f8274b;
                }
            } else if (luaValue.isnumber()) {
                switch (this.f8280a) {
                    case 0:
                        return CoerceLuaToJava.f8274b;
                    case 1:
                        return CoerceLuaToJava.f8274b;
                    case 2:
                        return CoerceLuaToJava.f8274b;
                    case 3:
                        return CoerceLuaToJava.f8274b;
                    case 4:
                        double d = luaValue.todouble();
                        if (d != ((long) d)) {
                            i2 = CoerceLuaToJava.f8274b;
                        }
                        return i + i2;
                    case 5:
                        double d2 = luaValue.todouble();
                        if (d2 != ((float) d2)) {
                            i2 = CoerceLuaToJava.f8274b;
                        }
                        return i + i2;
                    case 6:
                        double d3 = luaValue.todouble();
                        return i + ((d3 == ((double) ((long) d3)) || d3 == ((double) ((float) d3))) ? 1 : 1);
                    default:
                        return CoerceLuaToJava.f8274b;
                }
            } else {
                return CoerceLuaToJava.f8275c;
            }
        }
    }

    public static Object coerce(LuaValue luaValue, Class cls) {
        return m22428a(cls).coerce(luaValue);
    }

    /* loaded from: classes2.dex */
    public static final class ArrayCoercion implements Coercion {

        /* renamed from: a */
        public final Class f8277a;

        /* renamed from: b */
        public final Coercion f8278b;

        public String toString() {
            return "ArrayCoercion(" + this.f8277a.getName() + ")";
        }

        public ArrayCoercion(Class cls) {
            this.f8277a = cls;
            this.f8278b = CoerceLuaToJava.m22428a(cls);
        }

        @Override // com.prineside.luaj.lib.jse.CoerceLuaToJava.Coercion
        public Object coerce(LuaValue luaValue) {
            int type = luaValue.type();
            if (type != 5) {
                if (type != 7) {
                    return null;
                }
                return luaValue.touserdata();
            }
            int length = luaValue.length();
            Object newInstance = Array.newInstance(this.f8277a, length);
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                Array.set(newInstance, i, this.f8278b.coerce(luaValue.get(i2)));
                i = i2;
            }
            return newInstance;
        }

        @Override // com.prineside.luaj.lib.jse.CoerceLuaToJava.Coercion
        public int score(LuaValue luaValue) {
            int type = luaValue.type();
            if (type != 0) {
                if (type != 5) {
                    if (type != 7) {
                        return CoerceLuaToJava.f8275c;
                    }
                    return CoerceLuaToJava.m22427b(this.f8277a, luaValue.touserdata().getClass().getComponentType());
                } else if (luaValue.length() == 0) {
                    return 0;
                } else {
                    return this.f8278b.score(luaValue.get(1));
                }
            }
            return CoerceLuaToJava.f8273a;
        }
    }

    /* loaded from: classes2.dex */
    public static final class ObjectCoercion implements Coercion {

        /* renamed from: a */
        public final Class f8281a;

        public String toString() {
            return "ObjectCoercion(" + this.f8281a.getName() + ")";
        }

        public ObjectCoercion(Class cls) {
            this.f8281a = cls;
        }

        @Override // com.prineside.luaj.lib.jse.CoerceLuaToJava.Coercion
        public Object coerce(LuaValue luaValue) {
            double d;
            int type = luaValue.type();
            if (type == 0) {
                return null;
            }
            if (type != 1) {
                if (type != 3) {
                    if (type != 4) {
                        if (type != 7) {
                            return luaValue;
                        }
                        return luaValue.optuserdata(this.f8281a, (Object) null);
                    }
                    return luaValue.tojstring();
                }
                if (luaValue.isint()) {
                    d = luaValue.toint();
                } else {
                    d = luaValue.todouble();
                }
                return Double.valueOf(d);
            } else if (luaValue.toboolean()) {
                return Boolean.TRUE;
            } else {
                return Boolean.FALSE;
            }
        }

        @Override // com.prineside.luaj.lib.jse.CoerceLuaToJava.Coercion
        public int score(LuaValue luaValue) {
            Class cls;
            int type = luaValue.type();
            if (type != 0) {
                if (type != 1) {
                    if (type != 3) {
                        if (type != 4) {
                            if (type != 7) {
                                return CoerceLuaToJava.m22427b(this.f8281a, luaValue.getClass());
                            }
                            return CoerceLuaToJava.m22427b(this.f8281a, luaValue.touserdata().getClass());
                        }
                        return CoerceLuaToJava.m22427b(this.f8281a, String.class);
                    }
                    Class cls2 = this.f8281a;
                    if (luaValue.isint()) {
                        cls = Integer.class;
                    } else {
                        cls = Double.class;
                    }
                    return CoerceLuaToJava.m22427b(cls2, cls);
                }
                return CoerceLuaToJava.m22427b(this.f8281a, Boolean.class);
            }
            return CoerceLuaToJava.f8273a;
        }
    }

    /* loaded from: classes2.dex */
    public static final class StringCoercion implements Coercion {
        public static final int TARGET_TYPE_BYTES = 1;
        public static final int TARGET_TYPE_STRING = 0;

        /* renamed from: a */
        public final int f8282a;

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("StringCoercion(");
            sb.append(this.f8282a == 0 ? "String" : "byte[]");
            sb.append(")");
            return sb.toString();
        }

        public StringCoercion(int i) {
            this.f8282a = i;
        }

        @Override // com.prineside.luaj.lib.jse.CoerceLuaToJava.Coercion
        public Object coerce(LuaValue luaValue) {
            if (luaValue.isnil()) {
                return null;
            }
            if (this.f8282a == 0) {
                return luaValue.tojstring();
            }
            LuaString checkstring = luaValue.checkstring();
            int i = checkstring.m_length;
            byte[] bArr = new byte[i];
            checkstring.copyInto(0, bArr, 0, i);
            return bArr;
        }

        @Override // com.prineside.luaj.lib.jse.CoerceLuaToJava.Coercion
        public int score(LuaValue luaValue) {
            int type = luaValue.type();
            if (type != 0) {
                if (type != 4) {
                    if (this.f8282a == 0) {
                        return CoerceLuaToJava.f8274b;
                    }
                    return CoerceLuaToJava.f8275c;
                } else if (luaValue.checkstring().isValidUtf8()) {
                    if (this.f8282a == 0) {
                        return 0;
                    }
                    return 1;
                } else if (this.f8282a == 1) {
                    return 0;
                } else {
                    return CoerceLuaToJava.f8274b;
                }
            }
            return CoerceLuaToJava.f8273a;
        }
    }

    static {
        Map synchronizedMap = Collections.synchronizedMap(new HashMap());
        f8276d = synchronizedMap;
        BoolCoercion boolCoercion = new BoolCoercion();
        NumericCoercion numericCoercion = new NumericCoercion(0);
        NumericCoercion numericCoercion2 = new NumericCoercion(1);
        NumericCoercion numericCoercion3 = new NumericCoercion(2);
        NumericCoercion numericCoercion4 = new NumericCoercion(3);
        NumericCoercion numericCoercion5 = new NumericCoercion(4);
        NumericCoercion numericCoercion6 = new NumericCoercion(5);
        NumericCoercion numericCoercion7 = new NumericCoercion(6);
        StringCoercion stringCoercion = new StringCoercion(0);
        StringCoercion stringCoercion2 = new StringCoercion(1);
        synchronizedMap.put(Boolean.TYPE, boolCoercion);
        synchronizedMap.put(Boolean.class, boolCoercion);
        synchronizedMap.put(Byte.TYPE, numericCoercion);
        synchronizedMap.put(Byte.class, numericCoercion);
        synchronizedMap.put(Character.TYPE, numericCoercion2);
        synchronizedMap.put(Character.class, numericCoercion2);
        synchronizedMap.put(Short.TYPE, numericCoercion3);
        synchronizedMap.put(Short.class, numericCoercion3);
        synchronizedMap.put(Integer.TYPE, numericCoercion4);
        synchronizedMap.put(Integer.class, numericCoercion4);
        synchronizedMap.put(Long.TYPE, numericCoercion5);
        synchronizedMap.put(Long.class, numericCoercion5);
        synchronizedMap.put(Float.TYPE, numericCoercion6);
        synchronizedMap.put(Float.class, numericCoercion6);
        synchronizedMap.put(Double.TYPE, numericCoercion7);
        synchronizedMap.put(Double.class, numericCoercion7);
        synchronizedMap.put(String.class, stringCoercion);
        synchronizedMap.put(byte[].class, stringCoercion2);
    }

    /* renamed from: a */
    public static Coercion m22428a(Class cls) {
        Coercion objectCoercion;
        Map map = f8276d;
        Coercion coercion = (Coercion) map.get(cls);
        if (coercion != null) {
            return coercion;
        }
        if (cls.isArray()) {
            cls.getComponentType();
            objectCoercion = new ArrayCoercion(cls.getComponentType());
        } else {
            objectCoercion = new ObjectCoercion(cls);
        }
        map.put(cls, objectCoercion);
        return objectCoercion;
    }

    /* renamed from: b */
    public static final int m22427b(Class cls, Class cls2) {
        if (cls2 == null) {
            return f8275c;
        }
        if (cls == cls2) {
            return 0;
        }
        int min = Math.min(f8275c, m22427b(cls, cls2.getSuperclass()) + 1);
        for (Class<?> cls3 : cls2.getInterfaces()) {
            min = Math.min(min, m22427b(cls, cls3) + 1);
        }
        return min;
    }
}
