package com.prineside.luaj.parser;

import com.prineside.luaj.LuaString;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.ast.Block;
import com.prineside.luaj.ast.Chunk;
import com.prineside.luaj.ast.Exp;
import com.prineside.luaj.ast.FuncArgs;
import com.prineside.luaj.ast.FuncBody;
import com.prineside.luaj.ast.FuncName;
import com.prineside.luaj.ast.Name;
import com.prineside.luaj.ast.ParList;
import com.prineside.luaj.ast.Stat;
import com.prineside.luaj.ast.Str;
import com.prineside.luaj.ast.SyntaxElement;
import com.prineside.luaj.ast.TableConstructor;
import com.prineside.luaj.ast.TableField;
import java.io.InputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.bytebuddy.jar.asm.Opcodes;
/* loaded from: classes2.dex */
public class LuaParser implements LuaParserConstants {

    /* renamed from: q */
    public static int[] f8319q;

    /* renamed from: r */
    public static int[] f8320r;

    /* renamed from: s */
    public static int[] f8321s;

    /* renamed from: a */
    public SimpleCharStream f8322a;

    /* renamed from: b */
    public int f8323b;

    /* renamed from: c */
    public Token f8324c;

    /* renamed from: d */
    public Token f8325d;

    /* renamed from: e */
    public int f8326e;

    /* renamed from: f */
    public int f8327f;

    /* renamed from: g */
    public final int[] f8328g;

    /* renamed from: h */
    public final JJCalls[] f8329h;

    /* renamed from: i */
    public boolean f8330i;

    /* renamed from: j */
    public int f8331j;
    public Token jj_nt;

    /* renamed from: k */
    public final LookaheadSuccess f8332k;

    /* renamed from: l */
    public List f8333l;

    /* renamed from: m */
    public int[] f8334m;

    /* renamed from: n */
    public int f8335n;

    /* renamed from: o */
    public int[] f8336o;

    /* renamed from: p */
    public int f8337p;
    public Token token;
    public LuaParserTokenManager token_source;

    /* loaded from: classes2.dex */
    public static final class JJCalls {

        /* renamed from: a */
        public int f8338a;

        /* renamed from: b */
        public Token f8339b;

        /* renamed from: c */
        public int f8340c;

        /* renamed from: d */
        public JJCalls f8341d;
    }

    /* loaded from: classes2.dex */
    public static final class LookaheadSuccess extends Error {
        public LookaheadSuccess() {
        }
    }

    static {
        LuaValue.valueOf(true);
        m22374H0();
        m22372I0();
        m22370J0();
    }

    public LuaParser(InputStream inputStream) {
        this(inputStream, null);
    }

    /* renamed from: H0 */
    public static void m22374H0() {
        f8319q = new int[]{0, -1073741824, 0, 0, 0, -1073741824, 0, 0, 0, 0, 260046848, 0, 0, 0, 0, 0, 0, 260046848, 260046848, 260046848, 0, 260046848, 260046848, 260046848, 0, 0, 0, 260046848, 0, 0, 260046848, 0, 536870912, 0};
    }

    /* renamed from: I0 */
    public static void m22372I0() {
        f8320r = new int[]{0, 803568, 8192, 0, 0, 278720, 48, 524800, 2, 1, 1612254248, 0, 0, 0, 0, 0, Opcodes.ASM8, 1610612736, 1612254248, 1610612736, 0, 1612252200, 1610612736, 1612254248, Opcodes.ASM8, 0, Opcodes.ASM8, 1612254248, 0, 0, 1612254248, 0, 4096, 2048};
    }

    /* renamed from: J0 */
    public static void m22370J0() {
        f8321s = new int[]{32, 2114, 0, 256, 128, 66, 0, 2048, 0, 0, 624672, 64, 384, 256, 512, 1024, 2048, 77312, 624672, 67584, 256, 100352, 0, 624672, 32768, 256, 32768, 632864, 320, 8192, 624672, 320, 2147221504, 524320};
    }

    /* renamed from: A */
    public final boolean m22389A() {
        return m22362N0(87);
    }

    /* renamed from: A0 */
    public final boolean m22388A0() {
        return m22325m();
    }

    /* renamed from: B */
    public final boolean m22387B() {
        return m22362N0(88);
    }

    /* renamed from: C */
    public final boolean m22385C() {
        return m22362N0(89);
    }

    /* renamed from: D */
    public final boolean m22383D() {
        return m22362N0(90);
    }

    /* renamed from: E */
    public final boolean m22381E() {
        return m22362N0(91);
    }

    /* renamed from: F */
    public final boolean m22379F() {
        return m22362N0(92);
    }

    /* renamed from: G */
    public final boolean m22377G() {
        return m22362N0(93);
    }

    /* renamed from: H */
    public final boolean m22375H() {
        return m22362N0(94);
    }

    /* renamed from: I */
    public final boolean m22373I() {
        return m22362N0(29);
    }

    /* renamed from: J */
    public final boolean m22371J() {
        return m22362N0(44);
    }

    /* renamed from: K */
    public final boolean m22369K() {
        return m22360P();
    }

    /* renamed from: L */
    public final boolean m22367L() {
        return m22359Q();
    }

    /* renamed from: L0 */
    public final void m22366L0() {
        this.f8330i = true;
        for (int i = 0; i < 7; i++) {
            try {
                JJCalls jJCalls = this.f8329h[i];
                do {
                    if (jJCalls.f8338a > this.f8327f) {
                        this.f8326e = jJCalls.f8340c;
                        Token token = jJCalls.f8339b;
                        this.f8324c = token;
                        this.f8325d = token;
                        switch (i) {
                            case 0:
                                m22300y0();
                                break;
                            case 1:
                                m22298z0();
                                break;
                            case 2:
                                m22388A0();
                                break;
                            case 3:
                                m22386B0();
                                break;
                            case 4:
                                m22384C0();
                                break;
                            case 5:
                                m22382D0();
                                break;
                            case 6:
                                m22380E0();
                                break;
                        }
                    }
                    jJCalls = jJCalls.f8341d;
                } while (jJCalls != null);
            } catch (LookaheadSuccess unused) {
            }
        }
        this.f8330i = false;
    }

    /* renamed from: M */
    public final boolean m22365M() {
        return m22362N0(77);
    }

    /* renamed from: N */
    public final boolean m22363N() {
        return m22321o();
    }

    public void ReInit(InputStream inputStream) {
        ReInit(inputStream, null);
    }

    /* renamed from: S */
    public final boolean m22357S() {
        return m22334h0();
    }

    /* renamed from: T */
    public final boolean m22356T() {
        return m22332i0();
    }

    /* renamed from: U */
    public final boolean m22355U() {
        return m22362N0(42);
    }

    /* renamed from: V */
    public final boolean m22354V() {
        return m22362N0(48);
    }

    /* renamed from: W */
    public final boolean m22353W() {
        return m22362N0(35);
    }

    /* renamed from: X */
    public final boolean m22352X() {
        return m22362N0(52);
    }

    /* renamed from: Y */
    public final boolean m22351Y() {
        return m22332i0();
    }

    /* renamed from: Z */
    public final boolean m22350Z() {
        return m22362N0(79);
    }

    /* renamed from: a0 */
    public final boolean m22348a0() {
        return m22334h0();
    }

