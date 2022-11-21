package com.prineside.luaj;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.lib.MathLib;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class LuaInteger extends LuaNumber implements KryoSerializable {

    /* renamed from: u */
    public static final LuaInteger[] f7973u = new LuaInteger[512];

    /* renamed from: v */
    public int f7974v;

    public LuaInteger() {
    }

    public static int hashCode(int i) {
        return i;
    }

    public static LuaInteger valueOf(int i) {
        return (i > 255 || i < -256) ? new LuaInteger(i) : f7973u[i + 256];
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue add(LuaValue luaValue) {
        return luaValue.add(this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public double checkdouble() {
        return this.f7974v;
    }

    @Override // com.prineside.luaj.LuaValue
    public int checkint() {
        return this.f7974v;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaInteger checkinteger() {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public String checkjstring() {
        return PMath.toString(this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public long checklong() {
        return this.f7974v;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaString checkstring() {
        return LuaValue.valueOf(PMath.toString(this.f7974v));
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue div(LuaValue luaValue) {
        return luaValue.divInto(this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue divInto(double d) {
        return LuaDouble.ddiv(d, this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: eq */
    public LuaValue mo22783eq(LuaValue luaValue) {
        return luaValue.raweq(this.f7974v) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean eq_b(LuaValue luaValue) {
        return luaValue.raweq(this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean equals(Object obj) {
        return (obj instanceof LuaInteger) && ((LuaInteger) obj).f7974v == this.f7974v;
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: gt */
    public LuaValue mo22778gt(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.lt_b(this.f7974v) ? LuaValue.TRUE : LuaValue.FALSE : super.mo22778gt(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gt_b(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.lt_b(this.f7974v) : super.gt_b(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue gteq(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.lteq_b(this.f7974v) ? LuaValue.TRUE : LuaValue.FALSE : super.gteq(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gteq_b(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.lteq_b(this.f7974v) : super.gteq_b(luaValue);
    }

    public int hashCode() {
        return this.f7974v;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean isint() {
        return true;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean isinttype() {
        return true;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean islong() {
        return true;
    }

    @Override // com.prineside.luaj.LuaNumber, com.prineside.luaj.LuaValue
    public boolean isstring() {
        return true;
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: lt */
    public LuaValue mo22770lt(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.gt_b(this.f7974v) ? LuaValue.TRUE : LuaValue.FALSE : super.mo22770lt(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lt_b(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.gt_b(this.f7974v) : super.lt_b(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue lteq(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.gteq_b(this.f7974v) ? LuaValue.TRUE : LuaValue.FALSE : super.lteq(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lteq_b(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.gteq_b(this.f7974v) : super.lteq_b(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mod(LuaValue luaValue) {
        return luaValue.modFrom(this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue modFrom(double d) {
        return LuaDouble.dmod(d, this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mul(LuaValue luaValue) {
        return luaValue.mul(this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue neg() {
        return valueOf(-this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public double optdouble(double d) {
        return this.f7974v;
    }

    @Override // com.prineside.luaj.LuaValue
    public int optint(int i) {
        return this.f7974v;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaInteger optinteger(LuaInteger luaInteger) {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public String optjstring(String str) {
        return Integer.toString(this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public long optlong(long j) {
        return this.f7974v;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaString optstring(LuaString luaString) {
        return LuaString.valueOf(Integer.toString(this.f7974v));
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue pow(LuaValue luaValue) {
        return luaValue.powWith(this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue powWith(double d) {
        return MathLib.dpow(d, this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean raweq(LuaValue luaValue) {
        return luaValue.raweq(this.f7974v);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f7974v = input.readInt();
    }

    @Override // com.prineside.luaj.LuaValue
    public int strcmp(LuaString luaString) {
        m22767o("attempt to compare number with string");
        return 0;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaString strvalue() {
        return LuaString.valueOf(Integer.toString(this.f7974v));
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue sub(LuaValue luaValue) {
        return luaValue.subFrom(this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue subFrom(double d) {
        double d2 = this.f7974v;
        Double.isNaN(d2);
        return LuaDouble.valueOf(d - d2);
    }

    @Override // com.prineside.luaj.LuaValue
    public byte tobyte() {
        return (byte) this.f7974v;
    }

    @Override // com.prineside.luaj.LuaValue
    public char tochar() {
        return (char) this.f7974v;
    }

    @Override // com.prineside.luaj.LuaValue
    public double todouble() {
        return this.f7974v;
    }

    @Override // com.prineside.luaj.LuaValue
    public float tofloat() {
        return this.f7974v;
    }

    @Override // com.prineside.luaj.LuaValue
    public int toint() {
        return this.f7974v;
    }

    @Override // com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
    public String tojstring() {
        return Integer.toString(this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public long tolong() {
        return this.f7974v;
    }

    @Override // com.prineside.luaj.LuaValue
    public short toshort() {
        return (short) this.f7974v;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue tostring() {
        return LuaString.valueOf(Integer.toString(this.f7974v));
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeInt(this.f7974v);
    }

    static {
        for (int i = 0; i < 512; i++) {
            f7973u[i] = new LuaInteger(i - 256);
        }
    }

    public LuaInteger(int i) {
        this.f7974v = i;
    }

    public static LuaNumber valueOf(long j) {
        int i = (int) j;
        if (j == i) {
            if (i <= 255 && i >= -256) {
                return f7973u[i + 256];
            }
            return new LuaInteger(i);
        }
        return LuaDouble.valueOf(j);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue add(double d) {
        double d2 = this.f7974v;
        Double.isNaN(d2);
        return LuaDouble.valueOf(d + d2);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue div(double d) {
        return LuaDouble.ddiv(this.f7974v, d);
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: gt */
    public LuaValue mo22780gt(double d) {
        return ((double) this.f7974v) > d ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gt_b(int i) {
        return this.f7974v > i;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue gteq(double d) {
        return ((double) this.f7974v) >= d ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gteq_b(int i) {
        return this.f7974v >= i;
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: lt */
    public LuaValue mo22772lt(double d) {
        return ((double) this.f7974v) < d ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lt_b(int i) {
        return this.f7974v < i;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue lteq(double d) {
        return ((double) this.f7974v) <= d ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lteq_b(int i) {
        return this.f7974v <= i;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mod(double d) {
        return LuaDouble.dmod(this.f7974v, d);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mul(double d) {
        double d2 = this.f7974v;
        Double.isNaN(d2);
        return LuaDouble.valueOf(d * d2);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue pow(double d) {
        return MathLib.dpow(this.f7974v, d);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue powWith(int i) {
        return MathLib.dpow(i, this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean raweq(double d) {
        return ((double) this.f7974v) == d;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue sub(double d) {
        double d2 = this.f7974v;
        Double.isNaN(d2);
        return LuaDouble.valueOf(d2 - d);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue subFrom(int i) {
        return valueOf(i - this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue add(int i) {
        return valueOf(i + this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue div(int i) {
        return LuaDouble.ddiv(this.f7974v, i);
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: gt */
    public LuaValue mo22779gt(int i) {
        return this.f7974v > i ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gt_b(double d) {
        return ((double) this.f7974v) > d;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue gteq(int i) {
        return this.f7974v >= i ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gteq_b(double d) {
        return ((double) this.f7974v) >= d;
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: lt */
    public LuaValue mo22771lt(int i) {
        return this.f7974v < i ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lt_b(double d) {
        return ((double) this.f7974v) < d;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue lteq(int i) {
        return this.f7974v <= i ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lteq_b(double d) {
        return ((double) this.f7974v) <= d;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mod(int i) {
        return LuaDouble.dmod(this.f7974v, i);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mul(int i) {
        return valueOf(i * this.f7974v);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue pow(int i) {
        return MathLib.dpow(this.f7974v, i);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean raweq(int i) {
        return this.f7974v == i;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue sub(int i) {
        return LuaValue.valueOf(this.f7974v - i);
    }
}
