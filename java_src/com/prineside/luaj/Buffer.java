package com.prineside.luaj;
/* loaded from: classes2.dex */
public final class Buffer {

    /* renamed from: e */
    public static final byte[] f7931e = new byte[0];

    /* renamed from: a */
    public byte[] f7932a;

    /* renamed from: b */
    public int f7933b;

    /* renamed from: c */
    public int f7934c;

    /* renamed from: d */
    public LuaValue f7935d;

    public Buffer() {
        this(64);
    }

    public final Buffer append(byte b) {
        makeroom(0, 1);
        byte[] bArr = this.f7932a;
        int i = this.f7934c;
        int i2 = this.f7933b;
        this.f7933b = i2 + 1;
        bArr[i + i2] = b;
        return this;
    }

    public Buffer concatTo(LuaValue luaValue) {
        return setvalue(luaValue.concat(value()));
    }

    public String toString() {
        return tojstring();
    }

    public String tojstring() {
        return value().tojstring();
    }

    public LuaValue value() {
        LuaValue luaValue = this.f7935d;
        return luaValue != null ? luaValue : tostring();
    }

    public Buffer(int i) {
        this.f7932a = new byte[i];
        this.f7933b = 0;
        this.f7934c = 0;
        this.f7935d = null;
    }

    /* renamed from: a */
    public final void m22828a(int i, int i2) {
        byte[] bArr = this.f7932a;
        if (i != bArr.length) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, this.f7934c, bArr2, i2, this.f7933b);
            this.f7932a = bArr2;
            this.f7934c = i2;
        }
    }

    public Buffer concatTo(LuaString luaString) {
        LuaValue luaValue = this.f7935d;
        return (luaValue == null || luaValue.isstring()) ? prepend(luaString) : setvalue(luaString.concat(this.f7935d));
    }

    public final void makeroom(int i, int i2) {
        int i3;
        LuaValue luaValue = this.f7935d;
        if (luaValue != null) {
            LuaString strvalue = luaValue.strvalue();
            this.f7935d = null;
            int i4 = strvalue.m_length;
            this.f7933b = i4;
            this.f7934c = i;
            byte[] bArr = new byte[i + i4 + i2];
            this.f7932a = bArr;
            System.arraycopy(strvalue.m_bytes, strvalue.m_offset, bArr, i, i4);
            return;
        }
        int i5 = this.f7934c;
        int i6 = this.f7933b;
        if (i5 + i6 + i2 > this.f7932a.length || i5 < i) {
            int i7 = i + i6 + i2;
            if (i7 < 32) {
                i7 = 32;
            } else if (i7 < i6 * 2) {
                i7 = i6 * 2;
            }
            if (i == 0) {
                i3 = 0;
            } else {
                i3 = (i7 - i6) - i2;
            }
            m22828a(i7, i3);
        }
    }

    public Buffer prepend(LuaString luaString) {
        int i = luaString.m_length;
        makeroom(i, 0);
        System.arraycopy(luaString.m_bytes, luaString.m_offset, this.f7932a, this.f7934c - i, i);
        this.f7934c -= i;
        this.f7933b += i;
        this.f7935d = null;
        return this;
    }

    public Buffer setvalue(LuaValue luaValue) {
        this.f7932a = f7931e;
        this.f7933b = 0;
        this.f7934c = 0;
        this.f7935d = luaValue;
        return this;
    }

    public final LuaString tostring() {
        m22828a(this.f7933b, 0);
        return LuaString.valueOf(this.f7932a, this.f7934c, this.f7933b);
    }

    public final Buffer append(LuaValue luaValue) {
        append(luaValue.strvalue());
        return this;
    }

    public Buffer concatTo(LuaNumber luaNumber) {
        LuaValue luaValue = this.f7935d;
        return (luaValue == null || luaValue.isstring()) ? prepend(luaNumber.strvalue()) : setvalue(luaNumber.concat(this.f7935d));
    }

    public final Buffer append(LuaString luaString) {
        int i = luaString.m_length;
        makeroom(0, i);
        luaString.copyInto(0, this.f7932a, this.f7934c + this.f7933b, i);
        this.f7933b += i;
        return this;
    }

    public Buffer(LuaValue luaValue) {
        this.f7932a = f7931e;
        this.f7934c = 0;
        this.f7933b = 0;
        this.f7935d = luaValue;
    }

    public final Buffer append(String str) {
        char[] charArray = str.toCharArray();
        int lengthAsUtf8 = LuaString.lengthAsUtf8(charArray);
        makeroom(0, lengthAsUtf8);
        LuaString.encodeToUtf8(charArray, charArray.length, this.f7932a, this.f7934c + this.f7933b);
        this.f7933b += lengthAsUtf8;
        return this;
    }
}
