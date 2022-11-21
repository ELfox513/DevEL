package com.prineside.luaj.lib;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.RandomXS128;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.LuaDouble;
import com.prineside.luaj.LuaNumber;
import com.prineside.luaj.LuaTable;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
/* loaded from: classes2.dex */
public class MathLib extends TwoArgFunction {
    public static MathLib MATHLIB;

    /* loaded from: classes2.dex */
    public static abstract class BinaryOp extends TwoArgFunction {
        @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return LuaValue.valueOf(mo22398s(luaValue.checkdouble(), luaValue2.checkdouble()));
        }

        /* renamed from: s */
        public abstract double mo22398s(double d, double d2);
    }

    /* loaded from: classes2.dex */
    public static abstract class UnaryOp extends OneArgFunction {
        @Override // com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(mo22397s(luaValue.checkdouble()));
        }

        /* renamed from: s */
        public abstract double mo22397s(double d);
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class abs extends UnaryOp {
        @Override // com.prineside.luaj.lib.MathLib.UnaryOp, com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue) {
            return super.call(luaValue);
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp
        /* renamed from: s */
        public double mo22397s(double d) {
            return StrictMath.abs(d);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class ceil extends UnaryOp {
        @Override // com.prineside.luaj.lib.MathLib.UnaryOp, com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue) {
            return super.call(luaValue);
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp
        /* renamed from: s */
        public double mo22397s(double d) {
            return StrictMath.ceil(d);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class cos extends UnaryOp {
        @Override // com.prineside.luaj.lib.MathLib.UnaryOp, com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue) {
            return super.call(luaValue);
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp
        /* renamed from: s */
        public double mo22397s(double d) {
            return MathUtils.cos((float) d);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class deg extends UnaryOp {
        @Override // com.prineside.luaj.lib.MathLib.UnaryOp, com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue) {
            return super.call(luaValue);
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp
        /* renamed from: s */
        public double mo22397s(double d) {
            return StrictMath.toDegrees(d);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class exp extends UnaryOp {

        /* renamed from: x */
        public MathLib f8220x;

        public exp() {
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp, com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue) {
            return super.call(luaValue);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8220x = (MathLib) kryo.readClassAndObject(input);
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp
        /* renamed from: s */
        public double mo22397s(double d) {
            return this.f8220x.dpow_lib(2.718281828459045d, d);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeClassAndObject(output, this.f8220x);
        }

        public exp(MathLib mathLib) {
            this.f8220x = mathLib;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class floor extends UnaryOp {
        @Override // com.prineside.luaj.lib.MathLib.UnaryOp, com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue) {
            return super.call(luaValue);
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp
        /* renamed from: s */
        public double mo22397s(double d) {
            return StrictMath.floor(d);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class frexp extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            double d;
            double checkdouble = varargs.checkdouble(1);
            if (checkdouble == 0.0d) {
                LuaNumber luaNumber = LuaValue.ZERO;
                return LuaValue.varargsOf(luaNumber, luaNumber);
            }
            long doubleToLongBits = Double.doubleToLongBits(checkdouble);
            double d2 = (4503599627370495L & doubleToLongBits) + 4503599627370496L;
            if (doubleToLongBits >= 0) {
                d = 1.1102230246251565E-16d;
            } else {
                d = -1.1102230246251565E-16d;
            }
            Double.isNaN(d2);
            return LuaValue.varargsOf(LuaValue.valueOf(d2 * d), LuaValue.valueOf((((int) (doubleToLongBits >> 52)) & 2047) - 1022));
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class ldexp extends BinaryOp {
        @Override // com.prineside.luaj.lib.MathLib.BinaryOp, com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return super.call(luaValue, luaValue2);
        }

        @Override // com.prineside.luaj.lib.MathLib.BinaryOp
        /* renamed from: s */
        public double mo22398s(double d, double d2) {
            return d * Double.longBitsToDouble((((long) d2) + 1023) << 52);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class max extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaValue checkvalue = varargs.checkvalue(1);
            int narg = varargs.narg();
            for (int i = 2; i <= narg; i++) {
                LuaValue checkvalue2 = varargs.checkvalue(i);
                if (checkvalue.lt_b(checkvalue2)) {
                    checkvalue = checkvalue2;
                }
            }
            return checkvalue;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class min extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaValue checkvalue = varargs.checkvalue(1);
            int narg = varargs.narg();
            for (int i = 2; i <= narg; i++) {
                LuaValue checkvalue2 = varargs.checkvalue(i);
                if (checkvalue2.lt_b(checkvalue)) {
                    checkvalue = checkvalue2;
                }
            }
            return checkvalue;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class pow extends BinaryOp {
        @Override // com.prineside.luaj.lib.MathLib.BinaryOp, com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return super.call(luaValue, luaValue2);
        }

        @Override // com.prineside.luaj.lib.MathLib.BinaryOp
        /* renamed from: s */
        public double mo22398s(double d, double d2) {
            return MathLib.m22462s(d, d2);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class rad extends UnaryOp {
        @Override // com.prineside.luaj.lib.MathLib.UnaryOp, com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue) {
            return super.call(luaValue);
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp
        /* renamed from: s */
        public double mo22397s(double d) {
            return StrictMath.toRadians(d);
        }
    }

    @REGS
    /* renamed from: com.prineside.luaj.lib.MathLib$random */
    /* loaded from: classes2.dex */
    public static class C1451random extends LibFunction {
        @NAGS

        /* renamed from: x */
        public RandomXS128 f8221x = new RandomXS128(8615253);

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call() {
            return LuaValue.valueOf(this.f8221x.nextDouble());
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8221x = (RandomXS128) kryo.readObject(input, RandomXS128.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8221x);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            int checkint = luaValue.checkint();
            if (checkint < 1) {
                LuaValue.argerror(1, "interval is empty");
            }
            return LuaValue.valueOf(this.f8221x.nextInt(checkint) + 1);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            int checkint = luaValue.checkint();
            int checkint2 = luaValue2.checkint();
            if (checkint2 < checkint) {
                LuaValue.argerror(2, "interval is empty");
            }
            return LuaValue.valueOf(checkint + this.f8221x.nextInt((checkint2 + 1) - checkint));
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class randomseed extends OneArgFunction {

        /* renamed from: x */
        public C1451random f8222x;

        public randomseed() {
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8222x = (C1451random) kryo.readObject(input, C1451random.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8222x);
        }

        public randomseed(C1451random c1451random) {
            this.f8222x = c1451random;
        }

        @Override // com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            long checklong = luaValue.checklong();
            this.f8222x.f8221x = new RandomXS128(checklong);
            return LuaValue.NONE;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class sin extends UnaryOp {
        @Override // com.prineside.luaj.lib.MathLib.UnaryOp, com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue) {
            return super.call(luaValue);
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp
        /* renamed from: s */
        public double mo22397s(double d) {
            return MathUtils.sin((float) d);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class sqrt extends UnaryOp {
        @Override // com.prineside.luaj.lib.MathLib.UnaryOp, com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue) {
            return super.call(luaValue);
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp
        /* renamed from: s */
        public double mo22397s(double d) {
            return StrictMath.sqrt(d);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class tan extends UnaryOp {
        @Override // com.prineside.luaj.lib.MathLib.UnaryOp, com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call(LuaValue luaValue) {
            return super.call(luaValue);
        }

        @Override // com.prineside.luaj.lib.MathLib.UnaryOp
        /* renamed from: s */
        public double mo22397s(double d) {
            return StrictMath.tan(d);
        }
    }

    public double dpow_lib(double d, double d2) {
        return m22462s(d, d2);
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class fmod extends TwoArgFunction {
        @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            if (luaValue.islong() && luaValue2.islong()) {
                return LuaValue.valueOf(luaValue.tolong() % luaValue2.tolong());
            }
            return LuaValue.valueOf(luaValue.checkdouble() % luaValue2.checkdouble());
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class modf extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            double ceil;
            LuaValue arg1 = varargs.arg1();
            double d = 0.0d;
            if (arg1.islong()) {
                return LuaValue.varargsOf(arg1, LuaValue.valueOf(0.0d));
            }
            double checkdouble = arg1.checkdouble();
            if (checkdouble > 0.0d) {
                ceil = Math.floor(checkdouble);
            } else {
                ceil = Math.ceil(checkdouble);
            }
            if (checkdouble != ceil) {
                d = checkdouble - ceil;
            }
            return LuaValue.varargsOf(LuaValue.valueOf(ceil), LuaValue.valueOf(d));
        }
    }

    public static LuaValue dpow(double d, double d2) {
        double m22462s;
        MathLib mathLib = MATHLIB;
        if (mathLib != null) {
            m22462s = mathLib.dpow_lib(d, d2);
        } else {
            m22462s = m22462s(d, d2);
        }
        return LuaDouble.valueOf(m22462s);
    }

    public static double dpow_d(double d, double d2) {
        MathLib mathLib = MATHLIB;
        if (mathLib != null) {
            return mathLib.dpow_lib(d, d2);
        }
        return m22462s(d, d2);
    }

    /* renamed from: s */
    public static double m22462s(double d, double d2) {
        double d3 = 1.0d;
        if (d2 < 0.0d) {
            return 1.0d / m22462s(d, -d2);
        }
        int i = (int) d2;
        double d4 = d;
        while (i > 0) {
            if ((i & 1) != 0) {
                d3 *= d4;
            }
            i >>= 1;
            d4 *= d4;
        }
        double d5 = i;
        Double.isNaN(d5);
        double d6 = d2 - d5;
        if (d6 > 0.0d) {
            for (int i2 = (int) (d6 * 65536.0d); (65535 & i2) != 0; i2 <<= 1) {
                d = Math.sqrt(d);
                if ((32768 & i2) != 0) {
                    d3 *= d;
                }
            }
        }
        return d3;
    }

    @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue luaTable = new LuaTable(0, 30);
        luaTable.set("abs", new abs());
        luaTable.set("ceil", new ceil());
        luaTable.set("cos", new cos());
        luaTable.set("deg", new deg());
        luaTable.set("exp", new exp(this));
        luaTable.set("floor", new floor());
        luaTable.set("fmod", new fmod());
        luaTable.set("frexp", new frexp());
        luaTable.set("huge", LuaDouble.POSINF);
        luaTable.set("ldexp", new ldexp());
        luaTable.set("max", new max());
        luaTable.set("min", new min());
        luaTable.set("modf", new modf());
        luaTable.set("pi", 3.141592653589793d);
        luaTable.set("pow", new pow());
        C1451random c1451random = new C1451random();
        luaTable.set("random", c1451random);
        luaTable.set("randomseed", new randomseed(c1451random));
        luaTable.set("rad", new rad());
        luaTable.set("sin", new sin());
        luaTable.set("sqrt", new sqrt());
        luaTable.set("tan", new tan());
        luaValue2.set("math", luaTable);
        if (!luaValue2.get("package").isnil()) {
            luaValue2.get("package").get("loaded").set("math", luaTable);
        }
        return luaTable;
    }

    public MathLib() {
        MATHLIB = this;
    }
}
