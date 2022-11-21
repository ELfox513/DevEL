package com.prineside.luaj.lib;

import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
/* loaded from: classes2.dex */
public abstract class OneArgFunction extends LibFunction {
    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public final LuaValue call() {
        return call(LuaValue.NIL);
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public abstract LuaValue call(LuaValue luaValue);

    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public Varargs invoke(Varargs varargs) {
        return call(varargs.arg1());
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public final LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return call(luaValue);
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return call(luaValue);
    }
}
