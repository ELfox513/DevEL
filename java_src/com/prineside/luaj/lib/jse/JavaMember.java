package com.prineside.luaj.lib.jse;

import com.prineside.luaj.Varargs;
import com.prineside.luaj.lib.VarArgFunction;
import com.prineside.luaj.lib.jse.CoerceLuaToJava;
/* loaded from: classes2.dex */
abstract class JavaMember extends VarArgFunction {

    /* renamed from: x */
    public final CoerceLuaToJava.Coercion[] f8294x;

    /* renamed from: y */
    public final CoerceLuaToJava.Coercion f8295y;

    /* renamed from: s */
    public Object[] m22420s(Varargs varargs) {
        Object[] objArr;
        CoerceLuaToJava.Coercion[] coercionArr;
        int i = 0;
        if (this.f8295y == null) {
            int length = this.f8294x.length;
            objArr = new Object[length];
            while (i < length) {
                int i2 = i + 1;
                objArr[i] = this.f8294x[i].coerce(varargs.arg(i2));
                i = i2;
            }
        } else {
            int max = Math.max(this.f8294x.length, varargs.narg());
            objArr = new Object[max];
            while (true) {
                coercionArr = this.f8294x;
                if (i >= coercionArr.length) {
                    break;
                }
                int i3 = i + 1;
                objArr[i] = coercionArr[i].coerce(varargs.arg(i3));
                i = i3;
            }
            int length2 = coercionArr.length;
            while (length2 < max) {
                int i4 = length2 + 1;
                objArr[length2] = this.f8295y.coerce(varargs.arg(i4));
                length2 = i4;
            }
        }
        return objArr;
    }

    public JavaMember(Class[] clsArr, int i) {
        boolean z;
        CoerceLuaToJava.Coercion coercion;
        int i2 = 0;
        if ((i & 128) != 0) {
            z = true;
        } else {
            z = false;
        }
        int length = clsArr.length;
        this.f8294x = new CoerceLuaToJava.Coercion[z ? length - 1 : length];
        while (true) {
            CoerceLuaToJava.Coercion[] coercionArr = this.f8294x;
            if (i2 >= coercionArr.length) {
                break;
            }
            coercionArr[i2] = CoerceLuaToJava.m22428a(clsArr[i2]);
            i2++;
        }
        if (z) {
            coercion = CoerceLuaToJava.m22428a(clsArr[clsArr.length - 1]);
        } else {
            coercion = null;
        }
        this.f8295y = coercion;
    }

    /* renamed from: t */
    public int m22419t(Varargs varargs) {
        int i;
        CoerceLuaToJava.Coercion[] coercionArr;
        int narg = varargs.narg();
        CoerceLuaToJava.Coercion[] coercionArr2 = this.f8294x;
        int i2 = 0;
        if (narg > coercionArr2.length) {
            i = CoerceLuaToJava.f8274b * (narg - coercionArr2.length);
        } else {
            i = 0;
        }
        while (true) {
            coercionArr = this.f8294x;
            if (i2 >= coercionArr.length) {
                break;
            }
            CoerceLuaToJava.Coercion coercion = coercionArr[i2];
            i2++;
            i += coercion.score(varargs.arg(i2));
        }
        if (this.f8295y != null) {
            int length = coercionArr.length;
            while (length < narg) {
                length++;
                i += this.f8295y.score(varargs.arg(length));
            }
        }
        return i;
    }
}
