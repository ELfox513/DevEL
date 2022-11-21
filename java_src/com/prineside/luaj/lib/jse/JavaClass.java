package com.prineside.luaj.lib.jse;

import com.prineside.luaj.LuaString;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.lib.jse.CoerceJavaToLua;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@REGS
/* loaded from: classes2.dex */
public final class JavaClass extends JavaInstance implements CoerceJavaToLua.Coercion {
    @NAGS

    /* renamed from: w */
    public Map f8287w;
    @NAGS

    /* renamed from: x */
    public Map f8288x;
    @NAGS

    /* renamed from: y */
    public Map f8289y;

    /* renamed from: z */
    public static final Map f8286z = Collections.synchronizedMap(new HashMap());

    /* renamed from: A */
    public static final LuaValue f8285A = LuaValue.valueOf("new");

    public JavaClass() {
    }

    @Override // com.prineside.luaj.lib.jse.CoerceJavaToLua.Coercion
    public LuaValue coerce(Object obj) {
        return this;
    }

    public LuaValue getConstructor() {
        return m22423u(f8285A);
    }

    public JavaClass(Class cls) {
        super(cls);
        this.f8293u = this;
    }

    /* renamed from: r */
    public static JavaClass m22426r(Class cls) {
        Map map = f8286z;
        JavaClass javaClass = (JavaClass) map.get(cls);
        if (javaClass == null) {
            JavaClass javaClass2 = new JavaClass(cls);
            map.put(cls, javaClass2);
            return javaClass2;
        }
        return javaClass;
    }

    /* renamed from: s */
    public Field m22425s(LuaValue luaValue) {
        Field[] fields;
        if (this.f8287w == null) {
            HashMap hashMap = new HashMap();
            for (Field field : ((Class) this.m_instance).getFields()) {
                if (Modifier.isPublic(field.getModifiers())) {
                    hashMap.put(LuaValue.valueOf(field.getName()), field);
                    try {
                        if (!field.isAccessible()) {
                            field.setAccessible(true);
                        }
                    } catch (SecurityException unused) {
                    }
                }
            }
            this.f8287w = hashMap;
        }
        return (Field) this.f8287w.get(luaValue);
    }

    /* renamed from: t */
    public Class m22424t(LuaValue luaValue) {
        Class<?>[] classes;
        if (this.f8289y == null) {
            HashMap hashMap = new HashMap();
            for (Class<?> cls : ((Class) this.m_instance).getClasses()) {
                String name = cls.getName();
                hashMap.put(LuaValue.valueOf(name.substring(Math.max(name.lastIndexOf(36), name.lastIndexOf(46)) + 1)), cls);
            }
            this.f8289y = hashMap;
        }
        return (Class) this.f8289y.get(luaValue);
    }

    /* renamed from: u */
    public LuaValue m22423u(LuaValue luaValue) {
        Method[] methods;
        Object m22417v;
        if (this.f8288x == null) {
            HashMap hashMap = new HashMap();
            for (Method method : ((Class) this.m_instance).getMethods()) {
                if (Modifier.isPublic(method.getModifiers())) {
                    String name = method.getName();
                    List list = (List) hashMap.get(name);
                    if (list == null) {
                        list = new ArrayList();
                        hashMap.put(name, list);
                    }
                    list.add(JavaMethod.m22418u(method));
                }
            }
            HashMap hashMap2 = new HashMap();
            Constructor<?>[] constructors = ((Class) this.m_instance).getConstructors();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < constructors.length; i++) {
                if (Modifier.isPublic(constructors[i].getModifiers())) {
                    arrayList.add(JavaConstructor.m22422u(constructors[i]));
                }
            }
            int size = arrayList.size();
            if (size != 0) {
                if (size != 1) {
                    hashMap2.put(f8285A, JavaConstructor.forConstructors((JavaConstructor[]) arrayList.toArray(new JavaConstructor[arrayList.size()])));
                } else {
                    hashMap2.put(f8285A, arrayList.get(0));
                }
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                List list2 = (List) entry.getValue();
                LuaString valueOf = LuaValue.valueOf((String) entry.getKey());
                if (list2.size() == 1) {
                    m22417v = list2.get(0);
                } else {
                    m22417v = JavaMethod.m22417v((JavaMethod[]) list2.toArray(new JavaMethod[list2.size()]));
                }
                hashMap2.put(valueOf, m22417v);
            }
            this.f8288x = hashMap2;
        }
        return (LuaValue) this.f8288x.get(luaValue);
    }
}
