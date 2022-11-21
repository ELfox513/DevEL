package com.prineside.luaj.compiler;

import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.utils.compression.lzma.Base;
import com.prineside.luaj.LocVars;
import com.prineside.luaj.Lua;
import com.prineside.luaj.LuaError;
import com.prineside.luaj.LuaInteger;
import com.prineside.luaj.LuaString;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Prototype;
import com.prineside.luaj.compiler.FuncState;
import com.prineside.luaj.compiler.LuaC;
import com.prineside.luaj.lib.MathLib;
import java.io.IOException;
import java.io.InputStream;
import java.util.Hashtable;
/* loaded from: classes2.dex */
public class LexState extends Constants {

    /* renamed from: o */
    public static final String[] f8080o = {"(for control)", "(for generator)", "(for index)", "(for limit)", "(for state)", "(for step)"};

    /* renamed from: p */
    public static final Hashtable f8081p = new Hashtable();

    /* renamed from: q */
    public static final String[] f8082q;

    /* renamed from: r */
    public static final Hashtable f8083r;

    /* renamed from: s */
    public static Priority[] f8084s;

    /* renamed from: a */
    public int f8085a;

    /* renamed from: b */
    public int f8086b;

    /* renamed from: c */
    public int f8087c;

    /* renamed from: f */
    public FuncState f8090f;

    /* renamed from: g */
    public LuaC.CompileState f8091g;

    /* renamed from: h */
    public InputStream f8092h;

    /* renamed from: j */
    public int f8094j;

    /* renamed from: l */
    public LuaString f8096l;

    /* renamed from: m */
    public LuaString f8097m;

    /* renamed from: n */
    public byte f8098n;

    /* renamed from: d */
    public final Token f8088d = new Token();

    /* renamed from: e */
    public final Token f8089e = new Token();

    /* renamed from: k */
    public Dyndata f8095k = new Dyndata();

    /* renamed from: i */
    public char[] f8093i = new char[32];

    /* loaded from: classes2.dex */
    public static class ConsControl {

        /* renamed from: a */
        public expdesc f8099a = new expdesc();

        /* renamed from: b */
        public expdesc f8100b;

        /* renamed from: c */
        public int f8101c;

        /* renamed from: d */
        public int f8102d;

        /* renamed from: e */
        public int f8103e;
    }

    /* loaded from: classes2.dex */
    public static class Dyndata {

        /* renamed from: a */
        public Vardesc[] f8104a;

        /* renamed from: c */
        public Labeldesc[] f8106c;

        /* renamed from: e */
        public Labeldesc[] f8108e;

        /* renamed from: b */
        public int f8105b = 0;

        /* renamed from: d */
        public int f8107d = 0;

        /* renamed from: f */
        public int f8109f = 0;
    }

    /* loaded from: classes2.dex */
    public static class LHS_assign {

        /* renamed from: a */
        public LHS_assign f8110a;

        /* renamed from: b */
        public expdesc f8111b = new expdesc();
    }

    /* loaded from: classes2.dex */
    public static class SemInfo {

        /* renamed from: a */
        public LuaValue f8118a;

        /* renamed from: b */
        public LuaString f8119b;

        public SemInfo() {
        }
    }

    /* loaded from: classes2.dex */
    public static class Token {

        /* renamed from: a */
        public int f8120a;

        /* renamed from: b */
        public final SemInfo f8121b;

        public Token() {
            this.f8121b = new SemInfo();
        }

        public void set(Token token) {
            this.f8120a = token.f8120a;
            SemInfo semInfo = this.f8121b;
            SemInfo semInfo2 = token.f8121b;
            semInfo.f8118a = semInfo2.f8118a;
            semInfo.f8119b = semInfo2.f8119b;
        }
    }

    /* loaded from: classes2.dex */
    public static class expdesc {

        /* renamed from: a */
        public int f8123a;

        /* renamed from: b */
        public final C1446U f8124b = new C1446U();

        /* renamed from: c */
        public final IntPtr f8125c = new IntPtr();

        /* renamed from: d */
        public final IntPtr f8126d = new IntPtr();

        /* renamed from: com.prineside.luaj.compiler.LexState$expdesc$U */
        /* loaded from: classes2.dex */
        public static class C1446U {

            /* renamed from: a */
            public short f8127a;

            /* renamed from: b */
            public short f8128b;

            /* renamed from: c */
            public short f8129c;

            /* renamed from: d */
            public LuaValue f8130d;

            /* renamed from: e */
            public int f8131e;

            public LuaValue nval() {
                LuaValue luaValue = this.f8130d;
                return luaValue == null ? LuaInteger.valueOf(this.f8131e) : luaValue;
            }

            public void setNval(LuaValue luaValue) {
                this.f8130d = luaValue;
            }
        }

        /* renamed from: a */
        public boolean m22525a() {
            return this.f8125c.f8079a != this.f8126d.f8079a;
        }

        /* renamed from: c */
        public boolean m22523c() {
            return this.f8123a == 5 && this.f8125c.f8079a == -1 && this.f8126d.f8079a == -1;
        }

        /* renamed from: b */
        public void m22524b(int i, int i2) {
            this.f8126d.f8079a = -1;
            this.f8125c.f8079a = -1;
            this.f8123a = i;
            this.f8124b.f8131e = i2;
        }

        public void setvalue(expdesc expdescVar) {
            this.f8126d.f8079a = expdescVar.f8126d.f8079a;
            this.f8123a = expdescVar.f8123a;
            this.f8125c.f8079a = expdescVar.f8125c.f8079a;
            this.f8124b.f8130d = expdescVar.f8124b.f8130d;
            C1446U c1446u = this.f8124b;
            C1446U c1446u2 = expdescVar.f8124b;
            c1446u.f8127a = c1446u2.f8127a;
            c1446u.f8128b = c1446u2.f8128b;
            c1446u.f8129c = c1446u2.f8129c;
            c1446u.f8131e = c1446u2.f8131e;
        }
    }

    static {
        int i = 0;
        while (true) {
            String[] strArr = f8080o;
            if (i >= strArr.length) {
                break;
            }
            f8081p.put(strArr[i], Boolean.TRUE);
            i++;
        }
        f8082q = new String[]{"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while", "..", "...", "==", ">=", "<=", "~=", "::", "<eos>", "<number>", "<name>", "<string>", "<eof>"};
        f8083r = new Hashtable();
        int i2 = 0;
        for (int i3 = 22; i2 < i3; i3 = 22) {
            f8083r.put(LuaValue.valueOf(f8082q[i2]), Integer.valueOf(i2 + 257));
            i2++;
        }
        f8084s = new Priority[]{new Priority(6, 6), new Priority(6, 6), new Priority(7, 7), new Priority(7, 7), new Priority(7, 7), new Priority(10, 9), new Priority(5, 4), new Priority(3, 3), new Priority(3, 3), new Priority(3, 3), new Priority(3, 3), new Priority(3, 3), new Priority(3, 3), new Priority(2, 2), new Priority(1, 1)};
    }

    /* renamed from: D0 */
    public static int m22622D0(int i) {
        int i2 = 0;
        while (i >= 16) {
            i = (i + 1) >> 1;
            i2++;
        }
        if (i < 8) {
            return i;
        }
        return (i - 8) | ((i2 + 1) << 3);
    }

    public static boolean isReservedKeyword(String str) {
        return f8081p.containsKey(str);
    }

    /* renamed from: r0 */
    public static boolean m22543r0(int i) {
        return i < 32;
    }

    /* renamed from: u */
    public static final String m22537u(Object obj) {
        return m22535v(String.valueOf(obj));
    }

    /* renamed from: v */
    public static final String m22535v(String str) {
        return "'" + str + "'";
    }

    /* renamed from: B */
    public boolean m22627B(boolean z) {
        int i = this.f8088d.f8120a;
        if (i != 277) {
            if (i != 286) {
                switch (i) {
                    case 260:
                    case 261:
                    case 262:
                        break;
                    default:
                        return false;
                }
            }
            return true;
        }
        return z;
    }

    /* renamed from: F */
    public void m22619F(boolean z, String str) {
        if (z) {
            return;
        }
        m22552m1(str);
    }

