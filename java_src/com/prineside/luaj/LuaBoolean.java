package com.prineside.luaj;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public final class LuaBoolean extends LuaValue {
    public static LuaValue s_metatable;

    /* renamed from: u */
    public static final LuaBoolean f7961u = new LuaBoolean(true);

    /* renamed from: w */
    public static final LuaBoolean f7962w = new LuaBoolean(false);

    /* renamed from: v */
    public boolean f7963v;

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<LuaBoolean> {
        @Override // com.prineside.tdi2.serializers.SingletonSerializer, com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends LuaBoolean>) cls);
        }

        @Override // com.prineside.tdi2.serializers.SingletonSerializer, com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, LuaBoolean luaBoolean) {
            output.writeBoolean(luaBoolean.f7963v);
        }

        public Serializer() {
            setImmutable(true);
        }

        @Override // com.prineside.tdi2.serializers.SingletonSerializer, com.esotericsoftware.kryo.Serializer
        public LuaBoolean read(Kryo kryo, Input input, Class<? extends LuaBoolean> cls) {
            return input.readBoolean() ? LuaBoolean.f7961u : LuaBoolean.f7962w;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public LuaBoolean read() {
            throw new IllegalStateException("Unused");
        }
    }

    public boolean booleanValue() {
        return this.f7963v;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean checkboolean() {
        return this.f7963v;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue getmetatable() {
        return s_metatable;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean isboolean() {
        return true;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue not() {
        return this.f7963v ? LuaValue.FALSE : LuaValue.TRUE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean optboolean(boolean z) {
        return this.f7963v;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean toboolean() {
        return this.f7963v;
    }

    @Override // com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
    public String tojstring() {
        return this.f7963v ? "true" : "false";
    }

    @Override // com.prineside.luaj.LuaValue
    public int type() {
        return 1;
    }

    @Override // com.prineside.luaj.LuaValue
    public String typename() {
        return "boolean";
    }

    public LuaBoolean(boolean z) {
        this.f7963v = z;
    }
}
