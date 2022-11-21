package com.prineside.luaj;
/* loaded from: classes2.dex */
public abstract class LuaNumber extends LuaValue {
    public static LuaValue s_metatable;

    @Override // com.prineside.luaj.LuaValue
    public LuaNumber checknumber() {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaNumber checknumber(String str) {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue concat(LuaValue luaValue) {
        return luaValue.concatTo(this);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue concatTo(LuaNumber luaNumber) {
        return strvalue().concatTo(luaNumber.strvalue());
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue getmetatable() {
        return s_metatable;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean isnumber() {
        return true;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean isstring() {
        return true;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaNumber optnumber(LuaNumber luaNumber) {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue tonumber() {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public int type() {
        return 3;
    }

    @Override // com.prineside.luaj.LuaValue
    public String typename() {
        return "number";
    }

    @Override // com.prineside.luaj.LuaValue
    public Buffer concat(Buffer buffer) {
        return buffer.concatTo(this);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue concatTo(LuaString luaString) {
        return strvalue().concatTo(luaString);
    }
}
