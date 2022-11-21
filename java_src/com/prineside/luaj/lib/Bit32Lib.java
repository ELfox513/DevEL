package com.prineside.luaj.lib;

import com.prineside.luaj.LuaTable;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
import com.prineside.tdi2.utils.REGS;
/* loaded from: classes2.dex */
public class Bit32Lib extends TwoArgFunction {

    @REGS
    /* loaded from: classes2.dex */
    public static final class Bit32Lib2 extends TwoArgFunction {
        @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            int i = this.f8218u;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                return LuaValue.NIL;
                            }
                            return Bit32Lib.m22515E(luaValue.checkint(), luaValue2.checkint());
                        }
                        return Bit32Lib.m22516D(luaValue.checkint(), luaValue2.checkint());
                    }
                    return Bit32Lib.m22518B(luaValue.checkint(), luaValue2.checkint());
                }
                return Bit32Lib.m22519A(luaValue.checkint(), luaValue2.checkint());
            }
            return Bit32Lib.m22514s(luaValue.checkint(), luaValue2.checkint());
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class Bit32LibV extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            switch (this.f8218u) {
                case 0:
                    return Bit32Lib.m22513t(varargs);
                case 1:
                    return Bit32Lib.m22511v(varargs);
                case 2:
                    return Bit32Lib.m22510w(varargs);
                case 3:
                    return Bit32Lib.m22509x(varargs);
                case 4:
                    return Bit32Lib.m22508y(varargs);
                case 5:
                    return Bit32Lib.m22507z(varargs.checkint(1), varargs.checkint(2), varargs.optint(3, 1));
                case 6:
                    return Bit32Lib.m22517C(varargs.checkint(1), varargs.checkint(2), varargs.checkint(3), varargs.optint(4, 1));
                default:
                    return LuaValue.NIL;
            }
        }
    }

    /* renamed from: t */
    public static Varargs m22513t(Varargs varargs) {
        int i = -1;
        for (int i2 = 1; i2 <= varargs.narg(); i2++) {
            i &= varargs.checkint(i2);
        }
        return m22512u(i);
    }

    /* renamed from: u */
    public static LuaValue m22512u(int i) {
        return i < 0 ? LuaValue.valueOf(i & 4294967295L) : LuaValue.valueOf(i);
    }

    /* renamed from: v */
    public static Varargs m22511v(Varargs varargs) {
        return m22512u(varargs.checkint(1) ^ (-1));
    }

    /* renamed from: w */
    public static Varargs m22510w(Varargs varargs) {
        int i = 0;
        for (int i2 = 1; i2 <= varargs.narg(); i2++) {
            i |= varargs.checkint(i2);
        }
        return m22512u(i);
    }

    /* renamed from: x */
    public static Varargs m22509x(Varargs varargs) {
        int i = -1;
        for (int i2 = 1; i2 <= varargs.narg(); i2++) {
            i &= varargs.checkint(i2);
        }
        return LuaValue.valueOf(i != 0);
    }

    /* renamed from: y */
    public static Varargs m22508y(Varargs varargs) {
        int i = 0;
        for (int i2 = 1; i2 <= varargs.narg(); i2++) {
            i ^= varargs.checkint(i2);
        }
        return m22512u(i);
    }

    /* renamed from: A */
    public static LuaValue m22519A(int i, int i2) {
        if (i2 < 0) {
            return m22516D(i, -i2);
        }
        int i3 = i2 & 31;
        return m22512u((i >>> (32 - i3)) | (i << i3));
    }

    /* renamed from: B */
    public static LuaValue m22518B(int i, int i2) {
        if (i2 < 32 && i2 > -32) {
            if (i2 >= 0) {
                return m22512u(i << i2);
            }
            return m22512u(i >>> (-i2));
        }
        return LuaValue.ZERO;
    }

    /* renamed from: C */
    public static LuaValue m22517C(int i, int i2, int i3, int i4) {
        if (i3 < 0) {
            LuaValue.argerror(3, "field cannot be negative");
        }
        if (i4 < 0) {
            LuaValue.argerror(4, "width must be postive");
        }
        if (i3 + i4 > 32) {
            LuaValue.error("trying to access non-existent bits");
        }
        int i5 = ((-1) >>> (32 - i4)) << i3;
        return m22512u((i & (i5 ^ (-1))) | ((i2 << i3) & i5));
    }

    /* renamed from: D */
    public static LuaValue m22516D(int i, int i2) {
        if (i2 < 0) {
            return m22519A(i, -i2);
        }
        int i3 = i2 & 31;
        return m22512u((i << (32 - i3)) | (i >>> i3));
    }

    /* renamed from: E */
    public static LuaValue m22515E(int i, int i2) {
        if (i2 < 32 && i2 > -32) {
            if (i2 >= 0) {
                return m22512u(i >>> i2);
            }
            return m22512u(i << (-i2));
        }
        return LuaValue.ZERO;
    }

    /* renamed from: s */
    public static LuaValue m22514s(int i, int i2) {
        if (i2 >= 0) {
            return m22512u(i >> i2);
        }
        return m22512u(i << (-i2));
    }

    /* renamed from: z */
    public static LuaValue m22507z(int i, int i2, int i3) {
        if (i2 < 0) {
            LuaValue.argerror(2, "field cannot be negative");
        }
        if (i3 < 0) {
            LuaValue.argerror(3, "width must be postive");
        }
        if (i2 + i3 > 32) {
            LuaValue.error("trying to access non-existent bits");
        }
        return m22512u((i >>> i2) & ((-1) >>> (32 - i3)));
    }

    @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        LuaTable luaTable = new LuaTable();
        m22463r(luaTable, Bit32LibV.class, new String[]{"band", "bnot", "bor", "btest", "bxor", "extract", "replace"});
        m22463r(luaTable, Bit32Lib2.class, new String[]{"arshift", "lrotate", "lshift", "rrotate", "rshift"});
        luaValue2.set("bit32", luaTable);
        if (!luaValue2.get("package").isnil()) {
            luaValue2.get("package").get("loaded").set("bit32", luaTable);
        }
        return luaTable;
    }
}
