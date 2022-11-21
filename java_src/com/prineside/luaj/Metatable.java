package com.prineside.luaj;

import com.prineside.luaj.LuaTable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public interface Metatable {
    LuaValue arrayget(LuaValue[] luaValueArr, int i);

    LuaTable.Slot entry(LuaValue luaValue, LuaValue luaValue2);

    LuaValue toLuaValue();

    boolean useWeakKeys();

    boolean useWeakValues();

    LuaValue wrap(LuaValue luaValue);
}
