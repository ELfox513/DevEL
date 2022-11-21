package com.prineside.luaj.compiler;

import com.prineside.luaj.LocVars;
import com.prineside.luaj.Lua;
import com.prineside.luaj.LuaDouble;
import com.prineside.luaj.LuaInteger;
import com.prineside.luaj.LuaString;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Prototype;
import com.prineside.luaj.Upvaldesc;
import com.prineside.luaj.compiler.LexState;
import com.prineside.luaj.compiler.LuaC;
import java.util.Hashtable;
/* loaded from: classes2.dex */
public class FuncState extends Constants {

    /* renamed from: a */
    public Prototype f8056a;

    /* renamed from: b */
    public Hashtable f8057b;

    /* renamed from: c */
    public FuncState f8058c;

    /* renamed from: d */
    public LexState f8059d;

    /* renamed from: e */
    public BlockCnt f8060e;

    /* renamed from: f */
    public int f8061f;

    /* renamed from: g */
    public int f8062g;

    /* renamed from: h */
    public IntPtr f8063h;

    /* renamed from: i */
    public int f8064i;

    /* renamed from: j */
    public int f8065j;

    /* renamed from: k */
    public int f8066k;

    /* renamed from: l */
    public short f8067l;

    /* renamed from: m */
    public short f8068m;

    /* renamed from: n */
    public short f8069n;

    /* renamed from: o */
    public short f8070o;

    /* loaded from: classes2.dex */
    public static class BlockCnt {

        /* renamed from: a */
        public BlockCnt f8071a;

        /* renamed from: b */
        public short f8072b;

        /* renamed from: c */
        public short f8073c;

        /* renamed from: d */
        public short f8074d;

        /* renamed from: e */
        public boolean f8075e;

        /* renamed from: f */
        public boolean f8076f;
    }

    /* renamed from: S0 */
    public static int m22674S0(FuncState funcState, LuaString luaString, LexState.expdesc expdescVar, int i) {
        if (funcState == null) {
            return 0;
        }
        int m22686M0 = funcState.m22686M0(luaString);
        if (m22686M0 >= 0) {
            expdescVar.m22524b(7, m22686M0);
            if (i == 0) {
                funcState.m22644t0(m22686M0);
            }
            return 7;
        }
        int m22688L0 = funcState.m22688L0(luaString);
        if (m22688L0 < 0) {
            if (m22674S0(funcState.f8058c, luaString, expdescVar, 0) == 0) {
                return 0;
            }
            m22688L0 = funcState.m22638w0(luaString, expdescVar);
        }
        expdescVar.m22524b(8, m22688L0);
        return 8;
    }

    /* renamed from: V0 */
    public static boolean m22668V0(int i) {
        return i == 6 || i == 7;
    }

    /* renamed from: A0 */
    public void m22710A0(int i, int i2) {
        boolean z;
        int i3 = i2 + 1;
        while (i != -1) {
            int m22658f0 = m22658f0(i);
            if (Lua.GET_OPCODE(this.f8056a.code[i]) == 23 && (Lua.GETARG_A(this.f8056a.code[i]) == 0 || Lua.GETARG_A(this.f8056a.code[i]) >= i3)) {
                z = true;
            } else {
                z = false;
            }
            Constants.m22731k(z);
            Constants.m22737e(this.f8056a.code, i, i3);
            i = m22658f0;
        }
    }

    /* renamed from: C0 */
    public void m22706C0(int i, int i2, int i3, int i4) {
        while (i != -1) {
            int m22658f0 = m22658f0(i);
            if (m22704D0(i, i3)) {
                m22664Z(i, i2);
            } else {
                m22664Z(i, i4);
            }
            i = m22658f0;
        }
    }

    /* renamed from: D */
    public int m22705D(int i, int i2, int i3) {
        return m22707C(i, i2, i3 + Lua.MAXARG_sBx);
    }

    /* renamed from: F0 */
    public void m22700F0(int i, LexState.expdesc expdescVar, LexState.expdesc expdescVar2, int i2) {
        boolean z = true;
        switch (i) {
            case 0:
                m22699G(13, expdescVar, expdescVar2, i2);
                return;
            case 1:
                m22699G(14, expdescVar, expdescVar2, i2);
                return;
            case 2:
                m22699G(15, expdescVar, expdescVar2, i2);
                return;
            case 3:
                m22699G(16, expdescVar, expdescVar2, i2);
                return;
            case 4:
                m22699G(17, expdescVar, expdescVar2, i2);
                return;
            case 5:
                m22699G(18, expdescVar, expdescVar2, i2);
                return;
            case 6:
                m22665Y(expdescVar2);
                if (expdescVar2.f8123a == 11 && Lua.GET_OPCODE(m22660d0(expdescVar2)) == 22) {
                    if (expdescVar.f8124b.f8131e != Lua.GETARG_B(m22660d0(expdescVar2)) - 1) {
                        z = false;
                    }
                    Constants.m22731k(z);
                    m22662b0(expdescVar);
                    Constants.m22736f(m22659e0(expdescVar2), expdescVar.f8124b.f8131e);
                    expdescVar.f8123a = 11;
                    expdescVar.f8124b.f8131e = expdescVar2.f8124b.f8131e;
                    return;
                }
                m22667W(expdescVar2);
                m22699G(22, expdescVar, expdescVar2, i2);
                return;
            case 7:
                m22697H(24, 0, expdescVar, expdescVar2);
                return;
            case 8:
                m22697H(24, 1, expdescVar, expdescVar2);
                return;
            case 9:
                m22697H(25, 1, expdescVar, expdescVar2);
                return;
            case 10:
                m22697H(26, 1, expdescVar, expdescVar2);
                return;
            case 11:
                m22697H(25, 0, expdescVar, expdescVar2);
                return;
            case 12:
                m22697H(26, 0, expdescVar, expdescVar2);
                return;
            case 13:
                if (expdescVar.f8125c.f8079a != -1) {
                    z = false;
                }
                Constants.m22731k(z);
                m22679Q(expdescVar2);
                m22691K(expdescVar2.f8126d, expdescVar.f8126d.f8079a);
                expdescVar.setvalue(expdescVar2);
                return;
            case 14:
                if (expdescVar.f8126d.f8079a != -1) {
                    z = false;
                }
                Constants.m22731k(z);
                m22679Q(expdescVar2);
                m22691K(expdescVar2.f8125c, expdescVar.f8125c.f8079a);
                expdescVar.setvalue(expdescVar2);
                return;
            default:
                Constants.m22731k(false);
                return;
        }
    }

