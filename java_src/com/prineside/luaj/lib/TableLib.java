package com.prineside.luaj.lib;

import com.prineside.luaj.LuaTable;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
import com.prineside.tdi2.utils.REGS;
/* loaded from: classes2.dex */
public class TableLib extends TwoArgFunction {

    @REGS
    /* loaded from: classes2.dex */
    public static class concat extends TableLibFunction {
        @Override // com.prineside.luaj.lib.TableLibFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call() {
            return super.call();
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return luaValue.checktable().concat(LuaValue.EMPTYSTRING, 1, luaValue.length());
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return luaValue.checktable().concat(luaValue2.checkstring(), 1, luaValue.length());
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
            return luaValue.checktable().concat(luaValue2.checkstring(), luaValue3.checkint(), luaValue.length());
        }

        @Override // com.prineside.luaj.lib.LibFunction
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3, LuaValue luaValue4) {
            return luaValue.checktable().concat(luaValue2.checkstring(), luaValue3.checkint(), luaValue4.checkint());
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class pack extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaTable tableOf = LuaValue.tableOf(varargs, 1);
            tableOf.set("n", varargs.narg());
            return tableOf;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class remove extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaTable checktable = varargs.checktable(1);
            int length = checktable.length();
            int optint = varargs.optint(2, length);
            if (optint != length && (optint < 1 || optint > length + 1)) {
                LuaValue.argerror(2, "position out of bounds: " + optint + " not between 1 and " + (length + 1));
            }
            return checktable.remove(optint);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class sort extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaValue checkfunction;
            LuaTable checktable = varargs.checktable(1);
            if (varargs.isnil(2)) {
                checkfunction = LuaValue.NIL;
            } else {
                checkfunction = varargs.checkfunction(2);
            }
            checktable.sort(checkfunction);
            return LuaValue.NONE;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class unpack extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            int i;
            LuaTable checktable = varargs.checktable(1);
            if (varargs.arg(3).isnil()) {
                i = checktable.length();
            } else {
                i = 0;
            }
            return checktable.unpack(varargs.optint(2, 1), varargs.optint(3, i));
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class insert extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            int narg = varargs.narg();
            if (narg != 2) {
                if (narg != 3) {
                    return LuaValue.error("wrong number of arguments to 'table.insert': " + varargs.narg() + " (must be 2 or 3)");
                }
                LuaTable checktable = varargs.checktable(1);
                int checkint = varargs.checkint(2);
                int length = checktable.length() + 1;
                if (checkint < 1 || checkint > length) {
                    LuaValue.argerror(2, "position out of bounds: " + checkint + " not between 1 and " + length);
                }
                checktable.insert(checkint, varargs.arg(3));
                return LuaValue.NONE;
            }
            LuaTable checktable2 = varargs.checktable(1);
            checktable2.insert(checktable2.length() + 1, varargs.arg(2));
            return LuaValue.NONE;
        }
    }

    @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        LuaTable luaTable = new LuaTable();
        luaTable.set("concat", new concat());
        luaTable.set("insert", new insert());
        luaTable.set("pack", new pack());
        luaTable.set("remove", new remove());
        luaTable.set("sort", new sort());
        luaTable.set("unpack", new unpack());
        luaValue2.set("table", luaTable);
        if (!luaValue2.get("package").isnil()) {
            luaValue2.get("package").get("loaded").set("table", luaTable);
        }
        return LuaValue.NIL;
    }
}
