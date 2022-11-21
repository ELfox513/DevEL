package com.prineside.luaj.lib.jse;

import com.prineside.luaj.LuaError;
import com.prineside.luaj.LuaFunction;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class JavaMethod extends JavaMember {

    /* renamed from: A */
    public static final Map f8296A = Collections.synchronizedMap(new HashMap());

    /* renamed from: z */
    public final Method f8297z;

    /* loaded from: classes2.dex */
    public static class Overload extends LuaFunction {

        /* renamed from: u */
        public final JavaMethod[] f8298u;

        @Override // com.prineside.luaj.LuaValue
        public LuaValue call() {
            return LuaValue.error("method cannot be called without instance");
        }

        @Override // com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            return m22415q(varargs.checkuserdata(1), varargs.subargs(2));
        }

        @Override // com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return m22415q(luaValue.checkuserdata(), LuaValue.NONE);
        }

        /* renamed from: q */
        public final LuaValue m22415q(Object obj, Varargs varargs) {
            int i = CoerceLuaToJava.f8275c;
            JavaMethod javaMethod = null;
            int i2 = 0;
            while (true) {
                JavaMethod[] javaMethodArr = this.f8298u;
                if (i2 >= javaMethodArr.length) {
                    break;
                }
                int m22419t = javaMethodArr[i2].m22419t(varargs);
                if (m22419t < i) {
                    javaMethod = this.f8298u[i2];
                    if (m22419t == 0) {
                        break;
                    }
                    i = m22419t;
                }
                i2++;
            }
            if (javaMethod == null) {
                LuaValue.error("no coercible public method");
            }
            return javaMethod.m22416w(obj, varargs);
        }

        public Overload(JavaMethod[] javaMethodArr) {
            this.f8298u = javaMethodArr;
        }

        @Override // com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return m22415q(luaValue.checkuserdata(), luaValue2);
        }

        @Override // com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
            return m22415q(luaValue.checkuserdata(), LuaValue.varargsOf(luaValue2, luaValue3));
        }
    }

    /* renamed from: v */
    public static LuaFunction m22417v(JavaMethod[] javaMethodArr) {
        return new Overload(javaMethodArr);
    }

    @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call() {
        return LuaValue.error("method cannot be called without instance");
    }

    @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public Varargs invoke(Varargs varargs) {
        return m22416w(varargs.checkuserdata(1), varargs.subargs(2));
    }

    /* renamed from: u */
    public static JavaMethod m22418u(Method method) {
        Map map = f8296A;
        JavaMethod javaMethod = (JavaMethod) map.get(method);
        if (javaMethod == null) {
            JavaMethod javaMethod2 = new JavaMethod(method);
            map.put(method, javaMethod2);
            return javaMethod2;
        }
        return javaMethod;
    }

    @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue) {
        return m22416w(luaValue.checkuserdata(), LuaValue.NONE);
    }

    public JavaMethod(Method method) {
        super(method.getParameterTypes(), method.getModifiers());
        this.f8297z = method;
        try {
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
        } catch (SecurityException unused) {
        }
    }

    @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return m22416w(luaValue.checkuserdata(), luaValue2);
    }

    /* renamed from: w */
    public LuaValue m22416w(Object obj, Varargs varargs) {
        try {
            return CoerceJavaToLua.coerce(this.f8297z.invoke(obj, m22420s(varargs)));
        } catch (InvocationTargetException e) {
            throw new LuaError(e.getTargetException());
        } catch (Exception e2) {
            return LuaValue.error("coercion error " + e2);
        }
    }

    @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return m22416w(luaValue.checkuserdata(), LuaValue.varargsOf(luaValue2, luaValue3));
    }
}