    /* renamed from: H0 */
    public void m22696H0(int i) {
        while (i != -1) {
            m22704D0(i, 255);
            i = m22658f0(i);
        }
    }

    /* renamed from: K */
    public void m22691K(IntPtr intPtr, int i) {
        if (i == -1) {
            return;
        }
        int i2 = intPtr.f8079a;
        if (i2 == -1) {
            intPtr.f8079a = i;
            return;
        }
        while (true) {
            int m22658f0 = m22658f0(i2);
            if (m22658f0 != -1) {
                i2 = m22658f0;
            } else {
                m22664Z(i2, i);
                return;
            }
        }
    }

    /* renamed from: K0 */
    public void m22690K0(int i, int i2) {
        m22709B(31, i, i2 + 1, 0);
    }

    /* renamed from: O0 */
    public void m22682O0(int i, int i2, int i3) {
        int i4;
        boolean z;
        int i5 = ((i2 - 1) / 50) + 1;
        if (i3 == -1) {
            i4 = 0;
        } else {
            i4 = i3;
        }
        if (i3 != 0) {
            z = true;
        } else {
            z = false;
        }
        Constants.m22731k(z);
        if (i5 <= 511) {
            m22709B(36, i, i4, i5);
        } else {
            m22709B(36, i, i4, 0);
            m22711A(i5, this.f8059d.f8087c);
        }
        this.f8070o = (short) (i + 1);
    }

    /* renamed from: P0 */
    public void m22680P0(LexState.expdesc expdescVar) {
        m22676R0(expdescVar, -1);
    }

    /* renamed from: U0 */
    public int m22670U0(LuaString luaString) {
        return m22643u(luaString);
    }

    /* renamed from: a0 */
    public void m22663a0(int i) {
        this.f8056a.lineinfo[this.f8061f - 1] = i;
    }

    /* renamed from: d0 */
    public int m22660d0(LexState.expdesc expdescVar) {
        return this.f8056a.code[expdescVar.f8124b.f8131e];
    }

    /* renamed from: e0 */
    public InstructionPtr m22659e0(LexState.expdesc expdescVar) {
        return new InstructionPtr(this.f8056a.code, expdescVar.f8124b.f8131e);
    }

    /* renamed from: f0 */
    public int m22658f0(int i) {
        int GETARG_sBx = Lua.GETARG_sBx(this.f8056a.code[i]);
        if (GETARG_sBx == -1) {
            return -1;
        }
        return i + 1 + GETARG_sBx;
    }

    /* renamed from: h0 */
    public int m22656h0() {
        int i = this.f8061f;
        this.f8062g = i;
        return i;
    }

    /* renamed from: l0 */
    public boolean m22652l0(int i) {
        return i == 12 || i == 13;
    }

    /* renamed from: v */
    public int m22641v(boolean z) {
        return m22643u(z ? LuaValue.TRUE : LuaValue.FALSE);
    }

    /* renamed from: v0 */
    public boolean m22640v0(int i) {
        while (i != -1) {
            if (Lua.GET_OPCODE(m22657g0(i).m22631a()) != 28) {
                return true;
            }
            i = m22658f0(i);
        }
        return false;
    }

    /* renamed from: w */
    public void m22639w(int i, int i2, String str) {
        if (i > i2) {
            m22675S(i2, str);
        }
    }

    /* renamed from: y0 */
    public int m22634y0() {
        return m22643u(LuaValue.NIL);
    }

    /* renamed from: A */
    public int m22711A(int i, int i2) {
        Prototype prototype = this.f8056a;
        m22681P();
        int[] iArr = prototype.code;
        if (iArr == null || this.f8061f + 1 > iArr.length) {
            prototype.code = Constants.m22728n(iArr, (this.f8061f * 2) + 1);
        }
        int[] iArr2 = prototype.code;
        int i3 = this.f8061f;
        iArr2[i3] = i;
        int[] iArr3 = prototype.lineinfo;
        if (iArr3 == null || i3 + 1 > iArr3.length) {
            prototype.lineinfo = Constants.m22728n(iArr3, (i3 * 2) + 1);
        }
        int[] iArr4 = prototype.lineinfo;
        int i4 = this.f8061f;
        iArr4[i4] = i2;
        this.f8061f = i4 + 1;
        return i4;
    }