    /* renamed from: G0 */
    public int m22616G0(Labeldesc[] labeldescArr, int i, LuaString luaString, int i2, int i3) {
        labeldescArr[i] = new Labeldesc(luaString, i3, i2, this.f8090f.f8068m);
        return i;
    }

    /* renamed from: H0 */
    public LuaString m22614H0(String str) {
        return this.f8091g.newTString(str);
    }

    /* renamed from: I0 */
    public LuaString m22612I0(char[] cArr, int i, int i2) {
        return this.f8091g.newTString(new String(cArr, i, i2));
    }

    /* renamed from: J */
    public void m22611J(expdesc expdescVar) {
        m22601O(expdescVar, m22560i1());
    }

    /* renamed from: O */
    public void m22601O(expdesc expdescVar, LuaString luaString) {
        expdescVar.m22524b(4, this.f8090f.m22670U0(luaString));
    }

    /* renamed from: R */
    public boolean m22595R() {
        int i = this.f8085a;
        return i == 10 || i == 13;
    }

    /* renamed from: T */
    public void m22591T(int i) {
        LuaC.CompileState compileState = this.f8091g;
        m22552m1(compileState.pushfstring(m22535v(m22546p1(i)) + " expected"));
    }

    /* renamed from: W */
    public void m22585W(expdesc expdescVar) {
        m22556k1(expdescVar, 0);
    }

    /* renamed from: g1 */
    public void m22564g1() {
        while (!m22627B(true)) {
            if (this.f8088d.f8120a == 274) {
                m22566f1();
                return;
            }
            m22566f1();
        }
    }

    /* renamed from: i0 */
    public int m22561i0(int i) {
        if (i != 37) {
            if (i != 45) {
                if (i != 47) {
                    if (i != 60) {
                        if (i != 62) {
                            if (i != 94) {
                                if (i != 257) {
                                    if (i != 272) {
                                        if (i != 279) {
                                            if (i != 42) {
                                                if (i != 43) {
                                                    switch (i) {
                                                        case 281:
                                                            return 8;
                                                        case 282:
                                                            return 12;
                                                        case 283:
                                                            return 10;
                                                        case 284:
                                                            return 7;
                                                        default:
                                                            return 15;
                                                    }
                                                }
                                                return 0;
                                            }
                                            return 2;
                                        }
                                        return 6;
                                    }
                                    return 14;
                                }
                                return 13;
                            }
                            return 5;
                        }
                        return 11;
                    }
                    return 9;
                }
                return 3;
            }
            return 1;
        }
        return 4;
    }

    /* renamed from: j0 */
    public int m22559j0(int i) {
        if (i != 35) {
            if (i != 45) {
                return i != 271 ? 3 : 1;
            }
            return 0;
        }
        return 2;
    }

    /* renamed from: j1 */
    public LuaValue m22558j1(String str, SemInfo semInfo) {
        double d;
        int i;
        char c;
        char[] charArray = str.toCharArray();
        int i2 = 0;
        int i3 = 0;
        while (i3 < charArray.length && m22539t0(charArray[i3])) {
            i3++;
        }
        double d2 = 1.0d;
        if (i3 < charArray.length && charArray[i3] == '-') {
            d2 = -1.0d;
            i3++;
        }
        if (i3 + 2 >= charArray.length) {
            return LuaValue.ZERO;
        }
        int i4 = i3 + 1;
        if (charArray[i3] != '0') {
            return LuaValue.ZERO;
        }
        char c2 = charArray[i4];
        if (c2 != 'x' && c2 != 'X') {
            return LuaValue.ZERO;
        }
        boolean z = true;
        int i5 = i4 + 1;
        double d3 = 0.0d;
        while (true) {
            d = 16.0d;
            if (i5 >= charArray.length || !m22536u0(charArray[i5])) {
                break;
            }
            double m22553m0 = m22553m0(charArray[i5]);
            Double.isNaN(m22553m0);
            d3 = (d3 * 16.0d) + m22553m0;
            i5++;
        }
        if (i5 < charArray.length && charArray[i5] == '.') {
            i5++;
            i = 0;
            while (i5 < charArray.length && m22536u0(charArray[i5])) {
                double d4 = d3 * d;
                double m22553m02 = m22553m0(charArray[i5]);
                Double.isNaN(m22553m02);
                d3 = d4 + m22553m02;
                i -= 4;
                i5++;
                d = 16.0d;
            }
        } else {
            i = 0;
        }
        if (i5 < charArray.length && ((c = charArray[i5]) == 'p' || c == 'P')) {
            int i6 = i5 + 1;
            if (i6 < charArray.length && charArray[i6] == '-') {
                i6++;
            } else {
                z = false;
            }
            while (i6 < charArray.length && m22541s0(charArray[i6])) {
                i2 = ((i2 * 10) + charArray[i6]) - 48;
                i6++;
            }
            if (z) {
                i2 = -i2;
            }
            i += i2;
        }
        return LuaValue.valueOf(d2 * d3 * MathLib.dpow_d(2.0d, i));
    }

    /* renamed from: l0 */
    public boolean m22555l0(int i) {
        return i == 12 || i == 13;
    }

    /* renamed from: m0 */
    public int m22553m0(int i) {
        return i <= 57 ? i - 48 : i <= 70 ? (i + 10) - 65 : (i + 10) - 97;
    }

    /* renamed from: m1 */
    public void m22552m1(String str) {
        m22530x0(str, this.f8088d.f8120a);
    }

    /* renamed from: p0 */
    public final boolean m22547p0(int i) {
        return (i >= 48 && i <= 57) || (i >= 97 && i <= 122) || ((i >= 65 && i <= 90) || i == 95);
    }

    /* renamed from: q0 */
    public final boolean m22545q0(int i) {
        return (i >= 97 && i <= 122) || (i >= 65 && i <= 90);
    }

    /* renamed from: s0 */
    public final boolean m22541s0(int i) {
        return i >= 48 && i <= 57;
    }

    /* renamed from: t0 */
    public final boolean m22539t0(int i) {
        return i >= 0 && i <= 32;
    }

    /* renamed from: u0 */
    public final boolean m22536u0(int i) {
        return (i >= 48 && i <= 57) || (i >= 97 && i <= 102) || (i >= 65 && i <= 70);
    }

