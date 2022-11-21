package com.prineside.luaj;

import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class LuaNil extends LuaValue {
    public static LuaValue s_metatable;

    /* renamed from: u */
    public static final LuaNil f7975u = new LuaNil();

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<LuaNil> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public LuaNil read() {
            return LuaNil.f7975u;
        }
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue checknotnil() {
        return m22787b("value");
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean equals(Object obj) {
        return obj instanceof LuaNil;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue getmetatable() {
        return s_metatable;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean isnil() {
        return true;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean isvalidkey() {
        return false;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue not() {
        return LuaValue.TRUE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean optboolean(boolean z) {
        return z;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaClosure optclosure(LuaClosure luaClosure) {
        return luaClosure;
    }

    @Override // com.prineside.luaj.LuaValue
    public double optdouble(double d) {
        return d;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaFunction optfunction(LuaFunction luaFunction) {
        return luaFunction;
    }

    @Override // com.prineside.luaj.LuaValue
    public int optint(int i) {
        return i;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaInteger optinteger(LuaInteger luaInteger) {
        return luaInteger;
    }

    @Override // com.prineside.luaj.LuaValue
    public String optjstring(String str) {
        return str;
    }

    @Override // com.prineside.luaj.LuaValue
    public long optlong(long j) {
        return j;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaNumber optnumber(LuaNumber luaNumber) {
        return luaNumber;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaString optstring(LuaString luaString) {
        return luaString;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaTable opttable(LuaTable luaTable) {
        return luaTable;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaThread optthread(LuaThread luaThread) {
        return luaThread;
    }

    @Override // com.prineside.luaj.LuaValue
    public Object optuserdata(Class cls, Object obj) {
        return obj;
    }

    @Override // com.prineside.luaj.LuaValue
    public Object optuserdata(Object obj) {
        return obj;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue optvalue(LuaValue luaValue) {
        return luaValue;
    }

    @Override // com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
    public String toString() {
        return "nil";
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean toboolean() {
        return false;
    }

    @Override // com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
    public String tojstring() {
        return "nil";
    }

    @Override // com.prineside.luaj.LuaValue
    public int type() {
        return 0;
    }

    @Override // com.prineside.luaj.LuaValue
    public String typename() {
        return "nil";
    }
}
