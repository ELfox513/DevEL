package com.prineside.luaj.lib;

import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
/* loaded from: classes2.dex */
public abstract class ThreeArgFunction extends LibFunction {
    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public final LuaValue call() {
        LuaValue luaValue = LuaValue.NIL;
        return call(luaValue, luaValue, luaValue);
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public abstract LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3);

    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public Varargs invoke(Varargs varargs) {
        return call(varargs.arg1(), varargs.arg(2), varargs.arg(3));
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public final LuaValue call(LuaValue luaValue) {
        LuaValue luaValue2 = LuaValue.NIL;
        return call(luaValue, luaValue2, luaValue2);
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return call(luaValue, luaValue2, LuaValue.NIL);
    }
}
