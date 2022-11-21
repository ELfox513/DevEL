package com.prineside.luaj;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class LuaUserdata extends LuaValue implements KryoSerializable {
    public Object m_instance;
    public LuaValue m_metatable;

    public LuaUserdata() {
    }

    @Override // com.prineside.luaj.LuaValue
    public Object checkuserdata() {
        return this.m_instance;
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: eq */
    public LuaValue mo22783eq(LuaValue luaValue) {
        return eq_b(luaValue) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    public boolean eqmt(LuaValue luaValue) {
        if (this.m_metatable == null || !luaValue.isuserdata()) {
            return false;
        }
        return LuaValue.eqmtcall(this, this.m_metatable, luaValue, luaValue.getmetatable());
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue get(LuaValue luaValue) {
        return this.m_metatable != null ? LuaValue.m22775j(this, luaValue) : LuaValue.NIL;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue getmetatable() {
        return this.m_metatable;
    }

    public int hashCode() {
        return this.m_instance.hashCode();
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean isuserdata() {
        return true;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean isuserdata(Class cls) {
        return cls.isAssignableFrom(this.m_instance.getClass());
    }

    @Override // com.prineside.luaj.LuaValue
    public Object optuserdata(Object obj) {
        return this.m_instance;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean raweq(LuaValue luaValue) {
        return luaValue.raweq(this);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue setmetatable(LuaValue luaValue) {
        this.m_metatable = luaValue;
        return this;
    }

    @Override // com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
    public String tojstring() {
        return String.valueOf(this.m_instance);
    }

    @Override // com.prineside.luaj.LuaValue
    public Object touserdata() {
        return this.m_instance;
    }

    @Override // com.prineside.luaj.LuaValue
    public int type() {
        return 7;
    }

    @Override // com.prineside.luaj.LuaValue
    public String typename() {
        return "userdata";
    }

    public Object userdata() {
        return this.m_instance;
    }

    public LuaUserdata(Object obj) {
        if (obj != null) {
            this.m_instance = obj;
            return;
        }
        throw new IllegalStateException("obj is null");
    }

    @Override // com.prineside.luaj.LuaValue
    public Object checkuserdata(Class cls) {
        if (cls.isAssignableFrom(this.m_instance.getClass())) {
            return this.m_instance;
        }
        return m22767o(cls.getName());
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LuaUserdata)) {
            return false;
        }
        return this.m_instance.equals(((LuaUserdata) obj).m_instance);
    }

    @Override // com.prineside.luaj.LuaValue
    public Object optuserdata(Class cls, Object obj) {
        if (!cls.isAssignableFrom(this.m_instance.getClass())) {
            m22767o(cls.getName());
        }
        return this.m_instance;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean raweq(LuaUserdata luaUserdata) {
        return this == luaUserdata || (this.m_metatable == luaUserdata.m_metatable && this.m_instance.equals(luaUserdata.m_instance));
    }

    @Override // com.prineside.luaj.LuaValue
    public void set(LuaValue luaValue, LuaValue luaValue2) {
        if (this.m_metatable == null || !LuaValue.m22768n(this, luaValue, luaValue2)) {
            LuaValue.error("cannot set " + luaValue + " for userdata");
        }
    }

    @Override // com.prineside.luaj.LuaValue
    public Object touserdata(Class cls) {
        if (cls.isAssignableFrom(this.m_instance.getClass())) {
            return this.m_instance;
        }
        return null;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeClassAndObject(output, this.m_instance);
        LuaValue.NILLABLE_SERIALIZER.writeClassAndObject(kryo, output, this.m_metatable);
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean eq_b(LuaValue luaValue) {
        LuaValue luaValue2;
        if (luaValue.raweq(this)) {
            return true;
        }
        if (this.m_metatable != null && luaValue.isuserdata() && (luaValue2 = luaValue.getmetatable()) != null && LuaValue.eqmtcall(this, this.m_metatable, luaValue, luaValue2)) {
            return true;
        }
        return false;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.m_instance = kryo.readClassAndObject(input);
        this.m_metatable = (LuaValue) kryo.readClassAndObject(input);
    }

    public LuaUserdata(Object obj, LuaValue luaValue) {
        if (obj != null) {
            this.m_instance = obj;
            this.m_metatable = luaValue;
            return;
        }
        throw new IllegalStateException("obj is null");
    }
}
