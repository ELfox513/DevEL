package p168r4;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.Pair;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: r4.n4 */
/* loaded from: classes2.dex */
public final class C6045n4 extends AbstractC5601b3 {

    /* renamed from: A */
    public C6085o6 f28108A;

    /* renamed from: B */
    public int f28109B;

    /* renamed from: C */
    public long f28110C;

    /* renamed from: D */
    public yu3 f28111D;

    /* renamed from: b */
    public final cw3 f28112b;

    /* renamed from: c */
    public final C6270t6 f28113c;

    /* renamed from: d */
    public final InterfaceC5790g7[] f28114d;

    /* renamed from: e */
    public final aw3 f28115e;

    /* renamed from: f */
    public final InterfaceC6422xa f28116f;

    /* renamed from: g */
    public final InterfaceC6379w4 f28117g;

    /* renamed from: h */
    public final C6453y4 f28118h;

    /* renamed from: i */
    public final C5682db<InterfaceC6307u6> f28119i;

    /* renamed from: j */
    public final CopyOnWriteArraySet<InterfaceC6119p3> f28120j;

    /* renamed from: k */
    public final C5606b8 f28121k;

    /* renamed from: l */
    public final List<C6008m4> f28122l;

    /* renamed from: m */
    public final boolean f28123m;

    /* renamed from: n */
    public final qt3 f28124n;

    /* renamed from: o */
    public final c41 f28125o;

    /* renamed from: p */
    public final Looper f28126p;

    /* renamed from: q */
    public final kw3 f28127q;

    /* renamed from: r */
    public final InterfaceC5940ka f28128r;

    /* renamed from: s */
    public int f28129s;

    /* renamed from: t */
    public int f28130t;

    /* renamed from: u */
    public boolean f28131u;

    /* renamed from: v */
    public int f28132v;

    /* renamed from: w */
    public C5937k7 f28133w;

    /* renamed from: x */
    public C6270t6 f28134x;

    /* renamed from: y */
    public C6454y5 f28135y;

    /* renamed from: z */
    public C6454y5 f28136z;

