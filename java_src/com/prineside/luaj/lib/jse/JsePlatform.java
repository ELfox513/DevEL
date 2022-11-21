package com.prineside.luaj.lib.jse;

import com.prineside.luaj.Globals;
import com.prineside.luaj.LuaTable;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
import com.prineside.luaj.lib.DebugLib;
import net.bytebuddy.description.method.ParameterDescription;
/* loaded from: classes2.dex */
public class JsePlatform {
    @Deprecated
    public static Globals standardGlobals() {
        throw new IllegalStateException("Deprecated");
    }

    public static Globals debugGlobals() {
        Globals standardGlobals = standardGlobals();
        standardGlobals.load(new DebugLib());
        return standardGlobals;
    }

    public static Varargs luaMain(LuaValue luaValue, String[] strArr) {
        Globals standardGlobals = standardGlobals();
        int length = strArr.length;
        LuaValue[] luaValueArr = new LuaValue[strArr.length];
        for (int i = 0; i < length; i++) {
            luaValueArr[i] = LuaValue.valueOf(strArr[i]);
        }
        LuaTable listOf = LuaValue.listOf(luaValueArr);
        listOf.set("n", length);
        standardGlobals.set(ParameterDescription.NAME_PREFIX, listOf);
        luaValue.initupvalue1(standardGlobals);
        return luaValue.invoke(LuaValue.varargsOf(luaValueArr));
    }
}
