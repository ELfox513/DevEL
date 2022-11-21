package com.prineside.luaj.compiler;

import com.prineside.luaj.LocVars;
import com.prineside.luaj.Lua;
import com.prineside.luaj.LuaError;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Prototype;
import com.prineside.luaj.Upvaldesc;
import com.prineside.luaj.compiler.LexState;
/* loaded from: classes2.dex */
public class Constants extends Lua {
    public static final int MAXSTACK = 150;

    /* renamed from: a */
    public static int m22741a(int i, int i2, int i3, int i4) {
        return ((i << 0) & 63) | ((i2 << 6) & Lua.MASK_A) | ((i3 << 23) & Lua.MASK_B) | ((i4 << 14) & Lua.MASK_C);
    }

    /* renamed from: b */
    public static int m22740b(int i, int i2, int i3) {
        return ((i << 0) & 63) | ((i2 << 6) & Lua.MASK_A) | ((i3 << 14) & Lua.MASK_Bx);
    }

    /* renamed from: c */
    public static int m22739c(int i, int i2) {
        return ((i << 0) & 63) | ((i2 << 6) & (-64));
    }

    /* renamed from: d */
    public static void m22738d(InstructionPtr instructionPtr, int i) {
        instructionPtr.m22630b(((i << 6) & Lua.MASK_A) | (instructionPtr.m22631a() & Lua.MASK_NOT_A));
    }

    /* renamed from: e */
    public static void m22737e(int[] iArr, int i, int i2) {
        iArr[i] = ((i2 << 6) & Lua.MASK_A) | (iArr[i] & Lua.MASK_NOT_A);
    }

    /* renamed from: f */
    public static void m22736f(InstructionPtr instructionPtr, int i) {
        instructionPtr.m22630b(((i << 23) & Lua.MASK_B) | (instructionPtr.m22631a() & Lua.MASK_NOT_B));
    }

    /* renamed from: g */
    public static void m22735g(InstructionPtr instructionPtr, int i) {
        instructionPtr.m22630b(((i << 14) & Lua.MASK_Bx) | (instructionPtr.m22631a() & Lua.MASK_NOT_Bx));
    }

    /* renamed from: h */
    public static void m22734h(InstructionPtr instructionPtr, int i) {
        instructionPtr.m22630b(((i << 14) & Lua.MASK_C) | (instructionPtr.m22631a() & Lua.MASK_NOT_C));
    }

    /* renamed from: i */
    public static void m22733i(InstructionPtr instructionPtr, int i) {
        m22735g(instructionPtr, i + Lua.MAXARG_sBx);
    }

    /* renamed from: j */
    public static void m22732j(InstructionPtr instructionPtr, int i) {
        instructionPtr.m22630b(((i << 0) & 63) | (instructionPtr.m22631a() & (-64)));
    }

    /* renamed from: k */
    public static void m22731k(boolean z) {
        if (!z) {
            throw new LuaError("compiler assert failed");
        }
    }

    /* renamed from: l */
    public static LexState.Labeldesc[] m22730l(LexState.Labeldesc[] labeldescArr, int i) {
        return labeldescArr == null ? new LexState.Labeldesc[2] : labeldescArr.length < i ? m22723s(labeldescArr, labeldescArr.length * 2) : labeldescArr;
    }

    /* renamed from: m */
    public static char[] m22729m(char[] cArr, int i) {
        char[] cArr2 = new char[i];
        if (cArr != null) {
            System.arraycopy(cArr, 0, cArr2, 0, Math.min(cArr.length, i));
        }
        return cArr2;
    }

    /* renamed from: n */
    public static int[] m22728n(int[] iArr, int i) {
        int[] iArr2 = new int[i];
        if (iArr != null) {
            System.arraycopy(iArr, 0, iArr2, 0, Math.min(iArr.length, i));
        }
        return iArr2;
    }

    /* renamed from: o */
    public static LocVars[] m22727o(LocVars[] locVarsArr, int i) {
        LocVars[] locVarsArr2 = new LocVars[i];
        if (locVarsArr != null) {
            System.arraycopy(locVarsArr, 0, locVarsArr2, 0, Math.min(locVarsArr.length, i));
        }
        return locVarsArr2;
    }

    /* renamed from: p */
    public static LuaValue[] m22726p(LuaValue[] luaValueArr, int i) {
        LuaValue[] luaValueArr2 = new LuaValue[i];
        if (luaValueArr != null) {
            System.arraycopy(luaValueArr, 0, luaValueArr2, 0, Math.min(luaValueArr.length, i));
        }
        return luaValueArr2;
    }

    /* renamed from: q */
    public static Prototype[] m22725q(Prototype[] prototypeArr, int i) {
        Prototype[] prototypeArr2 = new Prototype[i];
        if (prototypeArr != null) {
            System.arraycopy(prototypeArr, 0, prototypeArr2, 0, Math.min(prototypeArr.length, i));
        }
        return prototypeArr2;
    }

    /* renamed from: r */
    public static Upvaldesc[] m22724r(Upvaldesc[] upvaldescArr, int i) {
        Upvaldesc[] upvaldescArr2 = new Upvaldesc[i];
        if (upvaldescArr != null) {
            System.arraycopy(upvaldescArr, 0, upvaldescArr2, 0, Math.min(upvaldescArr.length, i));
        }
        return upvaldescArr2;
    }

    /* renamed from: s */
    public static LexState.Labeldesc[] m22723s(LexState.Labeldesc[] labeldescArr, int i) {
        LexState.Labeldesc[] labeldescArr2 = new LexState.Labeldesc[i];
        if (labeldescArr != null) {
            System.arraycopy(labeldescArr, 0, labeldescArr2, 0, Math.min(labeldescArr.length, i));
        }
        return labeldescArr2;
    }

    /* renamed from: t */
    public static LexState.Vardesc[] m22722t(LexState.Vardesc[] vardescArr, int i) {
        LexState.Vardesc[] vardescArr2 = new LexState.Vardesc[i];
        if (vardescArr != null) {
            System.arraycopy(vardescArr, 0, vardescArr2, 0, Math.min(vardescArr.length, i));
        }
        return vardescArr2;
    }
}