    @SuppressLint({"HandlerLeak"})
    public C6045n4(InterfaceC5790g7[] interfaceC5790g7Arr, aw3 aw3Var, qt3 qt3Var, InterfaceC5825h5 interfaceC5825h5, kw3 kw3Var, c41 c41Var, boolean z, C5937k7 c5937k7, long j, long j2, C5786g3 c5786g3, long j3, boolean z2, InterfaceC5940ka interfaceC5940ka, Looper looper, final InterfaceC5568a7 interfaceC5568a7, C6270t6 c6270t6, byte[] bArr) {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = C5979lc.f27168e;
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 30 + String.valueOf(str).length());
        sb.append("Init ");
        sb.append(hexString);
        sb.append(" [ExoPlayerLib/2.15.0] [");
        sb.append(str);
        sb.append("]");
        Log.i("ExoPlayerImpl", sb.toString());
        int length = interfaceC5790g7Arr.length;
        this.f28114d = interfaceC5790g7Arr;
        aw3Var.getClass();
        this.f28115e = aw3Var;
        this.f28124n = qt3Var;
        this.f28127q = kw3Var;
        this.f28125o = c41Var;
        this.f28123m = true;
        this.f28133w = c5937k7;
        this.f28126p = looper;
        this.f28128r = interfaceC5940ka;
        C5682db<InterfaceC6307u6> c5682db = new C5682db<>(looper, interfaceC5940ka, new InterfaceC5609bb(interfaceC5568a7) { // from class: r4.r3

            /* renamed from: a */
            public final InterfaceC5568a7 f30431a;

            {
                this.f30431a = interfaceC5568a7;
            }

            @Override // p168r4.InterfaceC5609bb
            /* renamed from: a */
            public final void mo7619a(Object obj, C6348va c6348va) {
                InterfaceC6307u6 interfaceC6307u6 = (InterfaceC6307u6) obj;
                new C6344v6(c6348va);
            }
        });
        this.f28119i = c5682db;
        this.f28120j = new CopyOnWriteArraySet<>();
        this.f28122l = new ArrayList();
        this.f28111D = new yu3(0);
        cw3 cw3Var = new cw3(new C5864i7[2], new hv3[2], null, null);
        this.f28112b = cw3Var;
        this.f28121k = new C5606b8();
        C6233s6 c6233s6 = new C6233s6();
        c6233s6.m7204c(1, 2, 12, 13, 14, 15, 16, 17, 18, 19);
        c6233s6.m7205b(28, true);
        c6233s6.m7203d(c6270t6);
        C6270t6 m7202e = c6233s6.m7202e();
        this.f28113c = m7202e;
        C6233s6 c6233s62 = new C6233s6();
        c6233s62.m7203d(m7202e);
        c6233s62.m7206a(3);
        c6233s62.m7206a(9);
        this.f28134x = c6233s62.m7202e();
        C6454y5 c6454y5 = C6454y5.f33947t;
        this.f28135y = c6454y5;
        this.f28136z = c6454y5;
        this.f28109B = -1;
        this.f28116f = interfaceC5940ka.mo10082a(looper, null);
        InterfaceC6379w4 interfaceC6379w4 = new InterfaceC6379w4(this) { // from class: r4.c4

            /* renamed from: a */
            public final C6045n4 f21348a;

            {
                this.f21348a = this;
            }

            @Override // p168r4.InterfaceC6379w4
            /* renamed from: a */
            public final void mo5888a(C6342v4 c6342v4) {
                this.f21348a.m9170j(c6342v4);
            }
        };
        this.f28117g = interfaceC6379w4;
        this.f28108A = C6085o6.m8888a(cw3Var);
        c41Var.m12620P(interfaceC5568a7, looper);
        c5682db.m12177b(c41Var);
        kw3Var.mo6698b(new Handler(looper), c41Var);
        this.f28118h = new C6453y4(interfaceC5790g7Arr, aw3Var, cw3Var, interfaceC5825h5, kw3Var, 0, false, c41Var, c5937k7, c5786g3, 500L, false, looper, interfaceC5940ka, interfaceC6379w4, null);
    }

    /* renamed from: w */
    public static boolean m9161w(C6085o6 c6085o6) {
        return c6085o6.f28885e == 3 && c6085o6.f28892l && c6085o6.f28893m == 0;
    }

    /* renamed from: A */
    public final Looper m9186A() {
        return this.f28126p;
    }

    /* renamed from: B */
    public final void m9185B(InterfaceC6307u6 interfaceC6307u6) {
        this.f28119i.m12177b(interfaceC6307u6);
    }

    /* renamed from: C */
    public final void m9184C(InterfaceC6119p3 interfaceC6119p3) {
        this.f28120j.add(interfaceC6119p3);
    }

    /* renamed from: D */
    public final int m9183D() {
        return this.f28108A.f28885e;
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: E */
    public final int mo8009E() {
        int m9168l = m9168l();
        if (m9168l == -1) {
            return 0;
        }
        return m9168l;
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: G */
    public final AbstractC5717e8 mo8007G() {
        return this.f28108A.f28881a;
    }

    /* renamed from: J */
    public final boolean m9179J() {
        return this.f28108A.f28892l;
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: O */
    public final long mo7999O() {
        return C5711e3.m11872a(m9167m(this.f28108A));
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: P */
    public final int mo7998P() {
        if (mo7957z()) {
            return this.f28108A.f28882b.f23238b;
        }
        return -1;
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: a */
    public final void mo7987a(int i, long j) {
        AbstractC5717e8 abstractC5717e8 = this.f28108A.f28881a;
        if (i >= 0 && (abstractC5717e8.m11843k() || i < abstractC5717e8.mo4076a())) {
            int i2 = 1;
            this.f28129s++;
            if (!mo7957z()) {
                if (this.f28108A.f28885e != 1) {
                    i2 = 2;
                }
                int mo8009E = mo8009E();
                C6085o6 m9164r = m9164r(this.f28108A.m8884e(i2), abstractC5717e8, m9163s(abstractC5717e8, i, j));
                this.f28118h.m4883T(abstractC5717e8, i, C5711e3.m11871b(j));
                m9166n(m9164r, 0, 1, true, true, 1, m9167m(m9164r), mo8009E);
                return;
            }
            Log.w("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            C6342v4 c6342v4 = new C6342v4(this.f28108A);
            c6342v4.m6234b(1);
            this.f28117g.mo5888a(c6342v4);
            return;
        }
        throw new C5788g5(abstractC5717e8, i, j);
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: b */
    public final void mo7985b(boolean z) {
        throw null;
    }

    /* renamed from: g */
    public final int m9173g() {
        int length = this.f28114d.length;
        return 2;
    }

    /* renamed from: h */
    public final /* synthetic */ void m9172h(InterfaceC6307u6 interfaceC6307u6) {
        interfaceC6307u6.mo6621I0(this.f28134x);
    }

    /* renamed from: j */
    public final /* synthetic */ void m9170j(final C6342v4 c6342v4) {
        this.f28116f.mo5433g(new Runnable(this, c6342v4) { // from class: r4.h4

            /* renamed from: a */
            public final C6045n4 f24437a;

            /* renamed from: b */
            public final C6342v4 f24438b;

            {
                this.f24437a = this;
                this.f24438b = c6342v4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f24437a.m9169k(this.f24438b);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:160:0x041e, code lost:
        if (r4.mo4075f(mo8009E(), r40.f20820a, 0).f22152g != false) goto L118;
     */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0469  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04b6 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0269  */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9166n(final p168r4.C6085o6 r41, final int r42, final int r43, boolean r44, boolean r45, final int r46, long r47, int r49) {
        /*
            Method dump skipped, instructions count: 1207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6045n4.m9166n(r4.o6, int, int, boolean, boolean, int, long, int):void");
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: p */
    public final int mo7967p() {
        return 0;
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: q */
    public final boolean mo7966q() {
        return false;
    }

    /* renamed from: u */
    public final long m9162u(AbstractC5717e8 abstractC5717e8, ft3 ft3Var, long j) {
        abstractC5717e8.mo6932o(ft3Var.f23237a, this.f28121k);
        return j;
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: v */
    public final long mo7961v() {
        return C5711e3.m11872a(this.f28108A.f28898r);
    }

    /* renamed from: x */
    public final boolean m9160x() {
        return this.f28108A.f28896p;
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: y */
    public final int mo7958y() {
        if (mo7957z()) {
            return this.f28108A.f28882b.f23239c;
        }
        return -1;
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: z */
    public final boolean mo7957z() {
        return this.f28108A.f28882b.m11647b();
    }

    /* renamed from: o */
    public static long m9165o(C6085o6 c6085o6) {
        C5679d8 c5679d8 = new C5679d8();
        C5606b8 c5606b8 = new C5606b8();
        c6085o6.f28881a.mo6932o(c6085o6.f28882b.f23237a, c5606b8);
        long j = c6085o6.f28883c;
        if (j == -9223372036854775807L) {
            long j2 = c6085o6.f28881a.mo4075f(c5606b8.f20895c, c5679d8, 0L).f22156k;
            return 0L;
        }
        return j;
    }

    /* renamed from: F */
    public final void m9182F() {
        int i;
        C6085o6 c6085o6 = this.f28108A;
        if (c6085o6.f28885e != 1) {
            return;
        }
        C6085o6 m8883f = c6085o6.m8883f(null);
        if (true != m8883f.f28881a.m11843k()) {
            i = 2;
        } else {
            i = 4;
        }
        C6085o6 m8884e = m8883f.m8884e(i);
        this.f28129s++;
        this.f28118h.m4885R();
        m9166n(m8884e, 1, 1, false, false, 5, -9223372036854775807L, -1);
    }

    /* renamed from: I */
    public final void m9180I(boolean z, int i, int i2) {
        C6085o6 c6085o6 = this.f28108A;
        if (c6085o6.f28892l == z && c6085o6.f28893m == i) {
            return;
        }
        this.f28129s++;
        C6085o6 m8881h = c6085o6.m8881h(z, i);
        this.f28118h.m4884S(z, i);
        m9166n(m8881h, 0, i2, false, false, 5, -9223372036854775807L, -1);
    }

    /* renamed from: K */
    public final void m9178K(boolean z, C6082o3 c6082o3) {
        boolean z2;
        C6085o6 c6085o6 = this.f28108A;
        C6085o6 m8882g = c6085o6.m8882g(c6085o6.f28882b);
        m8882g.f28897q = m8882g.f28899s;
        m8882g.f28898r = 0L;
        C6085o6 m8884e = m8882g.m8884e(1);
        if (c6082o3 != null) {
            m8884e = m8884e.m8883f(c6082o3);
        }
        C6085o6 c6085o62 = m8884e;
        this.f28129s++;
        this.f28118h.m4882U();
        if (c6085o62.f28881a.m11843k() && !this.f28108A.f28881a.m11843k()) {
            z2 = true;
        } else {
            z2 = false;
        }
        m9166n(c6085o62, 0, 1, false, z2, 4, m9167m(c6085o62), -1);
    }

    /* renamed from: N */
    public final C5678d7 m9176N(InterfaceC5641c7 interfaceC5641c7) {
        return new C5678d7(this.f28118h, interfaceC5641c7, this.f28108A.f28881a, mo8009E(), this.f28128r, this.f28118h.m4880W());
    }

    /* renamed from: k */
    public final /* synthetic */ void m9169k(C6342v4 c6342v4) {
        long j;
        boolean z;
        long j2;
        boolean z2;
        int i = this.f28129s - c6342v4.f32576c;
        this.f28129s = i;
        boolean z3 = true;
        if (c6342v4.f32577d) {
            this.f28130t = c6342v4.f32578e;
            this.f28131u = true;
        }
        if (c6342v4.f32579f) {
            this.f28132v = c6342v4.f32580g;
        }
        if (i == 0) {
            AbstractC5717e8 abstractC5717e8 = c6342v4.f32575b.f28881a;
            if (!this.f28108A.f28881a.m11843k() && abstractC5717e8.m11843k()) {
                this.f28109B = -1;
                this.f28110C = 0L;
            }
            if (!abstractC5717e8.m11843k()) {
                List<AbstractC5717e8> m11847y = ((C5716e7) abstractC5717e8).m11847y();
                if (m11847y.size() == this.f28122l.size()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                C5903ja.m10371d(z2);
                for (int i2 = 0; i2 < m11847y.size(); i2++) {
                    this.f28122l.get(i2).f27472b = m11847y.get(i2);
                }
            }
            if (this.f28131u) {
                if (c6342v4.f32575b.f28882b.equals(this.f28108A.f28882b) && c6342v4.f32575b.f28884d == this.f28108A.f28899s) {
                    z3 = false;
                }
                if (z3) {
                    if (!abstractC5717e8.m11843k() && !c6342v4.f32575b.f28882b.m11647b()) {
                        C6085o6 c6085o6 = c6342v4.f32575b;
                        ft3 ft3Var = c6085o6.f28882b;
                        j2 = c6085o6.f28884d;
                        m9162u(abstractC5717e8, ft3Var, j2);
                    } else {
                        j2 = c6342v4.f32575b.f28884d;
                    }
                    z = z3;
                    j = j2;
                } else {
                    j = -9223372036854775807L;
                    z = z3;
                }
            } else {
                j = -9223372036854775807L;
                z = false;
            }
            this.f28131u = false;
            m9166n(c6342v4.f32575b, 1, this.f28132v, false, z, this.f28130t, j, -1);
        }
    }

    /* renamed from: l */
    public final int m9168l() {
        if (this.f28108A.f28881a.m11843k()) {
            return this.f28109B;
        }
        C6085o6 c6085o6 = this.f28108A;
        return c6085o6.f28881a.mo6932o(c6085o6.f28882b.f23237a, this.f28121k).f20895c;
    }

    /* renamed from: m */
    public final long m9167m(C6085o6 c6085o6) {
        if (c6085o6.f28881a.m11843k()) {
            return C5711e3.m11871b(this.f28110C);
        }
        if (c6085o6.f28882b.m11647b()) {
            return c6085o6.f28899s;
        }
        AbstractC5717e8 abstractC5717e8 = c6085o6.f28881a;
        ft3 ft3Var = c6085o6.f28882b;
        long j = c6085o6.f28899s;
        m9162u(abstractC5717e8, ft3Var, j);
        return j;
    }

    /* renamed from: r */
    public final C6085o6 m9164r(C6085o6 c6085o6, AbstractC5717e8 abstractC5717e8, Pair<Object, Long> pair) {
        boolean z;
        ft3 ft3Var;
        j44 j44Var;
        ft3 ft3Var2;
        cw3 cw3Var;
        List<C5901j8> list;
        C6085o6 m8886c;
        long j;
        if (!abstractC5717e8.m11843k() && pair == null) {
            z = false;
        } else {
            z = true;
        }
        C5903ja.m10374a(z);
        AbstractC5717e8 abstractC5717e82 = c6085o6.f28881a;
        C6085o6 m8885d = c6085o6.m8885d(abstractC5717e8);
        if (abstractC5717e8.m11843k()) {
            ft3 m8887b = C6085o6.m8887b();
            long m11871b = C5711e3.m11871b(this.f28110C);
            C6085o6 m8882g = m8885d.m8886c(m8887b, m11871b, m11871b, m11871b, 0L, j44.f25890d, this.f28112b, o33.m8900q()).m8882g(m8887b);
            m8882g.f28897q = m8882g.f28899s;
            return m8882g;
        }
        Object obj = m8885d.f28882b.f23237a;
        int i = C5979lc.f27164a;
        boolean z2 = !obj.equals(pair.first);
        if (z2) {
            ft3Var = new ft3(pair.first);
        } else {
            ft3Var = m8885d.f28882b;
        }
        ft3 ft3Var3 = ft3Var;
        long longValue = ((Long) pair.second).longValue();
        long m11871b2 = C5711e3.m11871b(mo8002L());
        if (!abstractC5717e82.m11843k()) {
            abstractC5717e82.mo6932o(obj, this.f28121k);
        }
        if (!z2 && longValue >= m11871b2) {
            if (longValue == m11871b2) {
                int mo4072i = abstractC5717e8.mo4072i(m8885d.f28891k.f23237a);
                if (mo4072i == -1 || abstractC5717e8.mo4073h(mo4072i, this.f28121k, false).f20895c != abstractC5717e8.mo6932o(ft3Var3.f23237a, this.f28121k).f20895c) {
                    abstractC5717e8.mo6932o(ft3Var3.f23237a, this.f28121k);
                    if (ft3Var3.m11647b()) {
                        j = this.f28121k.m12850h(ft3Var3.f23238b, ft3Var3.f23239c);
                    } else {
                        j = this.f28121k.f20896d;
                    }
                    m8886c = m8885d.m8886c(ft3Var3, m8885d.f28899s, m8885d.f28899s, m8885d.f28884d, j - m8885d.f28899s, m8885d.f28888h, m8885d.f28889i, m8885d.f28890j).m8882g(ft3Var3);
                    m8886c.f28897q = j;
                } else {
                    return m8885d;
                }
            } else {
                C5903ja.m10371d(!ft3Var3.m11647b());
                long max = Math.max(0L, m8885d.f28898r - (longValue - m11871b2));
                long j2 = m8885d.f28897q;
                if (m8885d.f28891k.equals(m8885d.f28882b)) {
                    j2 = longValue + max;
                }
                m8886c = m8885d.m8886c(ft3Var3, longValue, longValue, longValue, max, m8885d.f28888h, m8885d.f28889i, m8885d.f28890j);
                m8886c.f28897q = j2;
            }
            return m8886c;
        }
        C5903ja.m10371d(!ft3Var3.m11647b());
        if (z2) {
            j44Var = j44.f25890d;
        } else {
            j44Var = m8885d.f28888h;
        }
        j44 j44Var2 = j44Var;
        if (z2) {
            ft3Var2 = ft3Var3;
            cw3Var = this.f28112b;
        } else {
            ft3Var2 = ft3Var3;
            cw3Var = m8885d.f28889i;
        }
        cw3 cw3Var2 = cw3Var;
        if (z2) {
            list = o33.m8900q();
        } else {
            list = m8885d.f28890j;
        }
        C6085o6 m8882g2 = m8885d.m8886c(ft3Var2, longValue, longValue, longValue, 0L, j44Var2, cw3Var2, list).m8882g(ft3Var2);
        m8882g2.f28897q = longValue;
        return m8882g2;
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: t */
    public final int mo7963t() {
        if (this.f28108A.f28881a.m11843k()) {
            return 0;
        }
        C6085o6 c6085o6 = this.f28108A;
        return c6085o6.f28881a.mo4072i(c6085o6.f28882b.f23237a);
    }

    /* renamed from: H */
    public final void m9181H(List<ht3> list, boolean z) {
        boolean z2;
        m9168l();
        mo7999O();
        this.f28129s++;
        if (!this.f28122l.isEmpty()) {
            int size = this.f28122l.size();
            for (int i = size - 1; i >= 0; i--) {
                this.f28122l.remove(i);
            }
            this.f28111D = this.f28111D.m4551g(0, size);
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            C5826h6 c5826h6 = new C5826h6(list.get(i2), this.f28123m);
            arrayList.add(c5826h6);
            this.f28122l.add(i2, new C6008m4(c5826h6.f24475b, c5826h6.f24474a.m12696F()));
        }
        this.f28111D = this.f28111D.m4552f(0, arrayList.size());
        C5716e7 c5716e7 = new C5716e7(this.f28122l, this.f28111D, null);
        if (!c5716e7.m11843k() && c5716e7.mo4076a() < 0) {
            throw new C5788g5(c5716e7, -1, -9223372036854775807L);
        }
        int mo6723e = c5716e7.mo6723e(false);
        C6085o6 m9164r = m9164r(this.f28108A, c5716e7, m9163s(c5716e7, mo6723e, -9223372036854775807L));
        int i3 = m9164r.f28885e;
        if (mo6723e != -1 && i3 != 1) {
            i3 = (c5716e7.m11843k() || mo6723e >= c5716e7.mo4076a()) ? 4 : 2;
        }
        C6085o6 m8884e = m9164r.m8884e(i3);
        this.f28118h.m4877Z(arrayList, mo6723e, C5711e3.m11871b(-9223372036854775807L), this.f28111D);
        if (!this.f28108A.f28882b.f23237a.equals(m8884e.f28882b.f23237a) && !this.f28108A.f28881a.m11843k()) {
            z2 = true;
        } else {
            z2 = false;
        }
        m9166n(m8884e, 0, 1, false, z2, 4, m9167m(m8884e), -1);
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: L */
    public final long mo8002L() {
        if (mo7957z()) {
            C6085o6 c6085o6 = this.f28108A;
            c6085o6.f28881a.mo6932o(c6085o6.f28882b.f23237a, this.f28121k);
            C6085o6 c6085o62 = this.f28108A;
            if (c6085o62.f28883c == -9223372036854775807L) {
                long j = c6085o62.f28881a.mo4075f(mo8009E(), this.f20820a, 0L).f22156k;
                return C5711e3.m11872a(0L);
            }
            return C5711e3.m11872a(0L) + C5711e3.m11872a(this.f28108A.f28883c);
        }
        return mo7999O();
    }

    /* renamed from: M */
    public final void m9177M() {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = C5979lc.f27168e;
        String m4454a = C6490z4.m4454a();
        int length = String.valueOf(hexString).length();
        StringBuilder sb = new StringBuilder(length + 36 + String.valueOf(str).length() + String.valueOf(m4454a).length());
        sb.append("Release ");
        sb.append(hexString);
        sb.append(" [ExoPlayerLib/2.15.0] [");
        sb.append(str);
        sb.append("] [");
        sb.append(m4454a);
        sb.append("]");
        Log.i("ExoPlayerImpl", sb.toString());
        if (!this.f28118h.m4881V()) {
            C5682db<InterfaceC6307u6> c5682db = this.f28119i;
            c5682db.m12175d(10, C5897j4.f25885a);
            c5682db.m12174e();
        }
        this.f28119i.m12173f();
        this.f28116f.mo5438b(null);
        c41 c41Var = this.f28125o;
        if (c41Var != null) {
            this.f28127q.mo6697c(c41Var);
        }
        C6085o6 m8884e = this.f28108A.m8884e(1);
        this.f28108A = m8884e;
        C6085o6 m8882g = m8884e.m8882g(m8884e.f28882b);
        this.f28108A = m8882g;
        m8882g.f28897q = m8882g.f28899s;
        this.f28108A.f28898r = 0L;
    }

    /* renamed from: Q */
    public final long m9175Q() {
        if (!mo7957z()) {
            AbstractC5717e8 abstractC5717e8 = this.f28108A.f28881a;
            if (abstractC5717e8.m11843k()) {
                return -9223372036854775807L;
            }
            return C5711e3.m11872a(abstractC5717e8.mo4075f(mo8009E(), this.f20820a, 0L).f22157l);
        }
        C6085o6 c6085o6 = this.f28108A;
        ft3 ft3Var = c6085o6.f28882b;
        c6085o6.f28881a.mo6932o(ft3Var.f23237a, this.f28121k);
        return C5711e3.m11872a(this.f28121k.m12850h(ft3Var.f23238b, ft3Var.f23239c));
    }

    /* renamed from: R */
    public final long m9174R() {
        if (mo7957z()) {
            C6085o6 c6085o6 = this.f28108A;
            if (c6085o6.f28891k.equals(c6085o6.f28882b)) {
                return C5711e3.m11872a(this.f28108A.f28897q);
            }
            return m9175Q();
        } else if (this.f28108A.f28881a.m11843k()) {
            return this.f28110C;
        } else {
            C6085o6 c6085o62 = this.f28108A;
            long j = 0;
            if (c6085o62.f28891k.f23240d != c6085o62.f28882b.f23240d) {
                return C5711e3.m11872a(c6085o62.f28881a.mo4075f(mo8009E(), this.f20820a, 0L).f22157l);
            }
            long j2 = c6085o62.f28897q;
            if (this.f28108A.f28891k.m11647b()) {
                C6085o6 c6085o63 = this.f28108A;
                c6085o63.f28881a.mo6932o(c6085o63.f28891k.f23237a, this.f28121k).m12856b(this.f28108A.f28891k.f23238b);
            } else {
                j = j2;
            }
            C6085o6 c6085o64 = this.f28108A;
            m9162u(c6085o64.f28881a, c6085o64.f28891k, j);
            return C5711e3.m11872a(j);
        }
    }

    /* renamed from: s */
    public final Pair<Object, Long> m9163s(AbstractC5717e8 abstractC5717e8, int i, long j) {
        if (abstractC5717e8.m11843k()) {
            this.f28109B = i;
            if (j == -9223372036854775807L) {
                j = 0;
            }
            this.f28110C = j;
            return null;
        }
        if (i == -1 || i >= abstractC5717e8.mo4076a()) {
            i = abstractC5717e8.mo6723e(false);
            long j2 = abstractC5717e8.mo4075f(i, this.f20820a, 0L).f22156k;
            j = C5711e3.m11872a(0L);
        }
        return abstractC5717e8.m11841m(this.f20820a, this.f28121k, i, C5711e3.m11871b(j));
    }
}
