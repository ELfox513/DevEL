package com.prineside.luaj;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import com.prineside.luaj.lib.MathLib;
import com.prineside.tdi2.utils.REGS;
import java.io.ByteArrayInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.WeakHashMap;
@REGS
/* loaded from: classes2.dex */
public class LuaString extends LuaValue implements KryoSerializable {
    public static LuaValue s_metatable;

    /* renamed from: w */
    public static final WeakHashMap<String, LuaString> f7976w = new WeakHashMap<>();
    public byte[] m_bytes;
    public int m_length;
    public int m_offset;

    /* renamed from: u */
    public int f7977u;

    /* loaded from: classes2.dex */
    public static final class RecentShortStrings {

        /* renamed from: a */
        public static final LuaString[] f7978a = new LuaString[128];
    }

    public LuaString() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String decodeAsUtf8(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = i2 + i;
        int i5 = 0;
        int i6 = i;
        int i7 = 0;
        while (i6 < i4) {
            int i8 = i6 + 1;
            int i9 = bArr[i6] & 224;
            if (i9 != 192) {
                if (i9 == 224) {
                    i8++;
                }
                i6 = i8;
                i7++;
            }
            i8++;
            i6 = i8;
            i7++;
        }
        char[] cArr = new char[i7];
        while (i < i4) {
            int i10 = i5 + 1;
            int i11 = i + 1;
            int i12 = bArr[i];
            if (i12 < 0 && i11 < i4) {
                if (i12 >= -32 && (i3 = i11 + 1) < i4) {
                    int i13 = ((i12 & 15) << 12) | ((bArr[i11] & 63) << 6);
                    i11 = i3 + 1;
                    i12 = i13 | (bArr[i3] & 63);
                } else {
                    i12 = ((i12 & 63) << 6) | (bArr[i11] & 63);
                    i11++;
                }
            }
            cArr[i5] = (char) i12;
            i5 = i10;
            i = i11;
        }
        return new String(cArr);
    }

    public static int encodeToUtf8(char[] cArr, int i, byte[] bArr, int i2) {
        int i3 = i2;
        for (int i4 = 0; i4 < i; i4++) {
            char c = cArr[i4];
            if (c < 128) {
                bArr[i3] = (byte) c;
                i3++;
            } else if (c < 2048) {
                int i5 = i3 + 1;
                bArr[i3] = (byte) (((c >> 6) & 31) | 192);
                i3 = i5 + 1;
                bArr[i5] = (byte) ((c & '?') | 128);
            } else {
                int i6 = i3 + 1;
                bArr[i3] = (byte) (((c >> '\f') & 15) | 224);
                int i7 = i6 + 1;
                bArr[i6] = (byte) (((c >> 6) & 63) | 128);
                bArr[i7] = (byte) ((c & '?') | 128);
                i3 = i7 + 1;
            }
        }
        return i3 - i2;
    }

    public static int lengthAsUtf8(char[] cArr) {
        int i;
        int length = cArr.length;
        int i2 = length;
        while (true) {
            length--;
            if (length >= 0) {
                char c = cArr[length];
                if (c >= 128) {
                    if (c >= 2048) {
                        i = 2;
                    } else {
                        i = 1;
                    }
                    i2 += i;
                }
            } else {
                return i2;
            }
        }
    }

    public static LuaString valueOf(String str) {
        WeakHashMap<String, LuaString> weakHashMap = f7976w;
        if (weakHashMap.containsKey(str)) {
            return weakHashMap.get(str);
        }
        char[] charArray = str.toCharArray();
        int lengthAsUtf8 = lengthAsUtf8(charArray);
        byte[] bArr = new byte[lengthAsUtf8];
        encodeToUtf8(charArray, charArray.length, bArr, 0);
        LuaString valueUsing = valueUsing(bArr, 0, lengthAsUtf8);
        weakHashMap.put(str, valueUsing);
        return valueUsing;
    }

