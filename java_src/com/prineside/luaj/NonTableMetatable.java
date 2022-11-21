package com.prineside.luaj;

import com.prineside.luaj.LuaTable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class NonTableMetatable implements Metatable {

    /* renamed from: a */
    public final LuaValue f8013a;

    @Override // com.prineside.luaj.Metatable
    public LuaValue arrayget(LuaValue[] luaValueArr, int i) {
        return luaValueArr[i];
    }

    @Override // com.prineside.luaj.Metatable
    public LuaTable.Slot entry(LuaValue luaValue, LuaValue luaValue2) {
        return LuaTable.m22793v(luaValue, luaValue2);
    }

    @Override // com.prineside.luaj.Metatable
    public LuaValue toLuaValue() {
        return this.f8013a;
    }

    @Override // com.prineside.luaj.Metatable
    public boolean useWeakKeys() {
        return false;
    }

    @Override // com.prineside.luaj.Metatable
    public boolean useWeakValues() {
        return false;
    }

    @Override // com.prineside.luaj.Metatable
    public LuaValue wrap(LuaValue luaValue) {
        return luaValue;
    }

    public NonTableMetatable(LuaValue luaValue) {
        this.f8013a = luaValue;
    }
}
