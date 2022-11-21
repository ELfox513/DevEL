package com.prineside.luaj.lib.jse;

import com.prineside.luaj.LuaValue;
import com.prineside.luaj.lib.MathLib;
import com.prineside.luaj.lib.TwoArgFunction;
import com.prineside.tdi2.utils.REGS;
/* loaded from: classes2.dex */
public final class JseMathLib extends MathLib {

    @REGS
    /* loaded from: classes2.dex */
    public static final class acos extends MathLib.UnaryOp {
        @Override // com.prineside.luaj.lib.MathLib.UnaryOp, com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue) {
            return super.call(luaValue);
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp
        /* renamed from: s */
        public double mo22397s(double d) {
            return StrictMath.acos(d);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class asin extends MathLib.UnaryOp {
        @Override // com.prineside.luaj.lib.MathLib.UnaryOp, com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue) {
            return super.call(luaValue);
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp
        /* renamed from: s */
        public double mo22397s(double d) {
            return StrictMath.asin(d);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class atan2 extends TwoArgFunction {
        @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return LuaValue.valueOf(StrictMath.atan2(luaValue.checkdouble(), luaValue2.optdouble(1.0d)));
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class cosh extends MathLib.UnaryOp {
        @Override // com.prineside.luaj.lib.MathLib.UnaryOp, com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue) {
            return super.call(luaValue);
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp
        /* renamed from: s */
        public double mo22397s(double d) {
            return StrictMath.cosh(d);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class exp extends MathLib.UnaryOp {
        @Override // com.prineside.luaj.lib.MathLib.UnaryOp, com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue) {
            return super.call(luaValue);
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp
        /* renamed from: s */
        public double mo22397s(double d) {
            return StrictMath.exp(d);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class pow extends MathLib.BinaryOp {
        @Override // com.prineside.luaj.lib.MathLib.BinaryOp, com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return super.call(luaValue, luaValue2);
        }

        @Override // com.prineside.luaj.lib.MathLib.BinaryOp
        /* renamed from: s */
        public double mo22398s(double d, double d2) {
            return StrictMath.pow(d, d2);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class sinh extends MathLib.UnaryOp {
        @Override // com.prineside.luaj.lib.MathLib.UnaryOp, com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue) {
            return super.call(luaValue);
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp
        /* renamed from: s */
        public double mo22397s(double d) {
            return StrictMath.sinh(d);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class tanh extends MathLib.UnaryOp {
        @Override // com.prineside.luaj.lib.MathLib.UnaryOp, com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue) {
            return super.call(luaValue);
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp
        /* renamed from: s */
        public double mo22397s(double d) {
            return StrictMath.tanh(d);
        }
    }

    @Override // com.prineside.luaj.lib.MathLib
    public double dpow_lib(double d, double d2) {
        return StrictMath.pow(d, d2);
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class log extends TwoArgFunction {
        @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            double log = StrictMath.log(luaValue.checkdouble());
            double optdouble = luaValue2.optdouble(2.718281828459045d);
            if (optdouble != 2.718281828459045d) {
                log /= StrictMath.log(optdouble);
            }
            return LuaValue.valueOf(log);
        }
    }

    @Override // com.prineside.luaj.lib.MathLib, com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        super.call(luaValue, luaValue2);
        LuaValue luaValue3 = luaValue2.get("math");
        luaValue3.set("acos", new acos());
        luaValue3.set("asin", new asin());
        atan2 atan2Var = new atan2();
        luaValue3.set("atan", atan2Var);
        luaValue3.set("atan2", atan2Var);
        luaValue3.set("cosh", new cosh());
        luaValue3.set("exp", new exp());
        luaValue3.set("log", new log());
        luaValue3.set("pow", new pow());
        luaValue3.set("sinh", new sinh());
        luaValue3.set("tanh", new tanh());
        return luaValue3;
    }
}