    /* renamed from: b0 */
    public final boolean m22346b0() {
        return m22330j0();
    }

    /* renamed from: c */
    public final long m22345c() {
        return (this.f8322a.getBeginLine() << 32) | this.f8322a.getBeginColumn();
    }

    /* renamed from: c0 */
    public final boolean m22344c0() {
        return m22328k0();
    }

    /* renamed from: d0 */
    public final boolean m22342d0() {
        return m22362N0(83);
    }

    public final void disable_tracing() {
    }

    /* renamed from: e0 */
    public final boolean m22340e0() {
        return m22362N0(43);
    }

    public final void enable_tracing() {
    }

    /* renamed from: f0 */
    public final boolean m22338f0() {
        return m22362N0(69);
    }

    /* renamed from: g0 */
    public final boolean m22336g0() {
        return m22326l0();
    }

    public SimpleCharStream getCharStream() {
        return this.f8322a;
    }

    /* renamed from: j0 */
    public final boolean m22330j0() {
        return m22362N0(37);
    }

    /* renamed from: k0 */
    public final boolean m22328k0() {
        return m22308u0();
    }

    /* renamed from: l0 */
    public final boolean m22326l0() {
        return m22321o();
    }

    /* renamed from: m0 */
    public final boolean m22324m0() {
        return m22306v0();
    }

    /* renamed from: n0 */
    public final boolean m22322n0() {
        return m22362N0(61);
    }

    /* renamed from: o0 */
    public final boolean m22320o0() {
        return m22362N0(62);
    }

    /* renamed from: p0 */
    public final boolean m22318p0() {
        return m22362N0(23);
    }

    /* renamed from: q0 */
    public final boolean m22316q0() {
        return m22362N0(24);
    }

    /* renamed from: r0 */
    public final boolean m22314r0() {
        return m22362N0(25);
    }

    /* renamed from: s0 */
    public final boolean m22312s0() {
        return m22362N0(26);
    }

    /* renamed from: t0 */
    public final boolean m22310t0() {
        return m22362N0(27);
    }

    /* renamed from: u */
    public final boolean m22309u() {
        return m22361O();
    }

    /* renamed from: v */
    public final boolean m22307v() {
        return m22362N0(82);
    }

    /* renamed from: v0 */
    public final boolean m22306v0() {
        return m22317q();
    }

    /* renamed from: w */
    public final boolean m22305w() {
        return m22362N0(83);
    }

    /* renamed from: w0 */
    public final boolean m22304w0() {
        return m22362N0(51);
    }

    /* renamed from: x */
    public final boolean m22303x() {
        return m22362N0(84);
    }

    /* renamed from: x0 */
    public final boolean m22302x0() {
        return m22362N0(75);
    }

    /* renamed from: y */
    public final boolean m22301y() {
        return m22362N0(85);
    }

    /* renamed from: z */
    public final boolean m22299z() {
        return m22362N0(86);
    }

