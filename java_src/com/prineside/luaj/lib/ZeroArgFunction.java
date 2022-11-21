package com.prineside.luaj.lib;

import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
/* loaded from: classes2.dex */
public abstract class ZeroArgFunction extends LibFunction {
    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public abstract LuaValue call();

    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue) {
        return call();
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public Varargs invoke(Varargs varargs) {
        return call();
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return call();
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return call();
    }
}
