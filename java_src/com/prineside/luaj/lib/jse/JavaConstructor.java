package com.prineside.luaj.lib.jse;

import com.prineside.luaj.LuaError;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
import com.prineside.luaj.lib.VarArgFunction;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class JavaConstructor extends JavaMember {

    /* renamed from: A */
    public static final Map f8290A = Collections.synchronizedMap(new HashMap());

    /* renamed from: z */
    public final Constructor f8291z;

    /* loaded from: classes2.dex */
    public static class Overload extends VarArgFunction {

        /* renamed from: x */
        public final JavaConstructor[] f8292x;

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            int i = CoerceLuaToJava.f8275c;
            JavaConstructor javaConstructor = null;
            int i2 = 0;
            while (true) {
                JavaConstructor[] javaConstructorArr = this.f8292x;
                if (i2 >= javaConstructorArr.length) {
                    break;
                }
                int m22419t = javaConstructorArr[i2].m22419t(varargs);
                if (m22419t < i) {
                    javaConstructor = this.f8292x[i2];
                    if (m22419t == 0) {
                        break;
                    }
                    i = m22419t;
                }
                i2++;
            }
            if (javaConstructor == null) {
                LuaValue.error("no coercible public method");
            }
            return javaConstructor.invoke(varargs);
        }

        public Overload(JavaConstructor[] javaConstructorArr) {
            this.f8292x = javaConstructorArr;
        }
    }

    public static LuaValue forConstructors(JavaConstructor[] javaConstructorArr) {
        return new Overload(javaConstructorArr);
    }

    /* renamed from: u */
    public static JavaConstructor m22422u(Constructor constructor) {
        Map map = f8290A;
        JavaConstructor javaConstructor = (JavaConstructor) map.get(constructor);
        if (javaConstructor == null) {
            JavaConstructor javaConstructor2 = new JavaConstructor(constructor);
            map.put(constructor, javaConstructor2);
            return javaConstructor2;
        }
        return javaConstructor;
    }

    public JavaConstructor(Constructor constructor) {
        super(constructor.getParameterTypes(), constructor.getModifiers());
        this.f8291z = constructor;
    }

    @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public Varargs invoke(Varargs varargs) {
        try {
            return CoerceJavaToLua.coerce(this.f8291z.newInstance(m22420s(varargs)));
        } catch (InvocationTargetException e) {
            throw new LuaError(e.getTargetException());
        } catch (Exception e2) {
            return LuaValue.error("coercion error " + e2);
        }
    }
}
