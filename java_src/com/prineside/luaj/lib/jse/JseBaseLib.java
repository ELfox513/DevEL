package com.prineside.luaj.lib.jse;

import com.prineside.luaj.LuaValue;
import com.prineside.luaj.lib.BaseLib;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public final class JseBaseLib extends BaseLib {
    @Override // com.prineside.luaj.lib.BaseLib, com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        super.call(luaValue, luaValue2);
        luaValue2.checkglobals().STDIN = System.in;
        return luaValue2;
    }
}