    /* renamed from: B0 */
    public void m22708B0(int i, int i2) {
        boolean z;
        int i3 = this.f8061f;
        if (i2 == i3) {
            m22702E0(i);
            return;
        }
        if (i2 < i3) {
            z = true;
        } else {
            z = false;
        }
        Constants.m22731k(z);
        m22706C0(i, i2, 255, i2);
    }

    /* renamed from: G0 */
    public void m22698G0(int i, LexState.expdesc expdescVar, int i2) {
        LexState.expdesc expdescVar2 = new LexState.expdesc();
        expdescVar2.m22524b(5, 0);
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    Constants.m22731k(false);
                    return;
                }
                m22671U(expdescVar);
                m22699G(21, expdescVar, expdescVar2, i2);
                return;
            }
            m22693J(expdescVar);
        } else if (expdescVar.m22523c()) {
            LexState.expdesc.C1446U c1446u = expdescVar.f8124b;
            c1446u.setNval(c1446u.nval().neg());
        } else {
            m22671U(expdescVar);
            m22699G(19, expdescVar, expdescVar2, i2);
        }
    }

    /* renamed from: I0 */
    public void m22694I0(int i) {
        this.f8059d.f8095k.f8105b -= this.f8068m - i;
        while (true) {
            short s = this.f8068m;
            if (s > i) {
                short s2 = (short) (s - 1);
                this.f8068m = s2;
                m22655i0(s2).endpc = this.f8061f;
            } else {
                return;
            }
        }
    }

    /* renamed from: L0 */
    public int m22688L0(LuaString luaString) {
        Upvaldesc[] upvaldescArr = this.f8056a.upvalues;
        for (int i = 0; i < this.f8069n; i++) {
            if (upvaldescArr[i].name.eq_b(luaString)) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: M0 */
    public int m22686M0(LuaString luaString) {
        for (int i = this.f8068m - 1; i >= 0; i--) {
            if (luaString.eq_b(m22655i0(i).varname)) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: N */
    public void m22685N(LexState.expdesc expdescVar) {
        if (expdescVar.f8123a != 6) {
            m22692J0(1);
            m22683O(expdescVar, this.f8070o - 1);
        }
    }

    /* renamed from: P */
    public void m22681P() {
        int i = this.f8063h.f8079a;
        int i2 = this.f8061f;
        m22706C0(i, i2, 255, i2);
        this.f8063h.f8079a = -1;
    }

    /* renamed from: Q */
    public void m22679Q(LexState.expdesc expdescVar) {
        int i = expdescVar.f8123a;
        int i2 = 6;
        if (i != 7) {
            if (i != 8) {
                if (i != 9) {
                    if (i == 12 || i == 13) {
                        m22678Q0(expdescVar);
                        return;
                    }
                    return;
                }
                m22661c0(expdescVar.f8124b.f8127a);
                LexState.expdesc.C1446U c1446u = expdescVar.f8124b;
                if (c1446u.f8129c == 7) {
                    m22661c0(c1446u.f8128b);
                    i2 = 7;
                }
                LexState.expdesc.C1446U c1446u2 = expdescVar.f8124b;
                c1446u2.f8131e = m22709B(i2, 0, c1446u2.f8128b, c1446u2.f8127a);
                expdescVar.f8123a = 11;
                return;
            }
            LexState.expdesc.C1446U c1446u3 = expdescVar.f8124b;
            c1446u3.f8131e = m22709B(5, 0, c1446u3.f8131e, 0);
            expdescVar.f8123a = 11;
            return;
        }
        expdescVar.f8123a = 6;
    }

    /* renamed from: Q0 */
    public void m22678Q0(LexState.expdesc expdescVar) {
        int i = expdescVar.f8123a;
        if (i == 12) {
            expdescVar.f8123a = 6;
            expdescVar.f8124b.f8131e = Lua.GETARG_A(m22660d0(expdescVar));
        } else if (i == 13) {
            Constants.m22736f(m22659e0(expdescVar), 2);
            expdescVar.f8123a = 11;
        }
    }

    /* renamed from: R */
    public void m22677R(BlockCnt blockCnt, boolean z) {
        blockCnt.f8076f = z;
        short s = this.f8068m;
        blockCnt.f8074d = s;
        LexState.Dyndata dyndata = this.f8059d.f8095k;
        blockCnt.f8072b = (short) dyndata.f8109f;
        blockCnt.f8073c = (short) dyndata.f8107d;
        boolean z2 = false;
        blockCnt.f8075e = false;
        blockCnt.f8071a = this.f8060e;
        this.f8060e = blockCnt;
        if (this.f8070o == s) {
            z2 = true;
        }
        Constants.m22731k(z2);
    }

    /* renamed from: R0 */
    public void m22676R0(LexState.expdesc expdescVar, int i) {
        int i2 = expdescVar.f8123a;
        if (i2 == 12) {
            Constants.m22734h(m22659e0(expdescVar), i + 1);
        } else if (i2 == 13) {
            Constants.m22736f(m22659e0(expdescVar), i + 1);
            Constants.m22738d(m22659e0(expdescVar), this.f8070o);
            m22692J0(1);
        }
    }

    /* renamed from: S */
    public void m22675S(int i, String str) {
        String pushfstring;
        if (this.f8056a.linedefined == 0) {
            LuaC.CompileState compileState = this.f8059d.f8091g;
            pushfstring = compileState.pushfstring("main function has more than " + i + " " + str);
        } else {
            LuaC.CompileState compileState2 = this.f8059d.f8091g;
            pushfstring = compileState2.pushfstring("function at line " + this.f8056a.linedefined + " has more than " + i + " " + str);
        }
        this.f8059d.m22530x0(pushfstring, 0);
    }

    /* renamed from: T0 */
    public void m22672T0(LexState.expdesc expdescVar, LexState.expdesc expdescVar2) {
        int i = expdescVar.f8123a;
        if (i != 7) {
            int i2 = 8;
            if (i != 8) {
                if (i != 9) {
                    Constants.m22731k(false);
                } else {
                    if (expdescVar.f8124b.f8129c == 7) {
                        i2 = 10;
                    }
                    int m22673T = m22673T(expdescVar2);
                    LexState.expdesc.C1446U c1446u = expdescVar.f8124b;
                    m22709B(i2, c1446u.f8128b, c1446u.f8127a, m22673T);
                }
            } else {
                m22709B(9, m22671U(expdescVar2), expdescVar.f8124b.f8131e, 0);
            }
            m22662b0(expdescVar2);
            return;
        }
        m22662b0(expdescVar2);
        m22666X(expdescVar2, expdescVar.f8124b.f8131e);
    }

    /* renamed from: V */
    public void m22669V(LexState.expdesc expdescVar) {
        if (expdescVar.f8123a != 8 || expdescVar.m22525a()) {
            m22671U(expdescVar);
        }
    }

    /* renamed from: Z */
    public void m22664Z(int i, int i2) {
        InstructionPtr instructionPtr = new InstructionPtr(this.f8056a.code, i);
        boolean z = true;
        int i3 = i2 - (i + 1);
        if (i2 == -1) {
            z = false;
        }
        Constants.m22731k(z);
        if (Math.abs(i3) > 131071) {
            this.f8059d.m22552m1("control structure too long");
        }
        Constants.m22733i(instructionPtr, i3);
    }

    /* renamed from: b0 */
    public void m22662b0(LexState.expdesc expdescVar) {
        if (expdescVar.f8123a == 6) {
            m22661c0(expdescVar.f8124b.f8131e);
        }
    }

    /* renamed from: g0 */
    public InstructionPtr m22657g0(int i) {
        InstructionPtr instructionPtr = new InstructionPtr(this.f8056a.code, i);
        if (i >= 1 && Lua.testTMode(Lua.GET_OPCODE(instructionPtr.f8077a[instructionPtr.f8078b - 1]))) {
            return new InstructionPtr(instructionPtr.f8077a, instructionPtr.f8078b - 1);
        }
        return instructionPtr;
    }

    /* renamed from: i0 */
    public LocVars m22655i0(int i) {
        boolean z;
        short s = this.f8059d.f8095k.f8104a[this.f8066k + i].f8122a;
        if (s < this.f8067l) {
            z = true;
        } else {
            z = false;
        }
        Constants.m22731k(z);
        return this.f8056a.locvars[s];
    }

    /* renamed from: m0 */
    public void m22651m0(LexState.expdesc expdescVar, LexState.expdesc expdescVar2) {
        boolean z;
        LexState.expdesc.C1446U c1446u = expdescVar.f8124b;
        c1446u.f8128b = (short) c1446u.f8131e;
        c1446u.f8127a = (short) m22673T(expdescVar2);
        int i = expdescVar.f8123a;
        int i2 = 8;
        if (i != 8 && !m22668V0(i)) {
            z = false;
        } else {
            z = true;
        }
        Constants.m22731k(z);
        LexState.expdesc.C1446U c1446u2 = expdescVar.f8124b;
        if (expdescVar.f8123a != 8) {
            i2 = 7;
        }
        c1446u2.f8129c = (short) i2;
        expdescVar.f8123a = 9;
    }

    /* renamed from: n0 */
    public void m22650n0(int i, LexState.expdesc expdescVar) {
        if (i != 13) {
            if (i != 14) {
                switch (i) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                        if (!expdescVar.m22523c()) {
                            m22673T(expdescVar);
                            return;
                        }
                        return;
                    case 6:
                        m22667W(expdescVar);
                        return;
                    default:
                        m22673T(expdescVar);
                        return;
                }
            }
            m22654j0(expdescVar);
            return;
        }
        m22653k0(expdescVar);
    }

    /* renamed from: o0 */
    public void m22649o0(LexState.expdesc expdescVar) {
        boolean z;
        InstructionPtr m22657g0 = m22657g0(expdescVar.f8124b.f8131e);
        int i = 1;
        if (Lua.testTMode(Lua.GET_OPCODE(m22657g0.m22631a())) && Lua.GET_OPCODE(m22657g0.m22631a()) != 28 && Lua.GET_OPCODE(m22657g0.m22631a()) != 27) {
            z = true;
        } else {
            z = false;
        }
        Constants.m22731k(z);
        if (Lua.GETARG_A(m22657g0.m22631a()) != 0) {
            i = 0;
        }
        Constants.m22738d(m22657g0, i);
    }

    /* renamed from: p0 */
    public int m22648p0() {
        IntPtr intPtr = this.f8063h;
        int i = intPtr.f8079a;
        intPtr.f8079a = -1;
        IntPtr intPtr2 = new IntPtr(m22705D(23, 0, -1));
        m22691K(intPtr2, i);
        return intPtr2.f8079a;
    }

    /* renamed from: q0 */
    public int m22647q0(LexState.expdesc expdescVar, int i) {
        if (expdescVar.f8123a == 11) {
            int m22660d0 = m22660d0(expdescVar);
            if (Lua.GET_OPCODE(m22660d0) == 20) {
                int i2 = 1;
                this.f8061f--;
                int GETARG_B = Lua.GETARG_B(m22660d0);
                if (i != 0) {
                    i2 = 0;
                }
                return m22689L(27, GETARG_B, 0, i2);
            }
        }
        m22685N(expdescVar);
        m22662b0(expdescVar);
        return m22689L(28, 255, expdescVar.f8124b.f8131e, i);
    }

    /* renamed from: r0 */
    public void m22646r0(LexState.ConsControl consControl) {
        if (consControl.f8103e == 0) {
            return;
        }
        if (m22652l0(consControl.f8099a.f8123a)) {
            m22680P0(consControl.f8099a);
            m22682O0(consControl.f8100b.f8124b.f8131e, consControl.f8102d, -1);
            consControl.f8102d--;
            return;
        }
        LexState.expdesc expdescVar = consControl.f8099a;
        if (expdescVar.f8123a != 0) {
            m22667W(expdescVar);
        }
        m22682O0(consControl.f8100b.f8124b.f8131e, consControl.f8102d, consControl.f8103e);
    }

    /* renamed from: s0 */
    public void m22645s0() {
        boolean z;
        BlockCnt blockCnt = this.f8060e;
        if (blockCnt.f8071a != null && blockCnt.f8075e) {
            int m22648p0 = m22648p0();
            m22710A0(m22648p0, blockCnt.f8074d);
            m22702E0(m22648p0);
        }
        if (blockCnt.f8076f) {
            this.f8059d.m22623D();
        }
        this.f8060e = blockCnt.f8071a;
        m22694I0(blockCnt.f8074d);
        if (blockCnt.f8074d == this.f8068m) {
            z = true;
        } else {
            z = false;
        }
        Constants.m22731k(z);
        this.f8070o = this.f8068m;
        LexState lexState = this.f8059d;
        LexState.Dyndata dyndata = lexState.f8095k;
        dyndata.f8109f = blockCnt.f8072b;
        if (blockCnt.f8071a != null) {
            m22642u0(blockCnt);
            return;
        }
        short s = blockCnt.f8073c;
        if (s < dyndata.f8107d) {
            lexState.m22542r1(dyndata.f8106c[s]);
        }
    }

    /* renamed from: t0 */
    public void m22644t0(int i) {
        BlockCnt blockCnt = this.f8060e;
        while (blockCnt.f8074d > i) {
            blockCnt = blockCnt.f8071a;
        }
        blockCnt.f8075e = true;
    }

    /* renamed from: u */
    public int m22643u(LuaValue luaValue) {
        Hashtable hashtable = this.f8057b;
        if (hashtable == null) {
            this.f8057b = new Hashtable();
        } else if (hashtable.containsKey(luaValue)) {
            return ((Integer) this.f8057b.get(luaValue)).intValue();
        }
        int i = this.f8064i;
        this.f8057b.put(luaValue, Integer.valueOf(i));
        Prototype prototype = this.f8056a;
        LuaValue[] luaValueArr = prototype.f8017k;
        if (luaValueArr == null || this.f8064i + 1 >= luaValueArr.length) {
            prototype.f8017k = Constants.m22726p(luaValueArr, (this.f8064i * 2) + 1);
        }
        LuaValue[] luaValueArr2 = prototype.f8017k;
        int i2 = this.f8064i;
        this.f8064i = i2 + 1;
        luaValueArr2[i2] = luaValue;
        return i;
    }

    /* renamed from: u0 */
    public void m22642u0(BlockCnt blockCnt) {
        int i = blockCnt.f8073c;
        LexState.Labeldesc[] labeldescArr = this.f8059d.f8095k.f8106c;
        while (i < this.f8059d.f8095k.f8107d) {
            LexState.Labeldesc labeldesc = labeldescArr[i];
            short s = labeldesc.f8115d;
            short s2 = blockCnt.f8074d;
            if (s > s2) {
                if (blockCnt.f8075e) {
                    m22710A0(labeldesc.f8113b, s2);
                }
                labeldesc.f8115d = blockCnt.f8074d;
            }
            if (!this.f8059d.m22577a0(i)) {
                i++;
            }
        }
    }

    /* renamed from: w0 */
    public int m22638w0(LuaString luaString, LexState.expdesc expdescVar) {
        int i;
        boolean z = true;
        m22639w(this.f8069n + 1, 255, "upvalues");
        Prototype prototype = this.f8056a;
        Upvaldesc[] upvaldescArr = prototype.upvalues;
        if (upvaldescArr == null || this.f8069n + 1 > upvaldescArr.length) {
            short s = this.f8069n;
            if (s > 0) {
                i = s * 2;
            } else {
                i = 1;
            }
            prototype.upvalues = Constants.m22724r(upvaldescArr, i);
        }
        Upvaldesc[] upvaldescArr2 = this.f8056a.upvalues;
        short s2 = this.f8069n;
        if (expdescVar.f8123a != 7) {
            z = false;
        }
        upvaldescArr2[s2] = new Upvaldesc(luaString, z, expdescVar.f8124b.f8131e);
        short s3 = this.f8069n;
        this.f8069n = (short) (s3 + 1);
        return s3;
    }

    /* renamed from: x */
    public void m22637x(LexState.Labeldesc[] labeldescArr, int i, LuaString luaString) {
        for (int i2 = this.f8060e.f8072b; i2 < i; i2++) {
            if (luaString.eq_b(labeldescArr[i2].f8112a)) {
                LuaC.CompileState compileState = this.f8059d.f8091g;
                this.f8059d.m22580Y0(compileState.pushfstring("label '" + luaString + " already defined on line " + labeldescArr[i2].f8114c));
            }
        }
    }

    /* renamed from: x0 */
    public void m22636x0(int i, int i2) {
        int i3 = (i + i2) - 1;
        int i4 = this.f8061f;
        if (i4 > this.f8062g && i4 > 0) {
            int i5 = this.f8056a.code[i4 - 1];
            if (Lua.GET_OPCODE(i5) == 4) {
                int GETARG_A = Lua.GETARG_A(i5);
                int GETARG_B = Lua.GETARG_B(i5) + GETARG_A;
                if ((GETARG_A <= i && i <= GETARG_B + 1) || (i <= GETARG_A && GETARG_A <= i3 + 1)) {
                    if (GETARG_A < i) {
                        i = GETARG_A;
                    }
                    if (GETARG_B > i3) {
                        i3 = GETARG_B;
                    }
                    InstructionPtr instructionPtr = new InstructionPtr(this.f8056a.code, this.f8061f - 1);
                    Constants.m22738d(instructionPtr, i);
                    Constants.m22736f(instructionPtr, i3 - i);
                    return;
                }
            }
        }
        m22709B(4, i, i2 - 1, 0);
    }

    /* renamed from: y */
    public void m22635y(int i) {
        int i2 = this.f8070o + i;
        if (i2 > this.f8056a.maxstacksize) {
            if (i2 >= 150) {
                this.f8059d.m22552m1("function or expression too complex");
            }
            this.f8056a.maxstacksize = i2;
        }
    }

    /* renamed from: z */
    public void m22633z(LexState.ConsControl consControl) {
        LexState.expdesc expdescVar = consControl.f8099a;
        if (expdescVar.f8123a == 0) {
            return;
        }
        m22667W(expdescVar);
        consControl.f8099a.f8123a = 0;
        int i = consControl.f8103e;
        if (i == 50) {
            m22682O0(consControl.f8100b.f8124b.f8131e, consControl.f8102d, i);
            consControl.f8103e = 0;
        }
    }

    /* renamed from: z0 */
    public int m22632z0(LuaValue luaValue) {
        if (luaValue instanceof LuaDouble) {
            double d = luaValue.todouble();
            int i = (int) d;
            if (d == i) {
                luaValue = LuaInteger.valueOf(i);
            }
        }
        return m22643u(luaValue);
    }

    /* renamed from: B */
    public int m22709B(int i, int i2, int i3, int i4) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        if (Lua.getOpMode(i) == 0) {
            z = true;
        } else {
            z = false;
        }
        Constants.m22731k(z);
        if (Lua.getBMode(i) == 0 && i3 != 0) {
            z2 = false;
        } else {
            z2 = true;
        }
        Constants.m22731k(z2);
        if (Lua.getCMode(i) == 0 && i4 != 0) {
            z3 = false;
        }
        Constants.m22731k(z3);
        return m22711A(Constants.m22741a(i, i2, i3, i4), this.f8059d.f8087c);
    }

    /* renamed from: C */
    public int m22707C(int i, int i2, int i3) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        if (Lua.getOpMode(i) != 1 && Lua.getOpMode(i) != 2) {
            z = false;
        } else {
            z = true;
        }
        Constants.m22731k(z);
        if (Lua.getCMode(i) == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        Constants.m22731k(z2);
        if (i3 >= 0 && i3 <= 262143) {
            z3 = true;
        }
        Constants.m22731k(z3);
        return m22711A(Constants.m22740b(i, i2, i3), this.f8059d.f8087c);
    }

    /* renamed from: D0 */
    public boolean m22704D0(int i, int i2) {
        InstructionPtr m22657g0 = m22657g0(i);
        if (Lua.GET_OPCODE(m22657g0.m22631a()) != 28) {
            return false;
        }
        if (i2 != 255 && i2 != Lua.GETARG_B(m22657g0.m22631a())) {
            Constants.m22738d(m22657g0, i2);
            return true;
        }
        m22657g0.m22630b(Constants.m22741a(27, Lua.GETARG_B(m22657g0.m22631a()), 0, Lua.GETARG_C(m22657g0.m22631a())));
        return true;
    }

    /* renamed from: E */
    public int m22703E(int i, int i2) {
        if (i2 <= 262143) {
            return m22707C(1, i, i2);
        }
        int m22707C = m22707C(2, i, 0);
        m22695I(i2);
        return m22707C;
    }

    /* renamed from: E0 */
    public void m22702E0(int i) {
        m22656h0();
        m22691K(this.f8063h, i);
    }

    /* renamed from: F */
    public int m22701F(int i, int i2, int i3) {
        m22656h0();
        return m22709B(3, i, i2, i3);
    }

    /* renamed from: G */
    public void m22699G(int i, LexState.expdesc expdescVar, LexState.expdesc expdescVar2, int i2) {
        int i3;
        if (m22687M(i, expdescVar, expdescVar2)) {
            return;
        }
        if (i != 19 && i != 21) {
            i3 = m22673T(expdescVar2);
        } else {
            i3 = 0;
        }
        int m22673T = m22673T(expdescVar);
        if (m22673T > i3) {
            m22662b0(expdescVar);
            m22662b0(expdescVar2);
        } else {
            m22662b0(expdescVar2);
            m22662b0(expdescVar);
        }
        expdescVar.f8124b.f8131e = m22709B(i, 0, m22673T, i3);
        expdescVar.f8123a = 11;
        m22663a0(i2);
    }

    /* renamed from: H */
    public void m22697H(int i, int i2, LexState.expdesc expdescVar, LexState.expdesc expdescVar2) {
        int m22673T = m22673T(expdescVar);
        int m22673T2 = m22673T(expdescVar2);
        m22662b0(expdescVar2);
        m22662b0(expdescVar);
        if (i2 == 0 && i != 24) {
            i2 = 1;
            m22673T2 = m22673T;
            m22673T = m22673T2;
        }
        expdescVar.f8124b.f8131e = m22689L(i, i2, m22673T, m22673T2);
        expdescVar.f8123a = 10;
    }

    /* renamed from: I */
    public int m22695I(int i) {
        boolean z;
        if (i <= 67108863) {
            z = true;
        } else {
            z = false;
        }
        Constants.m22731k(z);
        return m22711A(Constants.m22739c(39, i), this.f8059d.f8087c);
    }

    /* renamed from: J */
    public void m22693J(LexState.expdesc expdescVar) {
        m22679Q(expdescVar);
        int i = expdescVar.f8123a;
        if (i != 10) {
            if (i != 11) {
                switch (i) {
                    case 1:
                    case 3:
                        expdescVar.f8123a = 2;
                        break;
                    case 2:
                    case 4:
                    case 5:
                        expdescVar.f8123a = 3;
                        break;
                    case 6:
                        break;
                    default:
                        Constants.m22731k(false);
                        break;
                }
            }
            m22685N(expdescVar);
            m22662b0(expdescVar);
            LexState.expdesc.C1446U c1446u = expdescVar.f8124b;
            c1446u.f8131e = m22709B(20, 0, c1446u.f8131e, 0);
            expdescVar.f8123a = 11;
        } else {
            m22649o0(expdescVar);
        }
        IntPtr intPtr = expdescVar.f8126d;
        int i2 = intPtr.f8079a;
        IntPtr intPtr2 = expdescVar.f8125c;
        intPtr.f8079a = intPtr2.f8079a;
        intPtr2.f8079a = i2;
        m22696H0(intPtr.f8079a);
        m22696H0(expdescVar.f8125c.f8079a);
    }

    /* renamed from: J0 */
    public void m22692J0(int i) {
        m22635y(i);
        this.f8070o = (short) (this.f8070o + i);
    }

    /* renamed from: L */
    public int m22689L(int i, int i2, int i3, int i4) {
        m22709B(i, i2, i3, i4);
        return m22648p0();
    }

    /* renamed from: M */
    public boolean m22687M(int i, LexState.expdesc expdescVar, LexState.expdesc expdescVar2) {
        LuaValue add;
        if (!expdescVar.m22523c() || !expdescVar2.m22523c()) {
            return false;
        }
        if ((i == 16 || i == 17) && expdescVar2.f8124b.nval().eq_b(LuaValue.ZERO)) {
            return false;
        }
        LuaValue nval = expdescVar.f8124b.nval();
        LuaValue nval2 = expdescVar2.f8124b.nval();
        switch (i) {
            case 13:
                add = nval.add(nval2);
                break;
            case 14:
                add = nval.sub(nval2);
                break;
            case 15:
                add = nval.mul(nval2);
                break;
            case 16:
                add = nval.div(nval2);
                break;
            case 17:
                add = nval.mod(nval2);
                break;
            case 18:
                add = nval.pow(nval2);
                break;
            case 19:
                add = nval.neg();
                break;
            case 20:
            default:
                Constants.m22731k(false);
                add = null;
                break;
            case 21:
                return false;
        }
        if (Double.isNaN(add.todouble())) {
            return false;
        }
        expdescVar.f8124b.setNval(add);
        return true;
    }

    /* renamed from: N0 */
    public void m22684N0(LexState.expdesc expdescVar, LexState.expdesc expdescVar2) {
        m22671U(expdescVar);
        m22662b0(expdescVar);
        short s = this.f8070o;
        m22692J0(2);
        m22709B(12, s, expdescVar.f8124b.f8131e, m22673T(expdescVar2));
        m22662b0(expdescVar2);
        expdescVar.f8124b.f8131e = s;
        expdescVar.f8123a = 6;
    }

    /* renamed from: O */
    public void m22683O(LexState.expdesc expdescVar, int i) {
        m22679Q(expdescVar);
        int i2 = expdescVar.f8123a;
        if (i2 != 11) {
            int i3 = 1;
            r1 = true;
            boolean z = true;
            switch (i2) {
                case 1:
                    m22636x0(i, 1);
                    break;
                case 2:
                case 3:
                    if (i2 != 2) {
                        i3 = 0;
                    }
                    m22709B(3, i, i3, 0);
                    break;
                case 4:
                    m22703E(i, expdescVar.f8124b.f8131e);
                    break;
                case 5:
                    m22703E(i, m22632z0(expdescVar.f8124b.nval()));
                    break;
                case 6:
                    int i4 = expdescVar.f8124b.f8131e;
                    if (i != i4) {
                        m22709B(0, i, i4, 0);
                        break;
                    }
                    break;
                default:
                    if (i2 != 0 && i2 != 10) {
                        z = false;
                    }
                    Constants.m22731k(z);
                    return;
            }
        } else {
            Constants.m22738d(m22659e0(expdescVar), i);
        }
        expdescVar.f8124b.f8131e = i;
        expdescVar.f8123a = 6;
    }

    /* renamed from: T */
    public int m22673T(LexState.expdesc expdescVar) {
        int m22641v;
        m22665Y(expdescVar);
        int i = expdescVar.f8123a;
        boolean z = true;
        if (i != 1 && i != 2 && i != 3) {
            if (i != 4) {
                if (i == 5) {
                    LexState.expdesc.C1446U c1446u = expdescVar.f8124b;
                    c1446u.f8131e = m22632z0(c1446u.nval());
                    expdescVar.f8123a = 4;
                }
            }
            int i2 = expdescVar.f8124b.f8131e;
            if (i2 <= 255) {
                return Lua.RKASK(i2);
            }
        } else if (this.f8064i <= 255) {
            LexState.expdesc.C1446U c1446u2 = expdescVar.f8124b;
            if (i == 1) {
                m22641v = m22634y0();
            } else {
                if (i != 2) {
                    z = false;
                }
                m22641v = m22641v(z);
            }
            c1446u2.f8131e = m22641v;
            expdescVar.f8123a = 4;
            return Lua.RKASK(expdescVar.f8124b.f8131e);
        }
        return m22671U(expdescVar);
    }

    /* renamed from: U */
    public int m22671U(LexState.expdesc expdescVar) {
        m22679Q(expdescVar);
        if (expdescVar.f8123a == 6) {
            if (!expdescVar.m22525a()) {
                return expdescVar.f8124b.f8131e;
            }
            int i = expdescVar.f8124b.f8131e;
            if (i >= this.f8068m) {
                m22666X(expdescVar, i);
                return expdescVar.f8124b.f8131e;
            }
        }
        m22667W(expdescVar);
        return expdescVar.f8124b.f8131e;
    }

    /* renamed from: W */
    public void m22667W(LexState.expdesc expdescVar) {
        m22679Q(expdescVar);
        m22662b0(expdescVar);
        m22692J0(1);
        m22666X(expdescVar, this.f8070o - 1);
    }

    /* renamed from: X */
    public void m22666X(LexState.expdesc expdescVar, int i) {
        int m22648p0;
        int m22701F;
        int m22701F2;
        m22683O(expdescVar, i);
        if (expdescVar.f8123a == 10) {
            m22691K(expdescVar.f8125c, expdescVar.f8124b.f8131e);
        }
        if (expdescVar.m22525a()) {
            if (!m22640v0(expdescVar.f8125c.f8079a) && !m22640v0(expdescVar.f8126d.f8079a)) {
                m22701F2 = -1;
                m22701F = -1;
            } else {
                if (expdescVar.f8123a == 10) {
                    m22648p0 = -1;
                } else {
                    m22648p0 = m22648p0();
                }
                m22701F = m22701F(i, 0, 1);
                m22701F2 = m22701F(i, 1, 0);
                m22702E0(m22648p0);
            }
            int m22656h0 = m22656h0();
            m22706C0(expdescVar.f8126d.f8079a, m22656h0, i, m22701F);
            m22706C0(expdescVar.f8125c.f8079a, m22656h0, i, m22701F2);
        }
        IntPtr intPtr = expdescVar.f8126d;
        expdescVar.f8125c.f8079a = -1;
        intPtr.f8079a = -1;
        expdescVar.f8124b.f8131e = i;
        expdescVar.f8123a = 6;
    }

    /* renamed from: Y */
    public void m22665Y(LexState.expdesc expdescVar) {
        if (expdescVar.m22525a()) {
            m22671U(expdescVar);
        } else {
            m22679Q(expdescVar);
        }
    }

    /* renamed from: c0 */
    public void m22661c0(int i) {
        if (!Lua.ISK(i) && i >= this.f8068m) {
            boolean z = true;
            short s = (short) (this.f8070o - 1);
            this.f8070o = s;
            if (i != s) {
                z = false;
            }
            Constants.m22731k(z);
        }
    }

    /* renamed from: j0 */
    public void m22654j0(LexState.expdesc expdescVar) {
        int i;
        m22679Q(expdescVar);
        int i2 = expdescVar.f8123a;
        if (i2 != 1 && i2 != 3) {
            if (i2 != 10) {
                i = m22647q0(expdescVar, 1);
            } else {
                i = expdescVar.f8124b.f8131e;
            }
        } else {
            i = -1;
        }
        m22691K(expdescVar.f8125c, i);
        m22702E0(expdescVar.f8126d.f8079a);
        expdescVar.f8126d.f8079a = -1;
    }

    /* renamed from: k0 */
    public void m22653k0(LexState.expdesc expdescVar) {
        int i;
        m22679Q(expdescVar);
        int i2 = expdescVar.f8123a;
        if (i2 != 2) {
            if (i2 != 10) {
                if (i2 != 4 && i2 != 5) {
                    i = m22647q0(expdescVar, 0);
                }
            } else {
                m22649o0(expdescVar);
                i = expdescVar.f8124b.f8131e;
            }
            m22691K(expdescVar.f8126d, i);
            m22702E0(expdescVar.f8125c.f8079a);
            expdescVar.f8125c.f8079a = -1;
        }
        i = -1;
        m22691K(expdescVar.f8126d, i);
        m22702E0(expdescVar.f8125c.f8079a);
        expdescVar.f8125c.f8079a = -1;
    }
}
