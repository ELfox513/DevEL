package com.prineside.luaj.lib;

import com.prineside.luaj.LuaValue;
/* loaded from: classes2.dex */
class TableLibFunction extends LibFunction {
    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call() {
        return LuaValue.argerror(1, "table expected, got no value");
    }
}