    public static LuaString valueUsing(byte[] bArr, int i, int i2) {
        if (bArr.length > 32) {
            return new LuaString(bArr, i, i2);
        }
        int hashCode = hashCode(bArr, i, i2);
        int i3 = hashCode & 127;
        LuaString luaString = RecentShortStrings.f7978a[i3];
        if (luaString != null && luaString.f7977u == hashCode && luaString.m22813q(bArr, i, i2)) {
            return luaString;
        }
        LuaString luaString2 = new LuaString(bArr, i, i2);
        RecentShortStrings.f7978a[i3] = luaString2;
        return luaString2;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue add(LuaValue luaValue) {
        double scannumber = scannumber();
        return Double.isNaN(scannumber) ? m22784e(LuaValue.ADD, luaValue) : luaValue.add(scannumber);
    }

    @Override // com.prineside.luaj.LuaValue
    public int checkint() {
        return (int) checkdouble();
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaInteger checkinteger() {
        return LuaValue.valueOf(checkint());
    }

    @Override // com.prineside.luaj.LuaValue
    public String checkjstring() {
        return tojstring();
    }

    @Override // com.prineside.luaj.LuaValue
    public long checklong() {
        return (long) checkdouble();
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaNumber checknumber() {
        return LuaValue.valueOf(checkdouble());
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaString checkstring() {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue concat(LuaValue luaValue) {
        return luaValue.concatTo(this);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue concatTo(LuaNumber luaNumber) {
        return concatTo(luaNumber.strvalue());
    }

    public void copyInto(int i, byte[] bArr, int i2, int i3) {
        System.arraycopy(this.m_bytes, this.m_offset + i, bArr, i2, i3);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue div(LuaValue luaValue) {
        double scannumber = scannumber();
        return Double.isNaN(scannumber) ? m22784e(LuaValue.DIV, luaValue) : luaValue.divInto(scannumber);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue divInto(double d) {
        return LuaDouble.ddiv(d, m22812r());
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: eq */
    public LuaValue mo22783eq(LuaValue luaValue) {
        return luaValue.raweq(this) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean eq_b(LuaValue luaValue) {
        return luaValue.raweq(this);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean equals(Object obj) {
        if (obj instanceof LuaString) {
            return raweq((LuaString) obj);
        }
        return false;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue getmetatable() {
        return s_metatable;
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: gt */
    public LuaValue mo22778gt(LuaValue luaValue) {
        return luaValue.isstring() ? luaValue.strcmp(this) < 0 ? LuaValue.TRUE : LuaValue.FALSE : super.mo22778gt(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gt_b(LuaValue luaValue) {
        return luaValue.isstring() ? luaValue.strcmp(this) < 0 : super.gt_b(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue gteq(LuaValue luaValue) {
        return luaValue.isstring() ? luaValue.strcmp(this) <= 0 ? LuaValue.TRUE : LuaValue.FALSE : super.gteq(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gteq_b(LuaValue luaValue) {
        return luaValue.isstring() ? luaValue.strcmp(this) <= 0 : super.gteq_b(luaValue);
    }

    public int hashCode() {
        return this.f7977u;
    }

    public int indexOf(byte b, int i) {
        while (i < this.m_length) {
            if (this.m_bytes[this.m_offset + i] == b) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean isstring() {
        return true;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue len() {
        return LuaInteger.valueOf(this.m_length);
    }

    @Override // com.prineside.luaj.LuaValue
    public int length() {
        return this.m_length;
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: lt */
    public LuaValue mo22770lt(LuaValue luaValue) {
        return luaValue.isstring() ? luaValue.strcmp(this) > 0 ? LuaValue.TRUE : LuaValue.FALSE : super.mo22770lt(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lt_b(LuaValue luaValue) {
        return luaValue.isstring() ? luaValue.strcmp(this) > 0 : super.lt_b(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue lteq(LuaValue luaValue) {
        return luaValue.isstring() ? luaValue.strcmp(this) >= 0 ? LuaValue.TRUE : LuaValue.FALSE : super.lteq(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lteq_b(LuaValue luaValue) {
        return luaValue.isstring() ? luaValue.strcmp(this) >= 0 : super.lteq_b(luaValue);
    }

    public int luaByte(int i) {
        return this.m_bytes[this.m_offset + i] & DefaultClassResolver.NAME;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mod(LuaValue luaValue) {
        double scannumber = scannumber();
        return Double.isNaN(scannumber) ? m22784e(LuaValue.MOD, luaValue) : luaValue.modFrom(scannumber);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue modFrom(double d) {
        return LuaDouble.dmod(d, m22812r());
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mul(LuaValue luaValue) {
        double scannumber = scannumber();
        return Double.isNaN(scannumber) ? m22784e(LuaValue.MUL, luaValue) : luaValue.mul(scannumber);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue neg() {
        double scannumber = scannumber();
        return Double.isNaN(scannumber) ? super.neg() : LuaValue.valueOf(-scannumber);
    }

    @Override // com.prineside.luaj.LuaValue
    public double optdouble(double d) {
        return checkdouble();
    }

    @Override // com.prineside.luaj.LuaValue
    public int optint(int i) {
        return checkint();
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaInteger optinteger(LuaInteger luaInteger) {
        return checkinteger();
    }

    @Override // com.prineside.luaj.LuaValue
    public String optjstring(String str) {
        return tojstring();
    }

    @Override // com.prineside.luaj.LuaValue
    public long optlong(long j) {
        return checklong();
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaNumber optnumber(LuaNumber luaNumber) {
        return checknumber();
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaString optstring(LuaString luaString) {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue pow(LuaValue luaValue) {
        double scannumber = scannumber();
        return Double.isNaN(scannumber) ? m22784e(LuaValue.POW, luaValue) : luaValue.powWith(scannumber);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue powWith(double d) {
        return MathLib.dpow(d, m22812r());
    }

    /* renamed from: q */
    public final boolean m22813q(byte[] bArr, int i, int i2) {
        return this.m_length == i2 && equals(this.m_bytes, this.m_offset, bArr, i, i2);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean raweq(LuaValue luaValue) {
        return luaValue.raweq(this);
    }

    @Override // com.prineside.luaj.LuaValue
    public int rawlen() {
        return this.m_length;
    }

    public double scannumber() {
        int i;
        byte b;
        int i2 = this.m_offset;
        int i3 = this.m_length + i2;
        while (i2 < i3 && this.m_bytes[i2] == 32) {
            i2++;
        }
        while (i2 < i3 && this.m_bytes[i3 - 1] == 32) {
            i3--;
        }
        if (i2 >= i3) {
            return Double.NaN;
        }
        byte[] bArr = this.m_bytes;
        if (bArr[i2] == 48 && (i = i2 + 1) < i3 && ((b = bArr[i]) == 120 || b == 88)) {
            return m22810t(16, i2 + 2, i3);
        }
        double m22810t = m22810t(10, i2, i3);
        return Double.isNaN(m22810t) ? m22811s(i2, i3) : m22810t;
    }

    @Override // com.prineside.luaj.LuaValue
    public int strcmp(LuaValue luaValue) {
        return -luaValue.strcmp(this);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaString strvalue() {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue sub(LuaValue luaValue) {
        double scannumber = scannumber();
        return Double.isNaN(scannumber) ? m22784e(LuaValue.SUB, luaValue) : luaValue.subFrom(scannumber);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue subFrom(double d) {
        return LuaValue.valueOf(d - m22812r());
    }

    public InputStream toInputStream() {
        return new ByteArrayInputStream(this.m_bytes, this.m_offset, this.m_length);
    }

    @Override // com.prineside.luaj.LuaValue
    public byte tobyte() {
        return (byte) toint();
    }

    @Override // com.prineside.luaj.LuaValue
    public char tochar() {
        return (char) toint();
    }

    @Override // com.prineside.luaj.LuaValue
    public double todouble() {
        double scannumber = scannumber();
        if (Double.isNaN(scannumber)) {
            return 0.0d;
        }
        return scannumber;
    }

    @Override // com.prineside.luaj.LuaValue
    public float tofloat() {
        return (float) todouble();
    }

    @Override // com.prineside.luaj.LuaValue
    public int toint() {
        return (int) tolong();
    }

    @Override // com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
    public String tojstring() {
        return decodeAsUtf8(this.m_bytes, this.m_offset, this.m_length);
    }

    @Override // com.prineside.luaj.LuaValue
    public long tolong() {
        return (long) todouble();
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue tonumber() {
        double scannumber = scannumber();
        return Double.isNaN(scannumber) ? LuaValue.NIL : LuaValue.valueOf(scannumber);
    }

    @Override // com.prineside.luaj.LuaValue
    public short toshort() {
        return (short) toint();
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue tostring() {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public int type() {
        return 4;
    }

    @Override // com.prineside.luaj.LuaValue
    public String typename() {
        return "string";
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.m_bytes, byte[].class);
        output.writeVarInt(this.m_offset, true);
        output.writeVarInt(this.m_length, true);
        output.writeInt(this.f7977u);
    }

    public LuaString(byte[] bArr, int i, int i2) {
        this.m_bytes = bArr;
        this.m_offset = i;
        this.m_length = i2;
        this.f7977u = hashCode(bArr, i, i2);
    }

    public static int hashCode(byte[] bArr, int i, int i2) {
        int i3 = (i2 >> 5) + 1;
        int i4 = i2;
        while (i2 >= i3) {
            i4 ^= ((i4 << 5) + (i4 >> 2)) + (bArr[(i + i2) - 1] & 255);
            i2 -= i3;
        }
        return i4;
    }

    /* renamed from: u */
    public static LuaString m22809u(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new LuaString(bArr2, 0, i2);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue add(double d) {
        return LuaValue.valueOf(m22812r() + d);
    }

    public int charAt(int i) {
        if (i >= 0 && i < this.m_length) {
            return luaByte(i);
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaNumber checknumber(String str) {
        double scannumber = scannumber();
        if (Double.isNaN(scannumber)) {
            LuaValue.error(str);
        }
        return LuaValue.valueOf(scannumber);
    }

    @Override // com.prineside.luaj.LuaValue
    public Buffer concat(Buffer buffer) {
        return buffer.concatTo(this);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue concatTo(LuaString luaString) {
        int i = luaString.m_length;
        int i2 = this.m_length + i;
        byte[] bArr = new byte[i2];
        System.arraycopy(luaString.m_bytes, luaString.m_offset, bArr, 0, i);
        System.arraycopy(this.m_bytes, this.m_offset, bArr, luaString.m_length, this.m_length);
        return valueUsing(bArr, 0, i2);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue div(double d) {
        return LuaDouble.ddiv(m22812r(), d);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gt_b(int i) {
        m22767o("attempt to compare string with number");
        return false;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gteq_b(int i) {
        m22767o("attempt to compare string with number");
        return false;
    }

    public int indexOfAny(LuaString luaString) {
        int i = this.m_offset;
        int i2 = this.m_length + i;
        int i3 = luaString.m_offset + luaString.m_length;
        while (i < i2) {
            for (int i4 = luaString.m_offset; i4 < i3; i4++) {
                if (this.m_bytes[i] == luaString.m_bytes[i4]) {
                    return i - this.m_offset;
                }
            }
            i++;
        }
        return -1;
    }

    public boolean isValidUtf8() {
        int i;
        int i2 = this.m_offset;
        int i3 = this.m_length + i2;
        while (i2 < i3) {
            byte[] bArr = this.m_bytes;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b < 0) {
                if ((b & 224) == 192 && i4 < i3) {
                    int i5 = i4 + 1;
                    if ((bArr[i4] & 192) == 128) {
                        i2 = i5;
                    } else {
                        i4 = i5;
                    }
                }
                if ((b & 240) == 224 && (i = i4 + 1) < i3 && (bArr[i4] & 192) == 128) {
                    i4 = i + 1;
                    if ((bArr[i] & 192) != 128) {
                        return false;
                    }
                } else {
                    return false;
                }
            }
            i2 = i4;
        }
        return true;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lt_b(int i) {
        m22767o("attempt to compare string with number");
        return false;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lteq_b(int i) {
        m22767o("attempt to compare string with number");
        return false;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mod(double d) {
        return LuaDouble.dmod(m22812r(), d);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mul(double d) {
        return LuaValue.valueOf(m22812r() * d);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue pow(double d) {
        return MathLib.dpow(m22812r(), d);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue powWith(int i) {
        return MathLib.dpow(i, m22812r());
    }

    public void printToStream(PrintStream printStream) {
        int i = this.m_length;
        for (int i2 = 0; i2 < i; i2++) {
            printStream.print((char) this.m_bytes[this.m_offset + i2]);
        }
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean raweq(LuaString luaString) {
        if (this == luaString) {
            return true;
        }
        if (luaString.m_length != this.m_length) {
            return false;
        }
        if (luaString.m_bytes == this.m_bytes && luaString.m_offset == this.m_offset) {
            return true;
        }
        if (luaString.hashCode() != hashCode()) {
            return false;
        }
        for (int i = 0; i < this.m_length; i++) {
            if (luaString.m_bytes[luaString.m_offset + i] != this.m_bytes[this.m_offset + i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.m_bytes = (byte[]) kryo.readObjectOrNull(input, byte[].class);
        this.m_offset = input.readVarInt(true);
        this.m_length = input.readVarInt(true);
        this.f7977u = input.readInt();
    }

    /* renamed from: s */
    public final double m22811s(int i, int i2) {
        int i3 = i + 64;
        if (i2 > i3) {
            i2 = i3;
        }
        for (int i4 = i; i4 < i2; i4++) {
            byte b = this.m_bytes[i4];
            if (b != 43 && b != 69 && b != 101 && b != 45 && b != 46) {
                switch (b) {
                    case 48:
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                        break;
                    default:
                        return Double.NaN;
                }
            }
        }
        char[] cArr = new char[i2 - i];
        for (int i5 = i; i5 < i2; i5++) {
            cArr[i5 - i] = (char) this.m_bytes[i5];
        }
        try {
            return Double.parseDouble(new String(cArr));
        } catch (Exception unused) {
            return Double.NaN;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
        return r2 - r9.m_length;
     */
    @Override // com.prineside.luaj.LuaValue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int strcmp(com.prineside.luaj.LuaString r9) {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
        L2:
            int r2 = r8.m_length
            if (r0 >= r2) goto L29
            int r3 = r9.m_length
            if (r1 >= r3) goto L29
            byte[] r2 = r8.m_bytes
            int r3 = r8.m_offset
            int r4 = r3 + r0
            r4 = r2[r4]
            byte[] r5 = r9.m_bytes
            int r6 = r9.m_offset
            int r7 = r6 + r1
            r7 = r5[r7]
            if (r4 == r7) goto L24
            int r3 = r3 + r0
            r9 = r2[r3]
            int r6 = r6 + r1
            r0 = r5[r6]
            int r9 = r9 - r0
            return r9
        L24:
            int r0 = r0 + 1
            int r1 = r1 + 1
            goto L2
        L29:
            int r9 = r9.m_length
            int r2 = r2 - r9
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.luaj.LuaString.strcmp(com.prineside.luaj.LuaString):int");
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue sub(double d) {
        return LuaValue.valueOf(m22812r() - d);
    }

    public LuaString substring(int i, int i2) {
        int i3 = this.m_offset + i;
        int i4 = i2 - i;
        if (i4 >= this.m_length / 2) {
            return valueUsing(this.m_bytes, i3, i4);
        }
        return valueOf(this.m_bytes, i3, i4);
    }

    /* renamed from: t */
    public final double m22810t(int i, int i2, int i3) {
        boolean z;
        if (this.m_bytes[i2] == 45) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i2++;
        }
        long j = 0;
        while (i2 < i3) {
            byte b = this.m_bytes[i2];
            byte b2 = 48;
            if (i > 10 && (b < 48 || b > 57)) {
                b2 = (b < 65 || b > 90) ? (byte) 87 : (byte) 55;
            }
            int i4 = b - b2;
            if (i4 < 0 || i4 >= i) {
                return Double.NaN;
            }
            j = (j * i) + i4;
            if (j < 0) {
                return Double.NaN;
            }
            i2++;
        }
        if (z) {
            return -j;
        }
        return j;
    }

    public static boolean equals(LuaString luaString, int i, LuaString luaString2, int i2, int i3) {
        return equals(luaString.m_bytes, luaString.m_offset + i, luaString2.m_bytes, luaString2.m_offset + i2, i3);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue add(int i) {
        double m22812r = m22812r();
        double d = i;
        Double.isNaN(d);
        return LuaValue.valueOf(m22812r + d);
    }

    @Override // com.prineside.luaj.LuaValue
    public double checkdouble() {
        double scannumber = scannumber();
        if (Double.isNaN(scannumber)) {
            m22787b("number");
        }
        return scannumber;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue div(int i) {
        return LuaDouble.ddiv(m22812r(), i);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gt_b(double d) {
        m22767o("attempt to compare string with number");
        return false;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean gteq_b(double d) {
        m22767o("attempt to compare string with number");
        return false;
    }

    public int indexOf(LuaString luaString, int i) {
        int length = luaString.length();
        int i2 = this.m_length - length;
        while (i <= i2) {
            if (equals(this.m_bytes, this.m_offset + i, luaString.m_bytes, luaString.m_offset, length)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean isint() {
        double scannumber = scannumber();
        if (Double.isNaN(scannumber) || ((int) scannumber) != scannumber) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean islong() {
        double scannumber = scannumber();
        if (Double.isNaN(scannumber) || ((long) scannumber) != scannumber) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean isnumber() {
        return !Double.isNaN(scannumber());
    }

    public int lastIndexOf(LuaString luaString) {
        int length = luaString.length();
        for (int i = this.m_length - length; i >= 0; i--) {
            if (equals(this.m_bytes, this.m_offset + i, luaString.m_bytes, luaString.m_offset, length)) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lt_b(double d) {
        m22767o("attempt to compare string with number");
        return false;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean lteq_b(double d) {
        m22767o("attempt to compare string with number");
        return false;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mod(int i) {
        return LuaDouble.dmod(m22812r(), i);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue mul(int i) {
        double m22812r = m22812r();
        double d = i;
        Double.isNaN(d);
        return LuaValue.valueOf(m22812r * d);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue pow(int i) {
        return MathLib.dpow(m22812r(), i);
    }

    /* renamed from: r */
    public final double m22812r() {
        double scannumber = scannumber();
        if (Double.isNaN(scannumber)) {
            m22786c();
        }
        return scannumber;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue sub(int i) {
        double m22812r = m22812r();
        double d = i;
        Double.isNaN(d);
        return LuaValue.valueOf(m22812r - d);
    }

    public LuaValue tonumber(int i) {
        double scannumber = scannumber(i);
        return Double.isNaN(scannumber) ? LuaValue.NIL : LuaValue.valueOf(scannumber);
    }

    public static boolean equals(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        if (bArr.length < i + i3 || bArr2.length < i2 + i3) {
            return false;
        }
        while (true) {
            i3--;
            if (i3 < 0) {
                return true;
            }
            int i4 = i + 1;
            int i5 = i2 + 1;
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i = i4;
            i2 = i5;
        }
    }

    public void write(DataOutputStream dataOutputStream, int i, int i2) {
        dataOutputStream.write(this.m_bytes, this.m_offset + i, i2);
    }

    public static LuaString valueOf(byte[] bArr, int i, int i2) {
        if (i2 > 32) {
            return m22809u(bArr, i, i2);
        }
        int hashCode = hashCode(bArr, i, i2);
        int i3 = hashCode & 127;
        LuaString luaString = RecentShortStrings.f7978a[i3];
        if (luaString != null && luaString.f7977u == hashCode && luaString.m22813q(bArr, i, i2)) {
            return luaString;
        }
        LuaString m22809u = m22809u(bArr, i, i2);
        RecentShortStrings.f7978a[i3] = m22809u;
        return m22809u;
    }

    public static LuaString valueUsing(byte[] bArr) {
        return valueUsing(bArr, 0, bArr.length);
    }

    public double scannumber(int i) {
        if (i < 2 || i > 36) {
            return Double.NaN;
        }
        int i2 = this.m_offset;
        int i3 = this.m_length + i2;
        while (i2 < i3 && this.m_bytes[i2] == 32) {
            i2++;
        }
        while (i2 < i3 && this.m_bytes[i3 - 1] == 32) {
            i3--;
        }
        if (i2 >= i3) {
            return Double.NaN;
        }
        return m22810t(i, i2, i3);
    }

    public static LuaString valueOf(char[] cArr) {
        return valueOf(cArr, 0, cArr.length);
    }

    public static LuaString valueOf(char[] cArr, int i, int i2) {
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            bArr[i3] = (byte) cArr[i3 + i];
        }
        return valueUsing(bArr, 0, i2);
    }

    public static LuaString valueOf(byte[] bArr) {
        return valueOf(bArr, 0, bArr.length);
    }
}