    /* renamed from: w0 */
    public void m22532w0() {
        LuaC.CompileState compileState = this.f8091g;
        compileState.f8132a--;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0127, code lost:
        m22596Q0(r1, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x012a, code lost:
        return 289;
     */
    /* renamed from: z0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m22526z0(com.prineside.luaj.compiler.LexState.SemInfo r7) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.luaj.compiler.LexState.m22526z0(com.prineside.luaj.compiler.LexState$SemInfo):int");
    }

    /* loaded from: classes2.dex */
    public static class Labeldesc {

        /* renamed from: a */
        public LuaString f8112a;

        /* renamed from: b */
        public int f8113b;

        /* renamed from: c */
        public int f8114c;

        /* renamed from: d */
        public short f8115d;

        public Labeldesc(LuaString luaString, int i, int i2, short s) {
            this.f8112a = luaString;
            this.f8113b = i;
            this.f8114c = i2;
            this.f8115d = s;
        }
    }

    /* loaded from: classes2.dex */
    public static class Priority {

        /* renamed from: a */
        public final byte f8116a;

        /* renamed from: b */
        public final byte f8117b;

        public Priority(int i, int i2) {
            this.f8116a = (byte) i;
            this.f8117b = (byte) i2;
        }
    }

    /* loaded from: classes2.dex */
    public static class Vardesc {

        /* renamed from: a */
        public final short f8122a;

        public Vardesc(int i) {
            this.f8122a = (short) i;
        }
    }

    /* renamed from: A */
    public void m22629A() {
        FuncState funcState = this.f8090f;
        funcState.m22677R(new FuncState.BlockCnt(), false);
        m22564g1();
        funcState.m22645s0();
    }

    /* renamed from: A0 */
    public void m22628A0() {
        expdesc expdescVar = new expdesc();
        FuncState funcState = this.f8090f;
        m22620E0(m22560i1());
        m22529y(1);
        m22625C(expdescVar, false, this.f8086b);
        funcState.m22655i0(funcState.f8068m - 1).startpc = funcState.f8061f;
    }

    /* renamed from: B0 */
    public void m22626B0() {
        expdesc expdescVar = new expdesc();
        int i = 0;
        int i2 = 0;
        do {
            m22620E0(m22560i1());
            i2++;
        } while (m22548o1(44));
        if (m22548o1(61)) {
            i = m22587V(expdescVar);
        } else {
            expdescVar.f8123a = 0;
        }
        m22531x(i2, i, expdescVar);
        m22529y(i2);
    }

    /* renamed from: C */
    public void m22625C(expdesc expdescVar, boolean z, int i) {
        FuncState funcState = new FuncState();
        FuncState.BlockCnt blockCnt = new FuncState.BlockCnt();
        Prototype m22533w = m22533w();
        funcState.f8056a = m22533w;
        m22533w.linedefined = i;
        m22606L0(funcState, blockCnt);
        m22609K(40);
        if (z) {
            m22618F0("self");
            m22529y(1);
        }
        m22604M0();
        m22609K(41);
        m22564g1();
        funcState.f8056a.lastlinedefined = this.f8086b;
        m22615H(262, 265, i);
        m22603N(expdescVar);
        m22607L();
    }

    /* renamed from: C0 */
    public void m22624C0() {
        boolean z;
        if (this.f8089e.f8120a == 286) {
            z = true;
        } else {
            z = false;
        }
        Constants.m22731k(z);
        Token token = this.f8089e;
        token.f8120a = m22526z0(token.f8121b);
    }

    /* renamed from: D */
    public void m22623D() {
        LuaString valueOf = LuaString.valueOf("break");
        Dyndata dyndata = this.f8095k;
        Labeldesc[] m22730l = Constants.m22730l(dyndata.f8108e, dyndata.f8109f + 1);
        dyndata.f8108e = m22730l;
        Dyndata dyndata2 = this.f8095k;
        int i = dyndata2.f8109f;
        dyndata2.f8109f = i + 1;
        m22579Z(this.f8095k.f8108e[m22616G0(m22730l, i, valueOf, 0, this.f8090f.f8061f)]);
    }

    /* renamed from: E */
    public void m22621E(int i) {
        if (this.f8088d.f8120a != i) {
            m22591T(i);
        }
    }

    /* renamed from: G */
    public void m22617G(LHS_assign lHS_assign, expdesc expdescVar) {
        int i;
        FuncState funcState = this.f8090f;
        short s = funcState.f8070o;
        boolean z = false;
        while (lHS_assign != null) {
            expdesc expdescVar2 = lHS_assign.f8111b;
            if (expdescVar2.f8123a == 9) {
                expdesc.C1446U c1446u = expdescVar2.f8124b;
                short s2 = c1446u.f8129c;
                int i2 = expdescVar.f8123a;
                if (s2 == i2 && c1446u.f8128b == expdescVar.f8124b.f8131e) {
                    c1446u.f8129c = (short) 7;
                    c1446u.f8128b = s;
                    z = true;
                }
                if (i2 == 7 && c1446u.f8127a == expdescVar.f8124b.f8131e) {
                    c1446u.f8127a = s;
                    z = true;
                }
            }
            lHS_assign = lHS_assign.f8110a;
        }
        if (z) {
            if (expdescVar.f8123a == 7) {
                i = 0;
            } else {
                i = 5;
            }
            funcState.m22709B(i, s, expdescVar.f8124b.f8131e, 0);
            funcState.m22692J0(1);
        }
    }

    /* renamed from: I */
    public boolean m22613I(String str) {
        if (str.indexOf(this.f8085a) < 0) {
            return false;
        }
        m22582X0();
        return true;
    }

    /* renamed from: J0 */
    public void m22610J0() {
        this.f8087c = this.f8086b;
        Token token = this.f8089e;
        if (token.f8120a != 286) {
            this.f8088d.set(token);
            this.f8089e.f8120a = 286;
            return;
        }
        Token token2 = this.f8088d;
        token2.f8120a = m22526z0(token2.f8121b);
    }

    /* renamed from: K0 */
    public void m22608K0() {
        try {
            this.f8085a = this.f8092h.read();
        } catch (IOException e) {
            e.printStackTrace();
            this.f8085a = -1;
        }
    }

    /* renamed from: L */
    public void m22607L() {
        FuncState funcState = this.f8090f;
        Prototype prototype = funcState.f8056a;
        boolean z = false;
        funcState.m22690K0(0, 0);
        funcState.m22645s0();
        prototype.code = Constants.m22728n(prototype.code, funcState.f8061f);
        prototype.lineinfo = Constants.m22728n(prototype.lineinfo, funcState.f8061f);
        prototype.f8017k = Constants.m22726p(prototype.f8017k, funcState.f8064i);
        prototype.f8018p = Constants.m22725q(prototype.f8018p, funcState.f8065j);
        prototype.locvars = Constants.m22727o(prototype.locvars, funcState.f8067l);
        prototype.upvalues = Constants.m22724r(prototype.upvalues, funcState.f8069n);
        if (funcState.f8060e == null) {
            z = true;
        }
        Constants.m22731k(z);
        this.f8090f = funcState.f8058c;
    }

    /* renamed from: L0 */
    public void m22606L0(FuncState funcState, FuncState.BlockCnt blockCnt) {
        funcState.f8058c = this.f8090f;
        funcState.f8059d = this;
        this.f8090f = funcState;
        funcState.f8061f = 0;
        funcState.f8062g = -1;
        funcState.f8063h = new IntPtr(-1);
        funcState.f8070o = (short) 0;
        funcState.f8064i = 0;
        funcState.f8065j = 0;
        funcState.f8069n = (short) 0;
        funcState.f8067l = (short) 0;
        funcState.f8068m = (short) 0;
        funcState.f8066k = this.f8095k.f8105b;
        funcState.f8060e = null;
        Prototype prototype = funcState.f8056a;
        prototype.source = this.f8096l;
        prototype.maxstacksize = 2;
        funcState.m22677R(blockCnt, false);
    }

    /* renamed from: M */
    public void m22605M(int i, Labeldesc labeldesc) {
        FuncState funcState = this.f8090f;
        Labeldesc[] labeldescArr = this.f8095k.f8106c;
        Labeldesc labeldesc2 = labeldescArr[i];
        Constants.m22731k(labeldesc2.f8112a.eq_b(labeldesc.f8112a));
        short s = labeldesc2.f8115d;
        if (s < labeldesc.f8115d) {
            LuaString luaString = funcState.m22655i0(s).varname;
            m22580Y0(this.f8091g.pushfstring("<goto " + labeldesc2.f8112a + "> at line " + labeldesc2.f8114c + " jumps into the scope of local '" + luaString.tojstring() + "'"));
        }
        funcState.m22708B0(labeldesc2.f8113b, labeldesc.f8113b);
        System.arraycopy(labeldescArr, i + 1, labeldescArr, i, (this.f8095k.f8107d - i) - 1);
        Dyndata dyndata = this.f8095k;
        int i2 = dyndata.f8107d - 1;
        dyndata.f8107d = i2;
        labeldescArr[i2] = null;
    }

    /* renamed from: M0 */
    public void m22604M0() {
        FuncState funcState = this.f8090f;
        Prototype prototype = funcState.f8056a;
        int i = 0;
        prototype.is_vararg = 0;
        if (this.f8088d.f8120a != 41) {
            do {
                int i2 = this.f8088d.f8120a;
                if (i2 != 280) {
                    if (i2 != 288) {
                        m22552m1("<name> or " + m22537u("...") + " expected");
                    } else {
                        m22620E0(m22560i1());
                        i++;
                    }
                } else {
                    m22610J0();
                    prototype.is_vararg = 1;
                }
                if (prototype.is_vararg != 0) {
                    break;
                }
            } while (m22548o1(44));
        }
        m22529y(i);
        short s = funcState.f8068m;
        prototype.numparams = s;
        funcState.m22692J0(s);
    }

    /* renamed from: N */
    public void m22603N(expdesc expdescVar) {
        FuncState funcState = this.f8090f.f8058c;
        expdescVar.m22524b(11, funcState.m22707C(37, 0, funcState.f8065j - 1));
        funcState.m22667W(expdescVar);
    }

    /* renamed from: N0 */
    public void m22602N0(expdesc expdescVar) {
        int i = this.f8088d.f8120a;
        if (i != 40) {
            if (i != 288) {
                m22552m1("unexpected symbol " + this.f8088d.f8120a + " (" + ((char) this.f8088d.f8120a) + ")");
                return;
            }
            m22574b1(expdescVar);
            return;
        }
        int i2 = this.f8086b;
        m22610J0();
        m22585W(expdescVar);
        m22615H(41, 40, i2);
        this.f8090f.m22679Q(expdescVar);
    }

    /* renamed from: P */
    public int m22599P() {
        expdesc expdescVar = new expdesc();
        m22585W(expdescVar);
        if (expdescVar.f8123a == 1) {
            expdescVar.f8123a = 3;
        }
        this.f8090f.m22653k0(expdescVar);
        return expdescVar.f8126d.f8079a;
    }

    /* renamed from: P0 */
    public void m22598P0(SemInfo semInfo) {
        String str;
        int i = this.f8085a;
        Constants.m22731k(m22541s0(i));
        m22582X0();
        if (i == 48 && m22613I("Xx")) {
            str = "Pp";
        } else {
            str = "Ee";
        }
        while (true) {
            if (m22613I(str)) {
                m22613I("+-");
            }
            if (!m22536u0(this.f8085a) && this.f8085a != 46) {
                m22562h1(new String(this.f8093i, 0, this.f8094j), semInfo);
                return;
            }
            m22582X0();
        }
    }

    /* renamed from: Q */
    public void m22597Q(expdesc expdescVar) {
        boolean z;
        FuncState funcState = this.f8090f;
        int i = this.f8086b;
        int m22709B = funcState.m22709B(11, 0, 0, 0);
        ConsControl consControl = new ConsControl();
        consControl.f8103e = 0;
        consControl.f8101c = 0;
        consControl.f8102d = 0;
        consControl.f8100b = expdescVar;
        expdescVar.m22524b(11, m22709B);
        consControl.f8099a.m22524b(0, 0);
        funcState.m22667W(expdescVar);
        m22609K(123);
        while (true) {
            if (consControl.f8099a.f8123a != 0 && consControl.f8103e <= 0) {
                z = false;
            } else {
                z = true;
            }
            Constants.m22731k(z);
            if (this.f8088d.f8120a != 125) {
                funcState.m22633z(consControl);
                int i2 = this.f8088d.f8120a;
                if (i2 != 91) {
                    if (i2 != 288) {
                        m22528y0(consControl);
                    } else {
                        m22624C0();
                        if (this.f8089e.f8120a != 61) {
                            m22528y0(consControl);
                        } else {
                            m22592S0(consControl);
                        }
                    }
                } else {
                    m22592S0(consControl);
                }
                if (!m22548o1(44) && !m22548o1(59)) {
                    break;
                }
            } else {
                break;
            }
        }
        m22615H(125, 123, i);
        funcState.m22646r0(consControl);
        InstructionPtr instructionPtr = new InstructionPtr(funcState.f8056a.code, m22709B);
        Constants.m22736f(instructionPtr, m22622D0(consControl.f8102d));
        Constants.m22734h(instructionPtr, m22622D0(consControl.f8101c));
    }

    /* renamed from: S */
    public void m22593S() {
        LuaC.CompileState compileState = this.f8091g;
        int i = compileState.f8132a + 1;
        compileState.f8132a = i;
        if (i > 200) {
            m22530x0("chunk has too many syntax levels", 0);
        }
    }

    /* renamed from: S0 */
    public void m22592S0(ConsControl consControl) {
        FuncState funcState = this.f8090f;
        short s = funcState.f8070o;
        expdesc expdescVar = new expdesc();
        expdesc expdescVar2 = new expdesc();
        if (this.f8088d.f8120a == 288) {
            funcState.m22639w(consControl.f8101c, 2147483645, "items in a constructor");
            m22611J(expdescVar);
        } else {
            m22538t1(expdescVar);
        }
        consControl.f8101c++;
        m22609K(61);
        int m22673T = funcState.m22673T(expdescVar);
        m22585W(expdescVar2);
        funcState.m22709B(10, consControl.f8100b.f8124b.f8131e, m22673T, funcState.m22673T(expdescVar2));
        funcState.f8070o = s;
    }

    /* renamed from: T0 */
    public int m22590T0(LuaString luaString) {
        FuncState funcState = this.f8090f;
        Prototype prototype = funcState.f8056a;
        LocVars[] locVarsArr = prototype.locvars;
        if (locVarsArr == null || funcState.f8067l + 1 > locVarsArr.length) {
            prototype.locvars = Constants.m22727o(locVarsArr, (funcState.f8067l * 2) + 1);
        }
        prototype.locvars[funcState.f8067l] = new LocVars(luaString, 0, 0);
        short s = funcState.f8067l;
        funcState.f8067l = (short) (s + 1);
        return s;
    }

    /* renamed from: U */
    public int m22589U() {
        expdesc expdescVar = new expdesc();
        m22585W(expdescVar);
        int i = expdescVar.f8123a;
        this.f8090f.m22667W(expdescVar);
        return i;
    }

    /* renamed from: U0 */
    public void m22588U0(int i) {
        FuncState funcState = this.f8090f;
        int m22656h0 = funcState.m22656h0();
        FuncState.BlockCnt blockCnt = new FuncState.BlockCnt();
        FuncState.BlockCnt blockCnt2 = new FuncState.BlockCnt();
        funcState.m22677R(blockCnt, true);
        funcState.m22677R(blockCnt2, false);
        m22610J0();
        m22564g1();
        m22615H(277, Base.kMatchMaxLen, i);
        int m22599P = m22599P();
        if (blockCnt2.f8075e) {
            funcState.m22710A0(m22599P, blockCnt2.f8074d);
        }
        funcState.m22645s0();
        funcState.m22708B0(m22599P, m22656h0);
        funcState.m22645s0();
    }

    /* renamed from: V0 */
    public void m22586V0() {
        int i;
        FuncState funcState = this.f8090f;
        expdesc expdescVar = new expdesc();
        boolean z = true;
        int i2 = 0;
        if (!m22627B(true) && this.f8088d.f8120a != 59) {
            i = m22587V(expdescVar);
            if (m22555l0(expdescVar.f8123a)) {
                funcState.m22680P0(expdescVar);
                if (expdescVar.f8123a == 12 && i == 1) {
                    Constants.m22732j(funcState.m22659e0(expdescVar), 30);
                    if (Lua.GETARG_A(funcState.m22660d0(expdescVar)) != funcState.f8068m) {
                        z = false;
                    }
                    Constants.m22731k(z);
                }
                i2 = funcState.f8068m;
                i = -1;
            } else if (i == 1) {
                i2 = funcState.m22671U(expdescVar);
            } else {
                funcState.m22667W(expdescVar);
                short s = funcState.f8068m;
                if (i != funcState.f8070o - s) {
                    z = false;
                }
                Constants.m22731k(z);
                i2 = s;
            }
        } else {
            i = 0;
        }
        funcState.m22690K0(i2, i);
        m22548o1(59);
    }

    /* renamed from: W0 */
    public void m22584W0(int i) {
        char[] cArr = this.f8093i;
        if (cArr == null || this.f8094j + 1 > cArr.length) {
            this.f8093i = Constants.m22729m(cArr, (this.f8094j * 2) + 1);
        }
        char[] cArr2 = this.f8093i;
        int i2 = this.f8094j;
        this.f8094j = i2 + 1;
        cArr2[i2] = (char) i;
    }

    /* renamed from: X */
    public void m22583X() {
        boolean z;
        FuncState funcState = this.f8090f;
        LHS_assign lHS_assign = new LHS_assign();
        m22554l1(lHS_assign.f8111b);
        int i = this.f8088d.f8120a;
        if (i != 61 && i != 44) {
            if (lHS_assign.f8111b.f8123a == 12) {
                z = true;
            } else {
                z = false;
            }
            m22619F(z, "syntax error");
            Constants.m22734h(funcState.m22659e0(lHS_assign.f8111b), 1);
            return;
        }
        lHS_assign.f8110a = null;
        m22527z(lHS_assign, 1);
    }

    /* renamed from: X0 */
    public void m22582X0() {
        m22584W0(this.f8085a);
        m22608K0();
    }

    /* renamed from: Y */
    public void m22581Y(expdesc expdescVar) {
        FuncState funcState = this.f8090f;
        expdesc expdescVar2 = new expdesc();
        funcState.m22669V(expdescVar);
        m22610J0();
        m22611J(expdescVar2);
        funcState.m22651m0(expdescVar, expdescVar2);
    }

    /* renamed from: Y0 */
    public void m22580Y0(String str) {
        this.f8088d.f8120a = 0;
        m22552m1(str);
    }

    /* renamed from: Z */
    public void m22579Z(Labeldesc labeldesc) {
        Labeldesc[] labeldescArr = this.f8095k.f8106c;
        int i = this.f8090f.f8060e.f8073c;
        while (i < this.f8095k.f8107d) {
            if (labeldescArr[i].f8112a.eq_b(labeldesc.f8112a)) {
                m22605M(i, labeldesc);
            } else {
                i++;
            }
        }
    }

    /* renamed from: Z0 */
    public void m22578Z0(LuaC.CompileState compileState, int i, InputStream inputStream, LuaString luaString) {
        this.f8098n = (byte) 46;
        this.f8091g = compileState;
        this.f8089e.f8120a = 286;
        this.f8092h = inputStream;
        this.f8090f = null;
        this.f8086b = 1;
        this.f8087c = 1;
        this.f8096l = luaString;
        this.f8097m = LuaValue.ENV;
        this.f8094j = 0;
        this.f8085a = i;
        m22572c1();
    }

    /* renamed from: a0 */
    public boolean m22577a0(int i) {
        FuncState.BlockCnt blockCnt = this.f8090f.f8060e;
        Dyndata dyndata = this.f8095k;
        Labeldesc labeldesc = dyndata.f8106c[i];
        for (int i2 = blockCnt.f8072b; i2 < dyndata.f8109f; i2++) {
            Labeldesc labeldesc2 = dyndata.f8108e[i2];
            if (labeldesc2.f8112a.eq_b(labeldesc.f8112a)) {
                short s = labeldesc.f8115d;
                short s2 = labeldesc2.f8115d;
                if (s > s2 && (blockCnt.f8075e || dyndata.f8109f > blockCnt.f8072b)) {
                    this.f8090f.m22710A0(labeldesc.f8113b, s2);
                }
                m22605M(i, labeldesc2);
                return true;
            }
        }
        return false;
    }

    /* renamed from: a1 */
    public void m22576a1(expdesc expdescVar) {
        boolean z;
        Token token = this.f8088d;
        int i = token.f8120a;
        if (i != 123) {
            if (i != 263) {
                if (i != 265) {
                    if (i != 270) {
                        if (i != 276) {
                            if (i != 280) {
                                if (i != 287) {
                                    if (i != 289) {
                                        m22554l1(expdescVar);
                                        return;
                                    }
                                    m22601O(expdescVar, token.f8121b.f8119b);
                                } else {
                                    expdescVar.m22524b(5, 0);
                                    expdescVar.f8124b.setNval(this.f8088d.f8121b.f8118a);
                                }
                            } else {
                                FuncState funcState = this.f8090f;
                                if (funcState.f8056a.is_vararg != 0) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                m22619F(z, "cannot use " + m22537u("...") + " outside a vararg function");
                                expdescVar.m22524b(13, funcState.m22709B(38, 0, 1, 0));
                            }
                        } else {
                            expdescVar.m22524b(2, 0);
                        }
                    } else {
                        expdescVar.m22524b(1, 0);
                    }
                } else {
                    m22610J0();
                    m22625C(expdescVar, false, this.f8086b);
                    return;
                }
            } else {
                expdescVar.m22524b(3, 0);
            }
            m22610J0();
            return;
        }
        m22597Q(expdescVar);
    }

    /* renamed from: b0 */
    public void m22575b0(int i, int i2, int i3, boolean z) {
        int m22648p0;
        int m22705D;
        FuncState.BlockCnt blockCnt = new FuncState.BlockCnt();
        FuncState funcState = this.f8090f;
        m22529y(3);
        m22609K(259);
        if (z) {
            m22648p0 = funcState.m22705D(33, i, -1);
        } else {
            m22648p0 = funcState.m22648p0();
        }
        funcState.m22677R(blockCnt, false);
        m22529y(i3);
        funcState.m22692J0(i3);
        m22629A();
        funcState.m22645s0();
        funcState.m22702E0(m22648p0);
        if (z) {
            m22705D = funcState.m22705D(32, i, -1);
        } else {
            funcState.m22709B(34, i, 0, i3);
            funcState.m22663a0(i2);
            m22705D = funcState.m22705D(35, i + 2, -1);
        }
        funcState.m22708B0(m22705D, m22648p0 + 1);
        funcState.m22663a0(i2);
    }

    /* renamed from: c0 */
    public void m22573c0(LuaString luaString) {
        FuncState funcState = this.f8090f;
        expdesc expdescVar = new expdesc();
        short s = funcState.f8070o;
        m22618F0("(for generator)");
        m22618F0("(for state)");
        m22618F0("(for control)");
        m22620E0(luaString);
        int i = 4;
        while (m22548o1(44)) {
            m22620E0(m22560i1());
            i++;
        }
        m22609K(268);
        int i2 = this.f8086b;
        m22531x(3, m22587V(expdescVar), expdescVar);
        funcState.m22635y(3);
        m22575b0(s, i2, i - 3, false);
    }

    /* renamed from: c1 */
    public final void m22572c1() {
        if (this.f8085a == 35) {
            while (!m22595R() && this.f8085a != -1) {
                m22608K0();
            }
        }
    }

    /* renamed from: d0 */
    public void m22571d0(LuaString luaString, int i) {
        FuncState funcState = this.f8090f;
        short s = funcState.f8070o;
        m22618F0("(for index)");
        m22618F0("(for limit)");
        m22618F0("(for step)");
        m22620E0(luaString);
        m22609K(61);
        m22589U();
        m22609K(44);
        m22589U();
        if (m22548o1(44)) {
            m22589U();
        } else {
            funcState.m22703E(funcState.f8070o, funcState.m22632z0(LuaInteger.valueOf(1)));
            funcState.m22692J0(1);
        }
        m22575b0(s, i, 1, true);
    }

    /* renamed from: d1 */
    public int m22570d1() {
        boolean z;
        int i;
        int i2 = this.f8085a;
        int i3 = 0;
        if (i2 != 91 && i2 != 93) {
            z = false;
        } else {
            z = true;
        }
        Constants.m22731k(z);
        m22582X0();
        while (true) {
            i = this.f8085a;
            if (i != 61) {
                break;
            }
            m22582X0();
            i3++;
        }
        if (i != i2) {
            return (-i3) - 1;
        }
        return i3;
    }

    /* renamed from: e0 */
    public void m22569e0(int i) {
        FuncState funcState = this.f8090f;
        funcState.m22677R(new FuncState.BlockCnt(), true);
        m22610J0();
        LuaString m22560i1 = m22560i1();
        int i2 = this.f8088d.f8120a;
        if (i2 != 44) {
            if (i2 != 61) {
                if (i2 != 268) {
                    m22552m1(m22537u("=") + " or " + m22537u("in") + " expected");
                }
            } else {
                m22571d0(m22560i1, i);
            }
            m22615H(262, 264, i);
            funcState.m22645s0();
        }
        m22573c0(m22560i1);
        m22615H(262, 264, i);
        funcState.m22645s0();
    }

    /* renamed from: e1 */
    public void m22568e1() {
        while (true) {
            int i = this.f8088d.f8120a;
            if (i != 59 && i != 285) {
                return;
            }
            m22566f1();
        }
    }

    /* renamed from: f0 */
    public void m22567f0(expdesc expdescVar, int i) {
        int i2;
        FuncState funcState = this.f8090f;
        expdesc expdescVar2 = new expdesc();
        Token token = this.f8088d;
        int i3 = token.f8120a;
        boolean z = false;
        if (i3 != 40) {
            if (i3 != 123) {
                if (i3 != 289) {
                    m22552m1("function arguments expected");
                    return;
                } else {
                    m22601O(expdescVar2, token.f8121b.f8119b);
                    m22610J0();
                }
            } else {
                m22597Q(expdescVar2);
            }
        } else {
            m22610J0();
            if (this.f8088d.f8120a == 41) {
                expdescVar2.f8123a = 0;
            } else {
                m22587V(expdescVar2);
                funcState.m22680P0(expdescVar2);
            }
            m22615H(41, 40, i);
        }
        if (expdescVar.f8123a == 6) {
            z = true;
        }
        Constants.m22731k(z);
        int i4 = expdescVar.f8124b.f8131e;
        if (m22555l0(expdescVar2.f8123a)) {
            i2 = -1;
        } else {
            if (expdescVar2.f8123a != 0) {
                funcState.m22667W(expdescVar2);
            }
            i2 = funcState.f8070o - (i4 + 1);
        }
        expdescVar.m22524b(12, funcState.m22709B(29, i4, i2 + 1, 2));
        funcState.m22663a0(i);
        funcState.f8070o = (short) (i4 + 1);
    }

    /* renamed from: f1 */
    public void m22566f1() {
        boolean z;
        int i = this.f8086b;
        m22593S();
        int i2 = this.f8088d.f8120a;
        if (i2 != 59) {
            if (i2 != 269) {
                if (i2 != 278) {
                    if (i2 != 285) {
                        if (i2 != 258) {
                            if (i2 != 259) {
                                if (i2 != 273) {
                                    if (i2 != 274) {
                                        switch (i2) {
                                            case 264:
                                                m22569e0(i);
                                                break;
                                            case 265:
                                                m22563h0(i);
                                                break;
                                            case 266:
                                                break;
                                            case 267:
                                                m22551n0(i);
                                                break;
                                            default:
                                                m22583X();
                                                break;
                                        }
                                    } else {
                                        m22610J0();
                                        m22586V0();
                                    }
                                } else {
                                    m22588U0(i);
                                }
                            } else {
                                m22610J0();
                                m22629A();
                                m22615H(262, 259, i);
                            }
                        }
                        m22557k0(this.f8090f.m22648p0());
                    } else {
                        m22610J0();
                        m22534v0(m22560i1(), i);
                    }
                } else {
                    m22540s1(i);
                }
            } else {
                m22610J0();
                if (m22548o1(265)) {
                    m22628A0();
                } else {
                    m22626B0();
                }
            }
        } else {
            m22610J0();
        }
        FuncState funcState = this.f8090f;
        int i3 = funcState.f8056a.maxstacksize;
        short s = funcState.f8070o;
        if (i3 >= s && s >= funcState.f8068m) {
            z = true;
        } else {
            z = false;
        }
        Constants.m22731k(z);
        FuncState funcState2 = this.f8090f;
        funcState2.f8070o = funcState2.f8068m;
        m22532w0();
    }

    /* renamed from: h0 */
    public void m22563h0(int i) {
        expdesc expdescVar = new expdesc();
        expdesc expdescVar2 = new expdesc();
        m22610J0();
        m22625C(expdescVar2, m22565g0(expdescVar), i);
        this.f8090f.m22672T0(expdescVar, expdescVar2);
        this.f8090f.m22663a0(i);
    }

    /* renamed from: h1 */
    public boolean m22562h1(String str, SemInfo semInfo) {
        if (str.indexOf(110) < 0 && str.indexOf(78) < 0) {
            if (str.indexOf(120) < 0 && str.indexOf(88) < 0) {
                try {
                    semInfo.f8118a = LuaValue.valueOf(Double.parseDouble(str.trim()));
                    return true;
                } catch (NumberFormatException e) {
                    m22530x0("malformed number (" + e.getMessage() + ")", 287);
                    return true;
                }
            }
            semInfo.f8118a = m22558j1(str, semInfo);
            return true;
        }
        semInfo.f8118a = LuaValue.ZERO;
        return true;
    }

    /* renamed from: i1 */
    public LuaString m22560i1() {
        m22621E(288);
        LuaString luaString = this.f8088d.f8121b.f8119b;
        m22610J0();
        return luaString;
    }

    /* renamed from: k0 */
    public void m22557k0(int i) {
        LuaString valueOf;
        int i2 = this.f8086b;
        if (m22548o1(266)) {
            valueOf = m22560i1();
        } else {
            m22610J0();
            valueOf = LuaString.valueOf("break");
        }
        LuaString luaString = valueOf;
        Dyndata dyndata = this.f8095k;
        Labeldesc[] m22730l = Constants.m22730l(dyndata.f8106c, dyndata.f8107d + 1);
        dyndata.f8106c = m22730l;
        Dyndata dyndata2 = this.f8095k;
        int i3 = dyndata2.f8107d;
        dyndata2.f8107d = i3 + 1;
        m22577a0(m22616G0(m22730l, i3, luaString, i2, i));
    }

    /* renamed from: l1 */
    public void m22554l1(expdesc expdescVar) {
        int i = this.f8086b;
        m22602N0(expdescVar);
        while (true) {
            int i2 = this.f8088d.f8120a;
            if (i2 != 40) {
                if (i2 != 46) {
                    if (i2 != 58) {
                        if (i2 != 91) {
                            if (i2 != 123 && i2 != 289) {
                                return;
                            }
                        } else {
                            expdesc expdescVar2 = new expdesc();
                            this.f8090f.m22669V(expdescVar);
                            m22538t1(expdescVar2);
                            this.f8090f.m22651m0(expdescVar, expdescVar2);
                        }
                    } else {
                        expdesc expdescVar3 = new expdesc();
                        m22610J0();
                        m22611J(expdescVar3);
                        this.f8090f.m22684N0(expdescVar, expdescVar3);
                        m22567f0(expdescVar, i);
                    }
                } else {
                    m22581Y(expdescVar);
                }
            }
            this.f8090f.m22667W(expdescVar);
            m22567f0(expdescVar, i);
        }
    }

    public void mainfunc(FuncState funcState) {
        m22606L0(funcState, new FuncState.BlockCnt());
        this.f8090f.f8056a.is_vararg = 1;
        expdesc expdescVar = new expdesc();
        expdescVar.m22524b(7, 0);
        this.f8090f.m22638w0(this.f8097m, expdescVar);
        m22610J0();
        m22564g1();
        m22621E(286);
        m22607L();
    }

    /* renamed from: n0 */
    public void m22551n0(int i) {
        IntPtr intPtr = new IntPtr(-1);
        m22550n1(intPtr);
        while (this.f8088d.f8120a == 261) {
            m22550n1(intPtr);
        }
        if (m22548o1(260)) {
            m22629A();
        }
        m22615H(262, 267, i);
        this.f8090f.m22702E0(intPtr.f8079a);
    }

    /* renamed from: n1 */
    public void m22550n1(IntPtr intPtr) {
        int m22648p0;
        expdesc expdescVar = new expdesc();
        FuncState.BlockCnt blockCnt = new FuncState.BlockCnt();
        m22610J0();
        m22585W(expdescVar);
        m22609K(275);
        int i = this.f8088d.f8120a;
        if (i != 266 && i != 258) {
            this.f8090f.m22653k0(expdescVar);
            this.f8090f.m22677R(blockCnt, false);
            m22648p0 = expdescVar.f8126d.f8079a;
        } else {
            this.f8090f.m22654j0(expdescVar);
            this.f8090f.m22677R(blockCnt, false);
            m22557k0(expdescVar.f8125c.f8079a);
            m22568e1();
            if (m22627B(false)) {
                this.f8090f.m22645s0();
                return;
            }
            m22648p0 = this.f8090f.m22648p0();
        }
        m22564g1();
        this.f8090f.m22645s0();
        int i2 = this.f8088d.f8120a;
        if (i2 == 260 || i2 == 261) {
            FuncState funcState = this.f8090f;
            funcState.m22691K(intPtr, funcState.m22648p0());
        }
        this.f8090f.m22702E0(m22648p0);
    }

    /* renamed from: o0 */
    public void m22549o0() {
        int i = this.f8085a;
        Constants.m22731k(m22595R());
        m22608K0();
        if (m22595R() && this.f8085a != i) {
            m22608K0();
        }
        int i2 = this.f8086b + 1;
        this.f8086b = i2;
        if (i2 >= 2147483645) {
            m22552m1("chunk has too many lines");
        }
    }

    /* renamed from: o1 */
    public boolean m22548o1(int i) {
        if (this.f8088d.f8120a == i) {
            m22610J0();
            return true;
        }
        return false;
    }

    /* renamed from: p1 */
    public String m22546p1(int i) {
        if (i < 257) {
            if (m22543r0(i)) {
                LuaC.CompileState compileState = this.f8091g;
                return compileState.pushfstring("char(" + i + ")");
            }
            return this.f8091g.pushfstring(String.valueOf((char) i));
        }
        return f8082q[i - 257];
    }

    /* renamed from: r1 */
    public void m22542r1(Labeldesc labeldesc) {
        String str;
        LuaC.CompileState compileState = this.f8091g;
        if (isReservedKeyword(labeldesc.f8112a.tojstring())) {
            str = "<" + labeldesc.f8112a + "> at line " + labeldesc.f8114c + " not inside a loop";
        } else {
            str = "no visible label '" + labeldesc.f8112a + "' for <goto> at line " + labeldesc.f8114c;
        }
        m22580Y0(compileState.pushfstring(str));
    }

    /* renamed from: s1 */
    public void m22540s1(int i) {
        FuncState funcState = this.f8090f;
        FuncState.BlockCnt blockCnt = new FuncState.BlockCnt();
        m22610J0();
        int m22656h0 = funcState.m22656h0();
        int m22599P = m22599P();
        funcState.m22677R(blockCnt, true);
        m22609K(259);
        m22629A();
        funcState.m22708B0(funcState.m22648p0(), m22656h0);
        m22615H(262, 278, i);
        funcState.m22645s0();
        funcState.m22702E0(m22599P);
    }

    /* renamed from: v0 */
    public void m22534v0(LuaString luaString, int i) {
        FuncState funcState = this.f8090f;
        Dyndata dyndata = this.f8095k;
        funcState.m22637x(dyndata.f8108e, dyndata.f8109f, luaString);
        m22609K(285);
        Dyndata dyndata2 = this.f8095k;
        Labeldesc[] m22730l = Constants.m22730l(dyndata2.f8108e, dyndata2.f8109f + 1);
        dyndata2.f8108e = m22730l;
        Dyndata dyndata3 = this.f8095k;
        int i2 = dyndata3.f8109f;
        dyndata3.f8109f = i2 + 1;
        int m22616G0 = m22616G0(m22730l, i2, luaString, i, this.f8090f.m22656h0());
        m22568e1();
        if (m22627B(false)) {
            this.f8095k.f8108e[m22616G0].f8115d = this.f8090f.f8060e.f8074d;
        }
        m22579Z(this.f8095k.f8108e[m22616G0]);
    }

    /* renamed from: w */
    public Prototype m22533w() {
        FuncState funcState = this.f8090f;
        Prototype prototype = funcState.f8056a;
        Prototype[] prototypeArr = prototype.f8018p;
        if (prototypeArr == null || funcState.f8065j >= prototypeArr.length) {
            prototype.f8018p = Constants.m22725q(prototypeArr, Math.max(1, funcState.f8065j * 2));
        }
        Prototype[] prototypeArr2 = prototype.f8018p;
        FuncState funcState2 = this.f8090f;
        int i = funcState2.f8065j;
        funcState2.f8065j = i + 1;
        Prototype prototype2 = new Prototype();
        prototypeArr2[i] = prototype2;
        return prototype2;
    }

    /* renamed from: x */
    public void m22531x(int i, int i2, expdesc expdescVar) {
        FuncState funcState = this.f8090f;
        int i3 = i - i2;
        if (m22555l0(expdescVar.f8123a)) {
            int i4 = i3 + 1;
            if (i4 < 0) {
                i4 = 0;
            }
            funcState.m22676R0(expdescVar, i4);
            if (i4 > 1) {
                funcState.m22692J0(i4 - 1);
                return;
            }
            return;
        }
        if (expdescVar.f8123a != 0) {
            funcState.m22667W(expdescVar);
        }
        if (i3 > 0) {
            short s = funcState.f8070o;
            funcState.m22692J0(i3);
            funcState.m22636x0(s, i3);
        }
    }

    /* renamed from: x0 */
    public void m22530x0(String str, int i) {
        String chunkid = Lua.chunkid(this.f8096l.tojstring());
        LuaC.CompileState compileState = this.f8091g;
        compileState.pushfstring(chunkid + ":" + this.f8086b + ": " + str);
        if (i != 0) {
            LuaC.CompileState compileState2 = this.f8091g;
            compileState2.pushfstring("syntax error: " + str + " near " + m22544q1(i));
        }
        throw new LuaError(chunkid + ":" + this.f8086b + ": " + str);
    }

    /* renamed from: y */
    public void m22529y(int i) {
        FuncState funcState = this.f8090f;
        funcState.f8068m = (short) (funcState.f8068m + i);
        while (i > 0) {
            funcState.m22655i0(funcState.f8068m - i).startpc = funcState.f8061f;
            i--;
        }
    }

    /* renamed from: y0 */
    public void m22528y0(ConsControl consControl) {
        m22585W(consControl.f8099a);
        this.f8090f.m22639w(consControl.f8102d, 2147483645, "items in a constructor");
        consControl.f8102d++;
        consControl.f8103e++;
    }

    /* renamed from: z */
    public void m22527z(LHS_assign lHS_assign, int i) {
        boolean z;
        expdesc expdescVar = new expdesc();
        int i2 = lHS_assign.f8111b.f8123a;
        if (7 <= i2 && i2 <= 9) {
            z = true;
        } else {
            z = false;
        }
        m22619F(z, "syntax error");
        if (m22548o1(44)) {
            LHS_assign lHS_assign2 = new LHS_assign();
            lHS_assign2.f8110a = lHS_assign;
            m22554l1(lHS_assign2.f8111b);
            expdesc expdescVar2 = lHS_assign2.f8111b;
            if (expdescVar2.f8123a != 9) {
                m22617G(lHS_assign, expdescVar2);
            }
            m22527z(lHS_assign2, i + 1);
        } else {
            m22609K(61);
            int m22587V = m22587V(expdescVar);
            if (m22587V != i) {
                m22531x(i, m22587V, expdescVar);
                if (m22587V > i) {
                    FuncState funcState = this.f8090f;
                    funcState.f8070o = (short) (funcState.f8070o - (m22587V - i));
                }
            } else {
                this.f8090f.m22678Q0(expdescVar);
                this.f8090f.m22672T0(lHS_assign.f8111b, expdescVar);
                return;
            }
        }
        expdescVar.m22524b(6, this.f8090f.f8070o - 1);
        this.f8090f.m22672T0(lHS_assign.f8111b, expdescVar);
    }

    public LexState(LuaC.CompileState compileState, InputStream inputStream) {
        this.f8092h = inputStream;
        this.f8091g = compileState;
    }

    /* renamed from: E0 */
    public void m22620E0(LuaString luaString) {
        int m22590T0 = m22590T0(luaString);
        this.f8090f.m22639w(this.f8095k.f8105b + 1, HttpStatus.SC_OK, "local variables");
        Dyndata dyndata = this.f8095k;
        Vardesc[] vardescArr = dyndata.f8104a;
        if (vardescArr == null || dyndata.f8105b + 1 > vardescArr.length) {
            dyndata.f8104a = Constants.m22722t(vardescArr, Math.max(1, dyndata.f8105b * 2));
        }
        Dyndata dyndata2 = this.f8095k;
        Vardesc[] vardescArr2 = dyndata2.f8104a;
        int i = dyndata2.f8105b;
        dyndata2.f8105b = i + 1;
        vardescArr2[i] = new Vardesc(m22590T0);
    }

    /* renamed from: F0 */
    public void m22618F0(String str) {
        m22620E0(m22614H0(str));
    }

    /* renamed from: H */
    public void m22615H(int i, int i2, int i3) {
        if (!m22548o1(i)) {
            if (i3 == this.f8086b) {
                m22591T(i);
                return;
            }
            LuaC.CompileState compileState = this.f8091g;
            m22552m1(compileState.pushfstring(m22535v(m22546p1(i)) + " expected (to close " + m22535v(m22546p1(i2)) + " at line " + i3 + ")"));
        }
    }

    /* renamed from: K */
    public void m22609K(int i) {
        m22621E(i);
        m22610J0();
    }

    /* renamed from: O0 */
    public void m22600O0(SemInfo semInfo, int i) {
        String str;
        m22582X0();
        if (m22595R()) {
            m22549o0();
        }
        boolean z = false;
        while (!z) {
            int i2 = this.f8085a;
            if (i2 != -1) {
                if (i2 != 10 && i2 != 13) {
                    if (i2 != 91) {
                        if (i2 != 93) {
                            if (semInfo != null) {
                                m22582X0();
                            } else {
                                m22608K0();
                            }
                        } else if (m22570d1() == i) {
                            m22582X0();
                            z = true;
                        }
                    } else if (m22570d1() == i) {
                        m22582X0();
                        if (i == 0) {
                            m22530x0("nesting of [[...]] is deprecated", 91);
                        }
                    }
                } else {
                    m22584W0(10);
                    m22549o0();
                    if (semInfo == null) {
                        this.f8094j = 0;
                    }
                }
            } else {
                if (semInfo != null) {
                    str = "unfinished long string";
                } else {
                    str = "unfinished long comment";
                }
                m22530x0(str, 286);
            }
        }
        if (semInfo != null) {
            int i3 = i + 2;
            semInfo.f8119b = this.f8091g.newTString(LuaString.valueOf(this.f8093i, i3, this.f8094j - (i3 * 2)));
        }
    }

    /* renamed from: Q0 */
    public void m22596Q0(int i, SemInfo semInfo) {
        m22582X0();
        while (true) {
            int i2 = this.f8085a;
            if (i2 != i) {
                if (i2 != -1) {
                    int i3 = 10;
                    if (i2 != 10 && i2 != 13) {
                        if (i2 != 92) {
                            m22582X0();
                        } else {
                            m22608K0();
                            int i4 = this.f8085a;
                            if (i4 != -1) {
                                if (i4 != 10 && i4 != 13) {
                                    if (i4 != 102) {
                                        if (i4 != 110) {
                                            if (i4 != 114) {
                                                if (i4 != 116) {
                                                    if (i4 != 118) {
                                                        if (i4 != 120) {
                                                            if (i4 != 122) {
                                                                if (i4 != 97) {
                                                                    if (i4 != 98) {
                                                                        if (!m22541s0(i4)) {
                                                                            m22582X0();
                                                                        } else {
                                                                            int i5 = 0;
                                                                            int i6 = 0;
                                                                            do {
                                                                                i5 = (i5 * 10) + (this.f8085a - 48);
                                                                                m22608K0();
                                                                                i6++;
                                                                                if (i6 >= 3) {
                                                                                    break;
                                                                                }
                                                                            } while (m22541s0(this.f8085a));
                                                                            if (i5 > 255) {
                                                                                m22530x0("escape sequence too large", 289);
                                                                            }
                                                                            m22584W0(i5);
                                                                        }
                                                                    } else {
                                                                        i3 = 8;
                                                                    }
                                                                } else {
                                                                    i3 = 7;
                                                                }
                                                            } else {
                                                                m22608K0();
                                                                while (m22539t0(this.f8085a)) {
                                                                    if (m22595R()) {
                                                                        m22549o0();
                                                                    } else {
                                                                        m22608K0();
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            i3 = m22594R0();
                                                        }
                                                    } else {
                                                        i3 = 11;
                                                    }
                                                } else {
                                                    i3 = 9;
                                                }
                                            } else {
                                                i3 = 13;
                                            }
                                        }
                                    } else {
                                        i3 = 12;
                                    }
                                    m22584W0(i3);
                                    m22608K0();
                                } else {
                                    m22584W0(10);
                                    m22549o0();
                                }
                            }
                        }
                    } else {
                        m22530x0("unfinished string", 289);
                    }
                } else {
                    m22530x0("unfinished string", 286);
                }
            } else {
                m22582X0();
                semInfo.f8119b = this.f8091g.newTString(LuaString.valueOf(this.f8093i, 1, this.f8094j - 2));
                return;
            }
        }
    }

    /* renamed from: R0 */
    public int m22594R0() {
        m22608K0();
        int i = this.f8085a;
        m22608K0();
        int i2 = this.f8085a;
        if (!m22536u0(i) || !m22536u0(i2)) {
            m22530x0("hexadecimal digit expected 'x" + ((char) i) + ((char) i2), 289);
        }
        return (m22553m0(i) << 4) + m22553m0(i2);
    }

    /* renamed from: V */
    public int m22587V(expdesc expdescVar) {
        m22585W(expdescVar);
        int i = 1;
        while (m22548o1(44)) {
            this.f8090f.m22667W(expdescVar);
            m22585W(expdescVar);
            i++;
        }
        return i;
    }

    /* renamed from: b1 */
    public void m22574b1(expdesc expdescVar) {
        LuaString m22560i1 = m22560i1();
        FuncState funcState = this.f8090f;
        boolean z = true;
        if (FuncState.m22674S0(funcState, m22560i1, expdescVar, 1) == 0) {
            expdesc expdescVar2 = new expdesc();
            FuncState.m22674S0(funcState, this.f8097m, expdescVar, 1);
            int i = expdescVar.f8123a;
            if (i != 7 && i != 8) {
                z = false;
            }
            Constants.m22731k(z);
            m22601O(expdescVar2, m22560i1);
            funcState.m22651m0(expdescVar, expdescVar2);
        }
    }

    /* renamed from: g0 */
    public boolean m22565g0(expdesc expdescVar) {
        int i;
        m22574b1(expdescVar);
        while (true) {
            i = this.f8088d.f8120a;
            if (i != 46) {
                break;
            }
            m22581Y(expdescVar);
        }
        if (i == 58) {
            m22581Y(expdescVar);
            return true;
        }
        return false;
    }

    /* renamed from: k1 */
    public int m22556k1(expdesc expdescVar, int i) {
        m22593S();
        int m22559j0 = m22559j0(this.f8088d.f8120a);
        if (m22559j0 != 3) {
            int i2 = this.f8086b;
            m22610J0();
            m22556k1(expdescVar, 8);
            this.f8090f.m22698G0(m22559j0, expdescVar, i2);
        } else {
            m22576a1(expdescVar);
        }
        int m22561i0 = m22561i0(this.f8088d.f8120a);
        while (m22561i0 != 15 && f8084s[m22561i0].f8116a > i) {
            expdesc expdescVar2 = new expdesc();
            int i3 = this.f8086b;
            m22610J0();
            this.f8090f.m22650n0(m22561i0, expdescVar);
            int m22556k1 = m22556k1(expdescVar2, f8084s[m22561i0].f8117b);
            this.f8090f.m22700F0(m22561i0, expdescVar, expdescVar2, i3);
            m22561i0 = m22556k1;
        }
        m22532w0();
        return m22561i0;
    }

    /* renamed from: q1 */
    public String m22544q1(int i) {
        switch (i) {
            case 287:
            case 288:
            case 289:
                return new String(this.f8093i, 0, this.f8094j);
            default:
                return m22546p1(i);
        }
    }

    /* renamed from: t1 */
    public void m22538t1(expdesc expdescVar) {
        m22610J0();
        m22585W(expdescVar);
        this.f8090f.m22665Y(expdescVar);
        m22609K(93);
    }
}
