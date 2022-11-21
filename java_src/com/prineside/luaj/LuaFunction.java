package com.prineside.luaj;
/* loaded from: classes2.dex */
public abstract class LuaFunction extends LuaValue {
    public static LuaValue s_metatable;

    @Override // com.prineside.luaj.LuaValue
    public LuaFunction checkfunction() {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue getmetatable() {
        return s_metatable;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean isfunction() {
        return true;
    }

    public String name() {
        return classnamestub();
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaFunction optfunction(LuaFunction luaFunction) {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaString strvalue() {
        return LuaValue.valueOf(tojstring());
    }

    @Override // com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
    public String tojstring() {
        return "function: " + classnamestub();
    }

    @Override // com.prineside.luaj.LuaValue
    public int type() {
        return 6;
    }

    @Override // com.prineside.luaj.LuaValue
    public String typename() {
        return "function";
    }

    public String classnamestub() {
        String name = getClass().getName();
        int max = Math.max(name.lastIndexOf(46), name.lastIndexOf(36)) + 1;
        if (name.charAt(max) == '_') {
            max++;
        }
        return name.substring(max);
    }
}
