package com.prineside.luaj;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.lib.MathLib;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class LuaDouble extends LuaNumber implements KryoSerializable {
    public static final String JSTR_NAN = "nan";
    public static final String JSTR_NEGINF = "-inf";
    public static final String JSTR_POSINF = "inf";

    /* renamed from: u */
    public double f7967u;
    public static final LuaDouble NAN = new LuaDouble(Double.NaN);
    public static final LuaDouble POSINF = new LuaDouble(Double.POSITIVE_INFINITY);
    public static final LuaDouble NEGINF = new LuaDouble(Double.NEGATIVE_INFINITY);

    public LuaDouble() {
    }

    public static LuaValue ddiv(double d, double d2) {
        return d2 != 0.0d ? valueOf(d / d2) : d > 0.0d ? POSINF : d == 0.0d ? NAN : NEGINF;
    }

    public static double ddiv_d(double d, double d2) {
        if (d2 != 0.0d) {
            return d / d2;
        }
        if (d > 0.0d) {
            return Double.POSITIVE_INFINITY;
        }
        return d == 0.0d ? Double.NaN : Double.NEGATIVE_INFINITY;
    }

    public static double dmod_d(double d, double d2) {
        if (d2 == 0.0d || d == Double.POSITIVE_INFINITY || d == Double.NEGATIVE_INFINITY) {
            return Double.NaN;
        }
        if (d2 == Double.POSITIVE_INFINITY) {
            if (d < 0.0d) {
                return Double.POSITIVE_INFINITY;
            }
            return d;
        } else if (d2 == Double.NEGATIVE_INFINITY) {
            if (d > 0.0d) {
                return Double.NEGATIVE_INFINITY;
            }
            return d;
        } else {
            return d - (d2 * Math.floor(d / d2));
        }
    }

    public static LuaNumber valueOf(double d) {
        int i = (int) d;
        return ((double) i) == d ? LuaInteger.valueOf(i) : new LuaDouble(d);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue add(LuaValue luaValue) {
        return luaValue.add(this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public double checkdouble() {
        return this.f7967u;
    }

    @Override // com.prineside.luaj.LuaValue
    public int checkint() {
        return (int) this.f7967u;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaInteger checkinteger() {
        return LuaInteger.valueOf((int) this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public String checkjstring() {
        return tojstring();
    }

    @Override // com.prineside.luaj.LuaValue
    public long checklong() {
        return (long) this.f7967u;
    }

    @Override // com.prineside.luaj.LuaNumber, com.prineside.luaj.LuaValue
    public LuaNumber checknumber() {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaString checkstring() {
        return LuaString.valueOf(tojstring());
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue div(LuaValue luaValue) {
        return luaValue.divInto(this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue divInto(double d) {
        return ddiv(d, this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: eq */
    public LuaValue mo22783eq(LuaValue luaValue) {
        return luaValue.raweq(this.f7967u) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean eq_b(LuaValue luaValue) {
        return luaValue.raweq(this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean equals(Object obj) {
        return (obj instanceof LuaDouble) && ((LuaDouble) obj).f7967u == this.f7967u;
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: gt */
    public LuaValue mo22778gt(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.lt_b(this.f7967u) ? LuaValue.TRUE : LuaValue.FALSE : super.mo22778gt(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gt_b(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.lt_b(this.f7967u) : super.gt_b(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue gteq(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.lteq_b(this.f7967u) ? LuaValue.TRUE : LuaValue.FALSE : super.gteq(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gteq_b(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.lteq_b(this.f7967u) : super.gteq_b(luaValue);
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f7967u + 1.0d);
        return ((int) (doubleToLongBits >> 32)) + ((int) doubleToLongBits);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean islong() {
        double d = this.f7967u;
        return d == ((double) ((long) d));
    }

    @Override // com.prineside.luaj.LuaNumber, com.prineside.luaj.LuaValue
    public boolean isnumber() {
        return true;
    }

    @Override // com.prineside.luaj.LuaNumber, com.prineside.luaj.LuaValue
    public boolean isstring() {
        return true;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean isvalidkey() {
        return !Double.isNaN(this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: lt */
    public LuaValue mo22770lt(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.gt_b(this.f7967u) ? LuaValue.TRUE : LuaValue.FALSE : super.mo22770lt(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lt_b(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.gt_b(this.f7967u) : super.lt_b(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue lteq(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.gteq_b(this.f7967u) ? LuaValue.TRUE : LuaValue.FALSE : super.lteq(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lteq_b(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.gteq_b(this.f7967u) : super.lteq_b(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mod(LuaValue luaValue) {
        return luaValue.modFrom(this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue modFrom(double d) {
        return dmod(d, this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mul(LuaValue luaValue) {
        return luaValue.mul(this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue neg() {
        return valueOf(-this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public double optdouble(double d) {
        return this.f7967u;
    }

    @Override // com.prineside.luaj.LuaValue
    public int optint(int i) {
        return (int) this.f7967u;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaInteger optinteger(LuaInteger luaInteger) {
        return LuaInteger.valueOf((int) this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public String optjstring(String str) {
        return tojstring();
    }

    @Override // com.prineside.luaj.LuaValue
    public long optlong(long j) {
        return (long) this.f7967u;
    }

    @Override // com.prineside.luaj.LuaNumber, com.prineside.luaj.LuaValue
    public LuaNumber optnumber(LuaNumber luaNumber) {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaString optstring(LuaString luaString) {
        return LuaString.valueOf(tojstring());
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue pow(LuaValue luaValue) {
        return luaValue.powWith(this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue powWith(double d) {
        return MathLib.dpow(d, this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean raweq(LuaValue luaValue) {
        return luaValue.raweq(this.f7967u);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f7967u = input.readDouble();
    }

    public void setDirectly(double d) {
        this.f7967u = d;
    }

    @Override // com.prineside.luaj.LuaValue
    public int strcmp(LuaString luaString) {
        m22767o("attempt to compare number with string");
        return 0;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaString strvalue() {
        return LuaString.valueOf(tojstring());
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue sub(LuaValue luaValue) {
        return luaValue.subFrom(this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue subFrom(double d) {
        return valueOf(d - this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public byte tobyte() {
        return (byte) this.f7967u;
    }

    @Override // com.prineside.luaj.LuaValue
    public char tochar() {
        return (char) this.f7967u;
    }

    @Override // com.prineside.luaj.LuaValue
    public double todouble() {
        return this.f7967u;
    }

    @Override // com.prineside.luaj.LuaValue
    public float tofloat() {
        return (float) this.f7967u;
    }

    @Override // com.prineside.luaj.LuaValue
    public int toint() {
        return (int) this.f7967u;
    }

    @Override // com.prineside.luaj.LuaValue
    public long tolong() {
        return (long) this.f7967u;
    }

    @Override // com.prineside.luaj.LuaNumber, com.prineside.luaj.LuaValue
    public LuaValue tonumber() {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public short toshort() {
        return (short) this.f7967u;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue tostring() {
        return LuaString.valueOf(tojstring());
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeDouble(this.f7967u);
    }

    public LuaDouble(double d) {
        this.f7967u = d;
    }

    public static LuaValue dmod(double d, double d2) {
        if (d2 != 0.0d && d != Double.POSITIVE_INFINITY && d != Double.NEGATIVE_INFINITY) {
            if (d2 == Double.POSITIVE_INFINITY) {
                if (d < 0.0d) {
                    return POSINF;
                }
                return valueOf(d);
            } else if (d2 == Double.NEGATIVE_INFINITY) {
                if (d > 0.0d) {
                    return NEGINF;
                }
                return valueOf(d);
            } else {
                return valueOf(d - (d2 * Math.floor(d / d2)));
            }
        }
        return NAN;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue add(double d) {
        return valueOf(d + this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue div(double d) {
        return ddiv(this.f7967u, d);
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: gt */
    public LuaValue mo22780gt(double d) {
        return this.f7967u > d ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gt_b(int i) {
        return this.f7967u > ((double) i);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue gteq(double d) {
        return this.f7967u >= d ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gteq_b(int i) {
        return this.f7967u >= ((double) i);
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: lt */
    public LuaValue mo22772lt(double d) {
        return this.f7967u < d ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lt_b(int i) {
        return this.f7967u < ((double) i);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue lteq(double d) {
        return this.f7967u <= d ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lteq_b(int i) {
        return this.f7967u <= ((double) i);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mod(double d) {
        return dmod(this.f7967u, d);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mul(double d) {
        return valueOf(d * this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue pow(double d) {
        return MathLib.dpow(this.f7967u, d);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue powWith(int i) {
        return MathLib.dpow(i, this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean raweq(double d) {
        return this.f7967u == d;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue sub(double d) {
        return valueOf(this.f7967u - d);
    }

    @Override // com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
    public String tojstring() {
        double d = this.f7967u;
        long j = (long) d;
        if (j == d) {
            return Long.toString(j);
        }
        if (Double.isNaN(d)) {
            return JSTR_NAN;
        }
        if (Double.isInfinite(this.f7967u)) {
            if (this.f7967u < 0.0d) {
                return JSTR_NEGINF;
            }
            return JSTR_POSINF;
        }
        return Float.toString((float) this.f7967u);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue div(int i) {
        return ddiv(this.f7967u, i);
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: gt */
    public LuaValue mo22779gt(int i) {
        return this.f7967u > ((double) i) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gt_b(double d) {
        return this.f7967u > d;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue gteq(int i) {
        return this.f7967u >= ((double) i) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gteq_b(double d) {
        return this.f7967u >= d;
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: lt */
    public LuaValue mo22771lt(int i) {
        return this.f7967u < ((double) i) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lt_b(double d) {
        return this.f7967u < d;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue lteq(int i) {
        return this.f7967u <= ((double) i) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lteq_b(double d) {
        return this.f7967u <= d;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mod(int i) {
        return dmod(this.f7967u, i);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mul(int i) {
        double d = i;
        double d2 = this.f7967u;
        Double.isNaN(d);
        return valueOf(d * d2);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue pow(int i) {
        return MathLib.dpow(this.f7967u, i);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean raweq(int i) {
        return this.f7967u == ((double) i);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue sub(int i) {
        double d = this.f7967u;
        double d2 = i;
        Double.isNaN(d2);
        return valueOf(d - d2);
    }
}
