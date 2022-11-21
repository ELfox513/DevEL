package com.prineside.luaj.lib.jse;

import com.prineside.luaj.LuaTable;
import com.prineside.luaj.LuaUserdata;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.lib.OneArgFunction;
import java.lang.reflect.Array;
/* loaded from: classes2.dex */
class JavaArray extends LuaUserdata {

    /* renamed from: u */
    public static final LuaValue f8283u = LuaValue.valueOf("length");

    /* renamed from: w */
    public static final LuaTable f8284w;

    /* loaded from: classes2.dex */
    public static final class LenFunction extends OneArgFunction {
        public LenFunction() {
        }

        @Override // com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(Array.getLength(((LuaUserdata) luaValue).m_instance));
        }
    }

    static {
        LuaTable luaTable = new LuaTable();
        f8284w = luaTable;
        luaTable.rawset(LuaValue.LEN, new LenFunction());
    }

    @Override // com.prineside.luaj.LuaUserdata, com.prineside.luaj.LuaValue
    public LuaValue get(LuaValue luaValue) {
        if (luaValue.equals(f8283u)) {
            return LuaValue.valueOf(Array.getLength(this.m_instance));
        }
        if (luaValue.isint()) {
            int i = luaValue.toint() - 1;
            if (i >= 0 && i < Array.getLength(this.m_instance)) {
                return CoerceJavaToLua.coerce(Array.get(this.m_instance, luaValue.toint() - 1));
            }
            return LuaValue.NIL;
        }
        return super.get(luaValue);
    }

    public JavaArray(Object obj) {
        super(obj);
        setmetatable(f8284w);
    }

    @Override // com.prineside.luaj.LuaUserdata, com.prineside.luaj.LuaValue
    public void set(LuaValue luaValue, LuaValue luaValue2) {
        if (luaValue.isint()) {
            int i = luaValue.toint() - 1;
            if (i >= 0 && i < Array.getLength(this.m_instance)) {
                Object obj = this.m_instance;
                Array.set(obj, i, CoerceLuaToJava.coerce(luaValue2, obj.getClass().getComponentType()));
                return;
            } else if (this.m_metatable == null || !LuaValue.m22768n(this, luaValue, luaValue2)) {
                LuaValue.error("array index out of bounds");
                return;
            } else {
                return;
            }
        }
        super.set(luaValue, luaValue2);
    }
}
