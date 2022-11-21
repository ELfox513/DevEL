package com.prineside.luaj;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.REGS;
@REGS(arrayLevels = 1)
/* loaded from: classes2.dex */
public final class UpValue implements KryoSerializable {

    /* renamed from: a */
    public LuaValue[] f8022a;

    /* renamed from: b */
    public int f8023b;

    public UpValue() {
    }

    public final LuaValue getValue() {
        return this.f8022a[this.f8023b];
    }

    public final void setValue(LuaValue luaValue) {
        this.f8022a[this.f8023b] = luaValue;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f8023b);
        sb.append("/");
        if (this.f8022a != null) {
            str = this.f8022a.length + " " + this.f8022a[this.f8023b];
        } else {
            str = "noArr";
        }
        sb.append(str);
        return sb.toString();
    }

    public String tojstring() {
        return this.f8022a[this.f8023b].tojstring();
    }

    public final void close() {
        LuaValue[] luaValueArr = this.f8022a;
        int i = this.f8023b;
        this.f8022a = new LuaValue[]{luaValueArr[i]};
        luaValueArr[i] = null;
        this.f8023b = 0;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        LuaValue.NILLABLE_SERIALIZER.writeClassAndObject(kryo, output, this.f8022a);
        output.writeInt(this.f8023b);
    }

    public UpValue(LuaValue[] luaValueArr, int i) {
        this.f8022a = luaValueArr;
        this.f8023b = i;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f8022a = (LuaValue[]) kryo.readClassAndObject(input);
        this.f8023b = input.readInt();
    }
}