    public LuaParser(InputStream inputStream, String str) {
        this.f8328g = new int[34];
        this.f8329h = new JJCalls[7];
        int i = 0;
        this.f8330i = false;
        this.f8331j = 0;
        this.f8332k = new LookaheadSuccess();
        this.f8333l = new ArrayList();
        this.f8335n = -1;
        this.f8336o = new int[100];
        try {
            this.f8322a = new SimpleCharStream(inputStream, str, 1, 1);
            this.token_source = new LuaParserTokenManager(this.f8322a);
            this.token = new Token();
            this.f8323b = -1;
            this.f8327f = 0;
            for (int i2 = 0; i2 < 34; i2++) {
                this.f8328g[i2] = -1;
            }
            while (true) {
                JJCalls[] jJCallsArr = this.f8329h;
                if (i >= jJCallsArr.length) {
                    return;
                }
                jJCallsArr[i] = new JJCalls();
                i++;
            }
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public static void main(String[] strArr) {
        new LuaParser(System.in).Chunk();
    }

    public final Stat Assign(Exp.VarExp varExp) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(varExp);
        long m22345c = m22345c();
        while (true) {
            int i = this.f8323b;
            if (i == -1) {
                i = m22368K0();
            }
            if (i != 72) {
                this.f8328g[13] = this.f8327f;
                m22376G0(71);
                Stat assignment = Stat.assignment(arrayList, ExpList());
                m22349a(assignment, m22345c);
                return assignment;
            }
            m22376G0(72);
            arrayList.add(VarExp());
        }
    }

    /* renamed from: B0 */
    public final boolean m22386B0() {
        if (m22362N0(72) || m22362N0(51)) {
            return true;
        }
        return false;
    }

    public final int Binop() {
        int i = this.f8323b;
        if (i == -1) {
            i = m22368K0();
        }
        if (i != 29) {
            if (i != 44) {
                switch (i) {
                    case 82:
                        m22376G0(82);
                        return 13;
                    case 83:
                        m22376G0(83);
                        return 14;
                    case 84:
                        m22376G0(84);
                        return 15;
                    case 85:
                        m22376G0(85);
                        return 16;
                    case 86:
                        m22376G0(86);
                        return 18;
                    case 87:
                        m22376G0(87);
                        return 17;
                    case 88:
                        m22376G0(88);
                        return 22;
                    case 89:
                        m22376G0(89);
                        return 25;
                    case 90:
                        m22376G0(90);
                        return 26;
                    case 91:
                        m22376G0(91);
                        return 63;
                    case 92:
                        m22376G0(92);
                        return 62;
                    case 93:
                        m22376G0(93);
                        return 24;
                    case 94:
                        m22376G0(94);
                        return 61;
                    default:
                        this.f8328g[32] = this.f8327f;
                        m22376G0(-1);
                        throw new ParseException();
                }
            }
            m22376G0(44);
            return 59;
        }
        m22376G0(29);
        return 60;
    }

    public final Block Block() {
        Block block = new Block();
        long m22345c = m22345c();
        while (true) {
            int i = this.f8323b;
            if (i == -1) {
                i = m22368K0();
            }
            if (i != 30 && i != 31 && i != 41 && i != 46 && i != 65 && i != 70 && i != 75 && i != 50 && i != 51) {
                switch (i) {
                    default:
                        this.f8328g[1] = this.f8327f;
                        int i2 = this.f8323b;
                        if (i2 == -1) {
                            i2 = m22368K0();
                        }
                        if (i2 != 45) {
                            this.f8328g[2] = this.f8327f;
                        } else {
                            block.add(ReturnStat());
                        }
                        m22349a(block, m22345c);
                        return block;
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                        break;
                }
            }
            block.add(Stat());
        }
    }

    /* renamed from: E0 */
    public final boolean m22380E0() {
        if (m22362N0(51) || m22362N0(71)) {
            return true;
        }
        return false;
    }

    public final List<Exp> ExpList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Exp());
        while (true) {
            int i = this.f8323b;
            if (i == -1) {
                i = m22368K0();
            }
            if (i != 72) {
                this.f8328g[20] = this.f8327f;
                return arrayList;
            }
            m22376G0(72);
            arrayList.add(Exp());
        }
    }

    /* renamed from: F0 */
    public final void m22378F0(int i, int i2) {
        if (i2 >= 100) {
            return;
        }
        int i3 = this.f8337p;
        if (i2 == i3 + 1) {
            int[] iArr = this.f8336o;
            this.f8337p = i3 + 1;
            iArr[i3] = i;
        } else if (i3 != 0) {
            this.f8334m = new int[i3];
            for (int i4 = 0; i4 < this.f8337p; i4++) {
                this.f8334m[i4] = this.f8336o[i4];
            }
            Iterator it = this.f8333l.iterator();
            loop1: while (true) {
                if (!it.hasNext()) {
                    break;
                }
                int[] iArr2 = (int[]) it.next();
                if (iArr2.length == this.f8334m.length) {
                    int i5 = 0;
                    while (true) {
                        int[] iArr3 = this.f8334m;
                        if (i5 < iArr3.length) {
                            if (iArr2[i5] != iArr3[i5]) {
                                break;
                            }
                            i5++;
                        } else {
                            this.f8333l.add(iArr3);
                            break loop1;
                        }
                    }
                }
            }
            if (i2 != 0) {
                int[] iArr4 = this.f8336o;
                this.f8337p = i2;
                iArr4[i2 - 1] = i;
            }
        }
    }

    public final List<TableField> FieldList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Field());
        while (m22329k(2)) {
            FieldSep();
            arrayList.add(Field());
        }
        int i = this.f8323b;
        if (i == -1) {
            i = m22368K0();
        }
        if (i != 70 && i != 72) {
            this.f8328g[28] = this.f8327f;
        } else {
            FieldSep();
        }
        return arrayList;
    }

    public final void FieldSep() {
        int i = this.f8323b;
        if (i == -1) {
            i = m22368K0();
        }
        if (i != 70) {
            if (i == 72) {
                m22376G0(72);
                return;
            }
            this.f8328g[31] = this.f8327f;
            m22376G0(-1);
            throw new ParseException();
        }
        m22376G0(70);
    }

    public final FuncName FuncName() {
        Token m22376G0 = m22376G0(51);
        FuncName funcName = new FuncName(m22376G0.image);
        while (true) {
            int i = this.f8323b;
            if (i == -1) {
                i = m22368K0();
            }
            if (i != 73) {
                break;
            }
            m22376G0(73);
            m22376G0 = m22376G0(51);
            funcName.adddot(m22376G0.image);
        }
        this.f8328g[14] = this.f8327f;
        int i2 = this.f8323b;
        if (i2 == -1) {
            i2 = m22368K0();
        }
        if (i2 != 74) {
            this.f8328g[15] = this.f8327f;
        } else {
            m22376G0(74);
            m22376G0 = m22376G0(51);
            funcName.method = m22376G0.image;
        }
        m22347b(funcName, m22376G0);
        return funcName;
    }

    /* renamed from: G0 */
    public final Token m22376G0(int i) {
        Token token = this.token;
        Token token2 = token.next;
        if (token2 != null) {
            this.token = token2;
        } else {
            Token nextToken = this.token_source.getNextToken();
            token.next = nextToken;
            this.token = nextToken;
        }
        this.f8323b = -1;
        if (this.token.kind == i) {
            this.f8327f++;
            int i2 = this.f8331j + 1;
            this.f8331j = i2;
            if (i2 > 100) {
                int i3 = 0;
                this.f8331j = 0;
                while (true) {
                    JJCalls[] jJCallsArr = this.f8329h;
                    if (i3 >= jJCallsArr.length) {
                        break;
                    }
                    for (JJCalls jJCalls = jJCallsArr[i3]; jJCalls != null; jJCalls = jJCalls.f8341d) {
                        if (jJCalls.f8338a < this.f8327f) {
                            jJCalls.f8339b = null;
                        }
                    }
                    i3++;
                }
            }
            return this.token;
        }
        this.token = token;
        this.f8335n = i;
        throw generateParseException();
    }

    public final Stat IfThenElse() {
        m22376G0(39);
        Exp Exp = Exp();
        m22376G0(47);
        Block Block = Block();
        Block block = null;
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        while (true) {
            int i = this.f8323b;
            if (i == -1) {
                i = m22368K0();
            }
            if (i != 33) {
                break;
            }
            m22376G0(33);
            Exp Exp2 = Exp();
            m22376G0(47);
            Block Block2 = Block();
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
            }
            arrayList.add(Exp2);
            arrayList2.add(Block2);
        }
        this.f8328g[8] = this.f8327f;
        int i2 = this.f8323b;
        if (i2 == -1) {
            i2 = m22368K0();
        }
        if (i2 != 32) {
            this.f8328g[9] = this.f8327f;
        } else {
            m22376G0(32);
            block = Block();
        }
        m22376G0(34);
        return Stat.ifthenelse(Exp, Block, arrayList, arrayList2, block);
    }

    /* renamed from: K0 */
    public final int m22368K0() {
        Token token = this.token;
        Token token2 = token.next;
        this.jj_nt = token2;
        if (token2 == null) {
            Token nextToken = this.token_source.getNextToken();
            token.next = nextToken;
            int i = nextToken.kind;
            this.f8323b = i;
            return i;
        }
        int i2 = token2.kind;
        this.f8323b = i2;
        return i2;
    }

    public final Stat Label() {
        m22376G0(65);
        Token m22376G0 = m22376G0(51);
        m22376G0(65);
        return Stat.labelstat(m22376G0.image);
    }

    /* renamed from: M0 */
    public final void m22364M0(int i, int i2) {
        JJCalls jJCalls = this.f8329h[i];
        while (true) {
            if (jJCalls.f8338a <= this.f8327f) {
                break;
            }
            JJCalls jJCalls2 = jJCalls.f8341d;
            if (jJCalls2 == null) {
                JJCalls jJCalls3 = new JJCalls();
                jJCalls.f8341d = jJCalls3;
                jJCalls = jJCalls3;
                break;
            }
            jJCalls = jJCalls2;
        }
        jJCalls.f8338a = (this.f8327f + i2) - this.f8326e;
        jJCalls.f8339b = this.token;
        jJCalls.f8340c = i2;
    }

    /* renamed from: N0 */
    public final boolean m22362N0(int i) {
        Token token = this.f8324c;
        if (token == this.f8325d) {
            this.f8326e--;
            Token token2 = token.next;
            if (token2 == null) {
                Token nextToken = this.token_source.getNextToken();
                token.next = nextToken;
                this.f8324c = nextToken;
                this.f8325d = nextToken;
            } else {
                this.f8324c = token2;
                this.f8325d = token2;
            }
        } else {
            this.f8324c = token.next;
        }
        if (this.f8330i) {
            Token token3 = this.token;
            int i2 = 0;
            while (token3 != null && token3 != this.f8324c) {
                i2++;
                token3 = token3.next;
            }
            if (token3 != null) {
                m22378F0(i, i2);
            }
        }
        Token token4 = this.f8324c;
        if (token4.kind != i) {
            return true;
        }
        if (this.f8326e != 0 || token4 != this.f8325d) {
            return false;
        }
        throw this.f8332k;
    }

    public final List<Name> NameList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Name(m22376G0(51).image));
        while (m22333i(2)) {
            m22376G0(72);
            arrayList.add(new Name(m22376G0(51).image));
        }
        return arrayList;
    }

    /* renamed from: O */
    public final boolean m22361O() {
        Token token = this.f8324c;
        if (m22358R()) {
            this.f8324c = token;
            if (m22357S()) {
                this.f8324c = token;
                if (m22356T()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* renamed from: P */
    public final boolean m22360P() {
        Token token = this.f8324c;
        if (m22355U()) {
            this.f8324c = token;
            if (m22354V()) {
                this.f8324c = token;
                if (m22353W()) {
                    this.f8324c = token;
                    if (m22352X()) {
                        this.f8324c = token;
                        if (m22351Y()) {
                            this.f8324c = token;
                            if (m22350Z()) {
                                this.f8324c = token;
                                if (m22348a0()) {
                                    this.f8324c = token;
                                    if (m22346b0()) {
                                        this.f8324c = token;
                                        if (m22344c0()) {
                                            return true;
                                        }
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* renamed from: Q */
    public final boolean m22359Q() {
        Token token = this.f8324c;
        if (m22342d0()) {
            this.f8324c = token;
            if (m22340e0()) {
                this.f8324c = token;
                if (m22338f0()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* renamed from: R */
    public final boolean m22358R() {
        if (m22362N0(75)) {
            return true;
        }
        Token token = this.f8324c;
        if (m22336g0()) {
            this.f8324c = token;
        }
        if (m22362N0(76)) {
            return true;
        }
        return false;
    }

    public void ReInit(InputStream inputStream, String str) {
        try {
            this.f8322a.ReInit(inputStream, str, 1, 1);
            this.token_source.ReInit(this.f8322a);
            this.token = new Token();
            this.f8323b = -1;
            int i = 0;
            this.f8327f = 0;
            for (int i2 = 0; i2 < 34; i2++) {
                this.f8328g[i2] = -1;
            }
            while (true) {
                JJCalls[] jJCallsArr = this.f8329h;
                if (i >= jJCallsArr.length) {
                    return;
                }
                jJCallsArr[i] = new JJCalls();
                i++;
            }
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public final LuaString Str() {
        int i = this.f8323b;
        if (i == -1) {
            i = m22368K0();
        }
        if (i != 61) {
            if (i != 62) {
                switch (i) {
                    case 23:
                        m22376G0(23);
                        return Str.longString(this.token.image);
                    case 24:
                        m22376G0(24);
                        return Str.longString(this.token.image);
                    case 25:
                        m22376G0(25);
                        return Str.longString(this.token.image);
                    case 26:
                        m22376G0(26);
                        return Str.longString(this.token.image);
                    case 27:
                        m22376G0(27);
                        return Str.longString(this.token.image);
                    default:
                        this.f8328g[22] = this.f8327f;
                        m22376G0(-1);
                        throw new ParseException();
                }
            }
            m22376G0(62);
            return Str.charString(this.token.image);
        }
        m22376G0(61);
        return Str.quoteString(this.token.image);
    }

    public final TableConstructor TableConstructor() {
        TableConstructor tableConstructor = new TableConstructor();
        long m22345c = m22345c();
        m22376G0(80);
        int i = this.f8323b;
        if (i == -1) {
            i = m22368K0();
        }
        if (i != 35 && i != 37 && i != 48 && i != 69 && i != 75 && i != 77 && i != 83 && i != 42 && i != 43 && i != 51 && i != 52 && i != 61 && i != 62 && i != 79 && i != 80) {
            switch (i) {
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                    break;
                default:
                    this.f8328g[27] = this.f8327f;
                    break;
            }
            m22376G0(81);
            m22349a(tableConstructor, m22345c);
            return tableConstructor;
        }
        tableConstructor.fields = FieldList();
        m22376G0(81);
        m22349a(tableConstructor, m22345c);
        return tableConstructor;
    }

    public final int Unop() {
        int i = this.f8323b;
        if (i == -1) {
            i = m22368K0();
        }
        if (i != 43) {
            if (i != 69) {
                if (i == 83) {
                    m22376G0(83);
                    return 19;
                }
                this.f8328g[33] = this.f8327f;
                m22376G0(-1);
                throw new ParseException();
            }
            m22376G0(69);
            return 21;
        }
        m22376G0(43);
        return 20;
    }

    /* renamed from: a */
    public final void m22349a(SyntaxElement syntaxElement, long j) {
        syntaxElement.beginLine = (int) (j >> 32);
        syntaxElement.beginColumn = (short) j;
        Token token = this.token;
        syntaxElement.endLine = token.endLine;
        syntaxElement.endColumn = (short) token.endColumn;
    }

    /* renamed from: b */
    public final void m22347b(SyntaxElement syntaxElement, Token token) {
        syntaxElement.beginLine = token.beginLine;
        syntaxElement.beginColumn = (short) token.beginColumn;
        Token token2 = this.token;
        syntaxElement.endLine = token2.endLine;
        syntaxElement.endColumn = (short) token2.endColumn;
    }

    /* renamed from: f */
    public final boolean m22339f(int i) {
        this.f8326e = i;
        Token token = this.token;
        this.f8324c = token;
        this.f8325d = token;
        try {
            return true ^ m22300y0();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            m22364M0(0, i);
        }
    }

    /* renamed from: g */
    public final boolean m22337g(int i) {
        this.f8326e = i;
        Token token = this.token;
        this.f8324c = token;
        this.f8325d = token;
        try {
            return !m22298z0();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            m22364M0(1, i);
        }
    }

    public ParseException generateParseException() {
        this.f8333l.clear();
        boolean[] zArr = new boolean[95];
        int i = this.f8335n;
        if (i >= 0) {
            zArr[i] = true;
            this.f8335n = -1;
        }
        for (int i2 = 0; i2 < 34; i2++) {
            if (this.f8328g[i2] == this.f8327f) {
                for (int i3 = 0; i3 < 32; i3++) {
                    int i4 = 1 << i3;
                    if ((f8319q[i2] & i4) != 0) {
                        zArr[i3] = true;
                    }
                    if ((f8320r[i2] & i4) != 0) {
                        zArr[i3 + 32] = true;
                    }
                    if ((f8321s[i2] & i4) != 0) {
                        zArr[i3 + 64] = true;
                    }
                }
            }
        }
        for (int i5 = 0; i5 < 95; i5++) {
            if (zArr[i5]) {
                this.f8334m = r5;
                int[] iArr = {i5};
                this.f8333l.add(iArr);
            }
        }
        this.f8337p = 0;
        m22366L0();
        m22378F0(0, 0);
        int[][] iArr2 = new int[this.f8333l.size()];
        for (int i6 = 0; i6 < this.f8333l.size(); i6++) {
            iArr2[i6] = (int[]) this.f8333l.get(i6);
        }
        return new ParseException(this.token, iArr2, LuaParserConstants.tokenImage);
    }

    public final Token getNextToken() {
        Token token = this.token;
        Token token2 = token.next;
        if (token2 != null) {
            this.token = token2;
        } else {
            Token nextToken = this.token_source.getNextToken();
            token.next = nextToken;
            this.token = nextToken;
        }
        this.f8323b = -1;
        this.f8327f++;
        return this.token;
    }

    public final Token getToken(int i) {
        Token token = this.token;
        for (int i2 = 0; i2 < i; i2++) {
            Token token2 = token.next;
            if (token2 == null) {
                token2 = this.token_source.getNextToken();
                token.next = token2;
            }
            token = token2;
        }
        return token;
    }

    /* renamed from: h */
    public final boolean m22335h(int i) {
        this.f8326e = i;
        Token token = this.token;
        this.f8324c = token;
        this.f8325d = token;
        try {
            return true ^ m22388A0();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            m22364M0(2, i);
        }
    }

    /* renamed from: h0 */
    public final boolean m22334h0() {
        if (m22362N0(80)) {
            return true;
        }
        Token token = this.f8324c;
        if (m22324m0()) {
            this.f8324c = token;
        }
        if (m22362N0(81)) {
            return true;
        }
        return false;
    }

    /* renamed from: i */
    public final boolean m22333i(int i) {
        this.f8326e = i;
        Token token = this.token;
        this.f8324c = token;
        this.f8325d = token;
        try {
            return true ^ m22386B0();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            m22364M0(3, i);
        }
    }

    /* renamed from: i0 */
    public final boolean m22332i0() {
        Token token = this.f8324c;
        if (m22322n0()) {
            this.f8324c = token;
            if (m22320o0()) {
                this.f8324c = token;
                if (m22318p0()) {
                    this.f8324c = token;
                    if (m22316q0()) {
                        this.f8324c = token;
                        if (m22314r0()) {
                            this.f8324c = token;
                            if (m22312s0()) {
                                this.f8324c = token;
                                if (m22310t0()) {
                                    return true;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* renamed from: j */
    public final boolean m22331j(int i) {
        this.f8326e = i;
        Token token = this.token;
        this.f8324c = token;
        this.f8325d = token;
        try {
            return true ^ m22384C0();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            m22364M0(4, i);
        }
    }

    /* renamed from: k */
    public final boolean m22329k(int i) {
        this.f8326e = i;
        Token token = this.token;
        this.f8324c = token;
        this.f8325d = token;
        try {
            return true ^ m22382D0();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            m22364M0(5, i);
        }
    }

    /* renamed from: l */
    public final boolean m22327l(int i) {
        this.f8326e = i;
        Token token = this.token;
        this.f8324c = token;
        this.f8325d = token;
        try {
            return true ^ m22380E0();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            m22364M0(6, i);
        }
    }

    /* renamed from: m */
    public final boolean m22325m() {
        Token token = this.f8324c;
        if (m22315r()) {
            this.f8324c = token;
            if (m22313s()) {
                this.f8324c = token;
                if (m22311t()) {
                    this.f8324c = token;
                    if (m22309u()) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* renamed from: n */
    public final boolean m22323n() {
        Token token = this.f8324c;
        if (m22307v()) {
            this.f8324c = token;
            if (m22305w()) {
                this.f8324c = token;
                if (m22303x()) {
                    this.f8324c = token;
                    if (m22301y()) {
                        this.f8324c = token;
                        if (m22299z()) {
                            this.f8324c = token;
                            if (m22389A()) {
                                this.f8324c = token;
                                if (m22387B()) {
                                    this.f8324c = token;
                                    if (m22385C()) {
                                        this.f8324c = token;
                                        if (m22383D()) {
                                            this.f8324c = token;
                                            if (m22381E()) {
                                                this.f8324c = token;
                                                if (m22379F()) {
                                                    this.f8324c = token;
                                                    if (m22377G()) {
                                                        this.f8324c = token;
                                                        if (m22375H()) {
                                                            this.f8324c = token;
                                                            if (m22373I()) {
                                                                this.f8324c = token;
                                                                if (m22371J()) {
                                                                    return true;
                                                                }
                                                                return false;
                                                            }
                                                            return false;
                                                        }
                                                        return false;
                                                    }
                                                    return false;
                                                }
                                                return false;
                                            }
                                            return false;
                                        }
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* renamed from: o */
    public final boolean m22321o() {
        Token token = this.f8324c;
        if (m22369K()) {
            this.f8324c = token;
            if (m22367L()) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* renamed from: p */
    public final boolean m22319p() {
        Token token = this.f8324c;
        if (m22362N0(72)) {
            this.f8324c = token;
            if (m22362N0(70)) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* renamed from: q */
    public final boolean m22317q() {
        Token token = this.f8324c;
        if (m22365M()) {
            this.f8324c = token;
            if (m22380E0()) {
                this.f8324c = token;
                if (m22363N()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* renamed from: r */
    public final boolean m22315r() {
        if (m22362N0(73) || m22362N0(51)) {
            return true;
        }
        return false;
    }

    /* renamed from: s */
    public final boolean m22313s() {
        if (m22362N0(77) || m22321o()) {
            return true;
        }
        return false;
    }

    /* renamed from: t */
    public final boolean m22311t() {
        if (m22362N0(74) || m22362N0(51)) {
            return true;
        }
        return false;
    }

    /* renamed from: u0 */
    public final boolean m22308u0() {
        Token token = this.f8324c;
        if (m22304w0()) {
            this.f8324c = token;
            if (m22302x0()) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* renamed from: y0 */
    public final boolean m22300y0() {
        if (m22362N0(36) || m22362N0(51) || m22362N0(71)) {
            return true;
        }
        return false;
    }

    /* renamed from: z0 */
    public final boolean m22298z0() {
        if (m22362N0(41) || m22362N0(37)) {
            return true;
        }
        return false;
    }

    /* renamed from: d */
    public static Exp.FuncCall m22343d(Exp.PrimaryExp primaryExp) {
        if (primaryExp.isfunccall()) {
            return (Exp.FuncCall) primaryExp;
        }
        throw new ParseException("expected function call");
    }

    /* renamed from: e */
    public static Exp.VarExp m22341e(Exp.PrimaryExp primaryExp) {
        if (primaryExp.isvarexp()) {
            return (Exp.VarExp) primaryExp;
        }
        throw new ParseException("expected variable");
    }

    /* renamed from: C0 */
    public final boolean m22384C0() {
        if (m22323n() || m22321o()) {
            return true;
        }
        return false;
    }

    public final Chunk Chunk() {
        long m22345c = m22345c();
        int i = this.f8323b;
        if (i == -1) {
            i = m22368K0();
        }
        if (i != 69) {
            this.f8328g[0] = this.f8327f;
        } else {
            m22376G0(69);
            this.token_source.SwitchTo(1);
        }
        Block Block = Block();
        m22376G0(0);
        Chunk chunk = new Chunk(Block);
        m22349a(chunk, m22345c);
        return chunk;
    }

    /* renamed from: D0 */
    public final boolean m22382D0() {
        if (m22319p() || m22317q()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0071 A[LOOP:0: B:38:0x006a->B:40:0x0071, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.prineside.luaj.ast.Exp Exp() {
        /*
            r5 = this;
            long r0 = r5.m22345c()
            int r2 = r5.f8323b
            r3 = -1
            if (r2 != r3) goto Ld
            int r2 = r5.m22368K0()
        Ld:
            r4 = 35
            if (r2 == r4) goto L66
            r4 = 37
            if (r2 == r4) goto L66
            r4 = 48
            if (r2 == r4) goto L66
            r4 = 69
            if (r2 == r4) goto L59
            r4 = 75
            if (r2 == r4) goto L66
            r4 = 83
            if (r2 == r4) goto L59
            r4 = 42
            if (r2 == r4) goto L66
            r4 = 43
            if (r2 == r4) goto L59
            r4 = 51
            if (r2 == r4) goto L66
            r4 = 52
            if (r2 == r4) goto L66
            r4 = 61
            if (r2 == r4) goto L66
            r4 = 62
            if (r2 == r4) goto L66
            r4 = 79
            if (r2 == r4) goto L66
            r4 = 80
            if (r2 == r4) goto L66
            switch(r2) {
                case 23: goto L66;
                case 24: goto L66;
                case 25: goto L66;
                case 26: goto L66;
                case 27: goto L66;
                default: goto L48;
            }
        L48:
            int[] r0 = r5.f8328g
            r1 = 23
            int r2 = r5.f8327f
            r0[r1] = r2
            r5.m22376G0(r3)
            com.prineside.luaj.parser.ParseException r0 = new com.prineside.luaj.parser.ParseException
            r0.<init>()
            throw r0
        L59:
            int r2 = r5.Unop()
            com.prineside.luaj.ast.Exp r3 = r5.Exp()
            com.prineside.luaj.ast.Exp r2 = com.prineside.luaj.ast.Exp.unaryexp(r2, r3)
            goto L6a
        L66:
            com.prineside.luaj.ast.Exp r2 = r5.SimpleExp()
        L6a:
            r3 = 2
            boolean r3 = r5.m22331j(r3)
            if (r3 == 0) goto L7e
            int r3 = r5.Binop()
            com.prineside.luaj.ast.Exp r4 = r5.Exp()
            com.prineside.luaj.ast.Exp r2 = com.prineside.luaj.ast.Exp.binaryexp(r2, r3, r4)
            goto L6a
        L7e:
            r5.m22349a(r2, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.luaj.parser.LuaParser.Exp():com.prineside.luaj.ast.Exp");
    }

    public final Stat ExprStat() {
        Stat Assign;
        long m22345c = m22345c();
        Exp.PrimaryExp PrimaryExp = PrimaryExp();
        int i = this.f8323b;
        if (i == -1) {
            i = m22368K0();
        }
        if (i != 71 && i != 72) {
            this.f8328g[12] = this.f8327f;
            Assign = null;
        } else {
            Assign = Assign(m22341e(PrimaryExp));
        }
        if (Assign == null) {
            Assign = Stat.functioncall(m22343d(PrimaryExp));
        }
        m22349a(Assign, m22345c);
        return Assign;
    }

    public final TableField Field() {
        long m22345c = m22345c();
        int i = this.f8323b;
        if (i == -1) {
            i = m22368K0();
        }
        if (i != 77) {
            this.f8328g[29] = this.f8327f;
            if (m22327l(2)) {
                Token m22376G0 = m22376G0(51);
                m22376G0(71);
                TableField namedField = TableField.namedField(m22376G0.image, Exp());
                m22349a(namedField, m22345c);
                return namedField;
            }
            int i2 = this.f8323b;
            if (i2 == -1) {
                i2 = m22368K0();
            }
            if (i2 != 35 && i2 != 37 && i2 != 48 && i2 != 69 && i2 != 75 && i2 != 83 && i2 != 42 && i2 != 43 && i2 != 51 && i2 != 52 && i2 != 61 && i2 != 62 && i2 != 79 && i2 != 80) {
                switch (i2) {
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                        break;
                    default:
                        this.f8328g[30] = this.f8327f;
                        m22376G0(-1);
                        throw new ParseException();
                }
            }
            TableField listField = TableField.listField(Exp());
            m22349a(listField, m22345c);
            return listField;
        }
        m22376G0(77);
        Exp Exp = Exp();
        m22376G0(78);
        m22376G0(71);
        TableField keyedField = TableField.keyedField(Exp, Exp());
        m22349a(keyedField, m22345c);
        return keyedField;
    }

    public final FuncArgs FuncArgs() {
        List<Exp> ExpList;
        long m22345c = m22345c();
        int i = this.f8323b;
        if (i == -1) {
            i = m22368K0();
        }
        if (i != 61 && i != 62) {
            if (i != 75) {
                if (i != 80) {
                    switch (i) {
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                            break;
                        default:
                            this.f8328g[19] = this.f8327f;
                            m22376G0(-1);
                            throw new ParseException();
                    }
                } else {
                    FuncArgs tableconstructor = FuncArgs.tableconstructor(TableConstructor());
                    m22349a(tableconstructor, m22345c);
                    return tableconstructor;
                }
            } else {
                m22376G0(75);
                int i2 = this.f8323b;
                if (i2 == -1) {
                    i2 = m22368K0();
                }
                if (i2 != 35 && i2 != 37 && i2 != 48 && i2 != 69 && i2 != 75 && i2 != 83 && i2 != 42 && i2 != 43 && i2 != 51 && i2 != 52 && i2 != 61 && i2 != 62 && i2 != 79 && i2 != 80) {
                    switch (i2) {
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                            break;
                        default:
                            this.f8328g[18] = this.f8327f;
                            ExpList = null;
                            break;
                    }
                    m22376G0(76);
                    FuncArgs explist = FuncArgs.explist(ExpList);
                    m22349a(explist, m22345c);
                    return explist;
                }
                ExpList = ExpList();
                m22376G0(76);
                FuncArgs explist2 = FuncArgs.explist(ExpList);
                m22349a(explist2, m22345c);
                return explist2;
            }
        }
        FuncArgs string = FuncArgs.string(Str());
        m22349a(string, m22345c);
        return string;
    }

    public final FuncBody FuncBody() {
        ParList ParList;
        long m22345c = m22345c();
        m22376G0(75);
        int i = this.f8323b;
        if (i == -1) {
            i = m22368K0();
        }
        if (i != 51 && i != 79) {
            this.f8328g[24] = this.f8327f;
            ParList = null;
        } else {
            ParList = ParList();
        }
        m22376G0(76);
        Block Block = Block();
        m22376G0(34);
        FuncBody funcBody = new FuncBody(ParList, Block);
        m22349a(funcBody, m22345c);
        return funcBody;
    }

    public final FuncBody FunctionCall() {
        long m22345c = m22345c();
        m22376G0(37);
        FuncBody FuncBody = FuncBody();
        m22349a(FuncBody, m22345c);
        return FuncBody;
    }

    public final ParList ParList() {
        long m22345c = m22345c();
        int i = this.f8323b;
        if (i == -1) {
            i = m22368K0();
        }
        boolean z = true;
        if (i != 51) {
            if (i == 79) {
                m22376G0(79);
                ParList parList = new ParList(null, true);
                m22349a(parList, m22345c);
                return parList;
            }
            this.f8328g[26] = this.f8327f;
            m22376G0(-1);
            throw new ParseException();
        }
        List<Name> NameList = NameList();
        int i2 = this.f8323b;
        if (i2 == -1) {
            i2 = m22368K0();
        }
        if (i2 != 72) {
            this.f8328g[25] = this.f8327f;
            z = false;
        } else {
            m22376G0(72);
            m22376G0(79);
        }
        ParList parList2 = new ParList(NameList, z);
        m22349a(parList2, m22345c);
        return parList2;
    }

    public final Exp.PrimaryExp PostfixOp(Exp.PrimaryExp primaryExp) {
        long m22345c = m22345c();
        int i = this.f8323b;
        if (i == -1) {
            i = m22368K0();
        }
        if (i != 61 && i != 62) {
            if (i != 77) {
                if (i != 80) {
                    switch (i) {
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                            break;
                        default:
                            switch (i) {
                                case 73:
                                    m22376G0(73);
                                    Exp.FieldExp fieldop = Exp.fieldop(primaryExp, m22376G0(51).image);
                                    m22349a(fieldop, m22345c);
                                    return fieldop;
                                case 74:
                                    m22376G0(74);
                                    Token m22376G0 = m22376G0(51);
                                    Exp.MethodCall methodop = Exp.methodop(primaryExp, m22376G0.image, FuncArgs());
                                    m22349a(methodop, m22345c);
                                    return methodop;
                                case 75:
                                    break;
                                default:
                                    this.f8328g[17] = this.f8327f;
                                    m22376G0(-1);
                                    throw new ParseException();
                            }
                    }
                }
            } else {
                m22376G0(77);
                Exp Exp = Exp();
                m22376G0(78);
                Exp.IndexExp indexop = Exp.indexop(primaryExp, Exp);
                m22349a(indexop, m22345c);
                return indexop;
            }
        }
        Exp.FuncCall functionop = Exp.functionop(primaryExp, FuncArgs());
        m22349a(functionop, m22345c);
        return functionop;
    }

    public final Exp.PrimaryExp PrefixExp() {
        long m22345c = m22345c();
        int i = this.f8323b;
        if (i == -1) {
            i = m22368K0();
        }
        if (i != 51) {
            if (i == 75) {
                m22376G0(75);
                Exp Exp = Exp();
                m22376G0(76);
                Exp.ParensExp parensprefix = Exp.parensprefix(Exp);
                m22349a(parensprefix, m22345c);
                return parensprefix;
            }
            this.f8328g[16] = this.f8327f;
            m22376G0(-1);
            throw new ParseException();
        }
        Exp.NameExp nameprefix = Exp.nameprefix(m22376G0(51).image);
        m22349a(nameprefix, m22345c);
        return nameprefix;
    }

    public final Exp.PrimaryExp PrimaryExp() {
        long m22345c = m22345c();
        Exp.PrimaryExp PrefixExp = PrefixExp();
        while (m22335h(2)) {
            PrefixExp = PostfixOp(PrefixExp);
        }
        m22349a(PrefixExp, m22345c);
        return PrefixExp;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.prineside.luaj.ast.Stat ReturnStat() {
        /*
            r6 = this;
            long r0 = r6.m22345c()
            r2 = 45
            r6.m22376G0(r2)
            int r2 = r6.f8323b
            r3 = -1
            if (r2 != r3) goto L12
            int r2 = r6.m22368K0()
        L12:
            r4 = 35
            if (r2 == r4) goto L57
            r4 = 37
            if (r2 == r4) goto L57
            r4 = 48
            if (r2 == r4) goto L57
            r4 = 69
            if (r2 == r4) goto L57
            r4 = 75
            if (r2 == r4) goto L57
            r4 = 83
            if (r2 == r4) goto L57
            r4 = 42
            if (r2 == r4) goto L57
            r4 = 43
            if (r2 == r4) goto L57
            r4 = 51
            if (r2 == r4) goto L57
            r4 = 52
            if (r2 == r4) goto L57
            r4 = 61
            if (r2 == r4) goto L57
            r4 = 62
            if (r2 == r4) goto L57
            r4 = 79
            if (r2 == r4) goto L57
            r4 = 80
            if (r2 == r4) goto L57
            switch(r2) {
                case 23: goto L57;
                case 24: goto L57;
                case 25: goto L57;
                case 26: goto L57;
                case 27: goto L57;
                default: goto L4d;
            }
        L4d:
            int[] r2 = r6.f8328g
            r4 = 10
            int r5 = r6.f8327f
            r2[r4] = r5
            r2 = 0
            goto L5b
        L57:
            java.util.List r2 = r6.ExpList()
        L5b:
            int r4 = r6.f8323b
            if (r4 != r3) goto L63
            int r4 = r6.m22368K0()
        L63:
            r3 = 70
            if (r4 == r3) goto L70
            int[] r3 = r6.f8328g
            r4 = 11
            int r5 = r6.f8327f
            r3[r4] = r5
            goto L73
        L70:
            r6.m22376G0(r3)
        L73:
            com.prineside.luaj.ast.Stat r2 = com.prineside.luaj.ast.Stat.returnstat(r2)
            r6.m22349a(r2, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.luaj.parser.LuaParser.ReturnStat():com.prineside.luaj.ast.Stat");
    }

    public final Exp SimpleExp() {
        long m22345c = m22345c();
        int i = this.f8323b;
        if (i == -1) {
            i = m22368K0();
        }
        if (i != 35) {
            if (i != 37) {
                if (i != 42) {
                    if (i != 48) {
                        if (i != 75 && i != 51) {
                            if (i != 52) {
                                if (i != 61 && i != 62) {
                                    if (i != 79) {
                                        if (i != 80) {
                                            switch (i) {
                                                case 23:
                                                case 24:
                                                case 25:
                                                case 26:
                                                case 27:
                                                    break;
                                                default:
                                                    this.f8328g[21] = this.f8327f;
                                                    m22376G0(-1);
                                                    throw new ParseException();
                                            }
                                        } else {
                                            Exp tableconstructor = Exp.tableconstructor(TableConstructor());
                                            m22349a(tableconstructor, m22345c);
                                            return tableconstructor;
                                        }
                                    } else {
                                        m22376G0(79);
                                        Exp varargs = Exp.varargs();
                                        m22349a(varargs, m22345c);
                                        return varargs;
                                    }
                                }
                                Exp constant = Exp.constant(Str());
                                m22349a(constant, m22345c);
                                return constant;
                            }
                            Exp numberconstant = Exp.numberconstant(m22376G0(52).image);
                            m22349a(numberconstant, m22345c);
                            return numberconstant;
                        }
                        return PrimaryExp();
                    }
                    m22376G0(48);
                    Exp constant2 = Exp.constant(LuaValue.TRUE);
                    m22349a(constant2, m22345c);
                    return constant2;
                }
                m22376G0(42);
                Exp constant3 = Exp.constant(LuaValue.NIL);
                m22349a(constant3, m22345c);
                return constant3;
            }
            Exp anonymousfunction = Exp.anonymousfunction(FunctionCall());
            m22349a(anonymousfunction, m22345c);
            return anonymousfunction;
        }
        m22376G0(35);
        Exp constant4 = Exp.constant(LuaValue.FALSE);
        m22349a(constant4, m22345c);
        return constant4;
    }

    public final Stat Stat() {
        long m22345c = m22345c();
        int i = this.f8323b;
        if (i == -1) {
            i = m22368K0();
        }
        if (i != 30) {
            if (i != 31) {
                if (i != 38) {
                    if (i != 39) {
                        if (i != 46) {
                            if (i != 50) {
                                if (i != 65) {
                                    List<Exp> list = null;
                                    Exp Exp = null;
                                    if (i != 70) {
                                        this.f8328g[5] = this.f8327f;
                                        if (m22339f(3)) {
                                            m22376G0(36);
                                            Token m22376G0 = m22376G0(51);
                                            m22376G0(71);
                                            Exp Exp2 = Exp();
                                            m22376G0(72);
                                            Exp Exp3 = Exp();
                                            int i2 = this.f8323b;
                                            if (i2 == -1) {
                                                i2 = m22368K0();
                                            }
                                            if (i2 != 72) {
                                                this.f8328g[3] = this.f8327f;
                                            } else {
                                                m22376G0(72);
                                                Exp = Exp();
                                            }
                                            m22376G0(31);
                                            Block Block = Block();
                                            m22376G0(34);
                                            Stat fornumeric = Stat.fornumeric(m22376G0.image, Exp2, Exp3, Exp, Block);
                                            m22349a(fornumeric, m22345c);
                                            return fornumeric;
                                        }
                                        int i3 = this.f8323b;
                                        if (i3 == -1) {
                                            i3 = m22368K0();
                                        }
                                        if (i3 != 36) {
                                            if (i3 != 37) {
                                                this.f8328g[6] = this.f8327f;
                                                if (m22337g(2)) {
                                                    m22376G0(41);
                                                    m22376G0(37);
                                                    Token m22376G02 = m22376G0(51);
                                                    Stat localfunctiondef = Stat.localfunctiondef(m22376G02.image, FuncBody());
                                                    m22349a(localfunctiondef, m22345c);
                                                    return localfunctiondef;
                                                }
                                                int i4 = this.f8323b;
                                                if (i4 == -1) {
                                                    i4 = m22368K0();
                                                }
                                                if (i4 != 41) {
                                                    if (i4 != 51 && i4 != 75) {
                                                        this.f8328g[7] = this.f8327f;
                                                        m22376G0(-1);
                                                        throw new ParseException();
                                                    }
                                                    Stat ExprStat = ExprStat();
                                                    m22349a(ExprStat, m22345c);
                                                    return ExprStat;
                                                }
                                                m22376G0(41);
                                                List<Name> NameList = NameList();
                                                int i5 = this.f8323b;
                                                if (i5 == -1) {
                                                    i5 = m22368K0();
                                                }
                                                if (i5 != 71) {
                                                    this.f8328g[4] = this.f8327f;
                                                } else {
                                                    m22376G0(71);
                                                    list = ExpList();
                                                }
                                                Stat localassignment = Stat.localassignment(NameList, list);
                                                m22349a(localassignment, m22345c);
                                                return localassignment;
                                            }
                                            m22376G0(37);
                                            Stat functiondef = Stat.functiondef(FuncName(), FuncBody());
                                            m22349a(functiondef, m22345c);
                                            return functiondef;
                                        }
                                        m22376G0(36);
                                        List<Name> NameList2 = NameList();
                                        m22376G0(40);
                                        List<Exp> ExpList = ExpList();
                                        m22376G0(31);
                                        Block Block2 = Block();
                                        m22376G0(34);
                                        Stat forgeneric = Stat.forgeneric(NameList2, ExpList, Block2);
                                        m22349a(forgeneric, m22345c);
                                        return forgeneric;
                                    }
                                    m22376G0(70);
                                    return null;
                                }
                                Stat Label = Label();
                                m22349a(Label, m22345c);
                                return Label;
                            }
                            m22376G0(50);
                            Exp Exp4 = Exp();
                            m22376G0(31);
                            Block Block3 = Block();
                            m22376G0(34);
                            Stat whiledo = Stat.whiledo(Exp4, Block3);
                            m22349a(whiledo, m22345c);
                            return whiledo;
                        }
                        m22376G0(46);
                        Block Block4 = Block();
                        m22376G0(49);
                        Stat repeatuntil = Stat.repeatuntil(Block4, Exp());
                        m22349a(repeatuntil, m22345c);
                        return repeatuntil;
                    }
                    Stat IfThenElse = IfThenElse();
                    m22349a(IfThenElse, m22345c);
                    return IfThenElse;
                }
                m22376G0(38);
                Stat gotostat = Stat.gotostat(m22376G0(51).image);
                m22349a(gotostat, m22345c);
                return gotostat;
            }
            m22376G0(31);
            Block Block5 = Block();
            m22376G0(34);
            Stat block = Stat.block(Block5);
            m22349a(block, m22345c);
            return block;
        }
        m22376G0(30);
        Stat breakstat = Stat.breakstat();
        m22349a(breakstat, m22345c);
        return breakstat;
    }

    public final Exp.VarExp VarExp() {
        return m22341e(PrimaryExp());
    }

    public void ReInit(Reader reader) {
        this.f8322a.ReInit(reader, 1, 1);
        this.token_source.ReInit(this.f8322a);
        this.token = new Token();
        this.f8323b = -1;
        int i = 0;
        this.f8327f = 0;
        for (int i2 = 0; i2 < 34; i2++) {
            this.f8328g[i2] = -1;
        }
        while (true) {
            JJCalls[] jJCallsArr = this.f8329h;
            if (i >= jJCallsArr.length) {
                return;
            }
            jJCallsArr[i] = new JJCalls();
            i++;
        }
    }

    public void ReInit(LuaParserTokenManager luaParserTokenManager) {
        this.token_source = luaParserTokenManager;
        this.token = new Token();
        this.f8323b = -1;
        int i = 0;
        this.f8327f = 0;
        for (int i2 = 0; i2 < 34; i2++) {
            this.f8328g[i2] = -1;
        }
        while (true) {
            JJCalls[] jJCallsArr = this.f8329h;
            if (i >= jJCallsArr.length) {
                return;
            }
            jJCallsArr[i] = new JJCalls();
            i++;
        }
    }

    public LuaParser(Reader reader) {
        this.f8328g = new int[34];
        this.f8329h = new JJCalls[7];
        int i = 0;
        this.f8330i = false;
        this.f8331j = 0;
        this.f8332k = new LookaheadSuccess();
        this.f8333l = new ArrayList();
        this.f8335n = -1;
        this.f8336o = new int[100];
        this.f8322a = new SimpleCharStream(reader, 1, 1);
        this.token_source = new LuaParserTokenManager(this.f8322a);
        this.token = new Token();
        this.f8323b = -1;
        this.f8327f = 0;
        for (int i2 = 0; i2 < 34; i2++) {
            this.f8328g[i2] = -1;
        }
        while (true) {
            JJCalls[] jJCallsArr = this.f8329h;
            if (i >= jJCallsArr.length) {
                return;
            }
            jJCallsArr[i] = new JJCalls();
            i++;
        }
    }

    public LuaParser(LuaParserTokenManager luaParserTokenManager) {
        this.f8328g = new int[34];
        this.f8329h = new JJCalls[7];
        int i = 0;
        this.f8330i = false;
        this.f8331j = 0;
        this.f8332k = new LookaheadSuccess();
        this.f8333l = new ArrayList();
        this.f8335n = -1;
        this.f8336o = new int[100];
        this.token_source = luaParserTokenManager;
        this.token = new Token();
        this.f8323b = -1;
        this.f8327f = 0;
        for (int i2 = 0; i2 < 34; i2++) {
            this.f8328g[i2] = -1;
        }
        while (true) {
            JJCalls[] jJCallsArr = this.f8329h;
            if (i >= jJCallsArr.length) {
                return;
            }
            jJCallsArr[i] = new JJCalls();
            i++;
        }
    }
}
