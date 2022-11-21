package p168r4;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.prineside.tdi2.Config;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.hu3 */
/* loaded from: classes2.dex */
public final class hu3 implements et3, d04, bx3, hx3, tu3 {

    /* renamed from: W */
    public static final Map<String, String> f24827W;

    /* renamed from: X */
    public static final C5713e5 f24828X;

    /* renamed from: C */
    public boolean f24831C;

    /* renamed from: D */
    public boolean f24832D;

    /* renamed from: E */
    public boolean f24833E;

    /* renamed from: F */
    public gu3 f24834F;

    /* renamed from: G */
    public z04 f24835G;

    /* renamed from: I */
    public boolean f24837I;

    /* renamed from: K */
    public boolean f24839K;

    /* renamed from: L */
    public boolean f24840L;

    /* renamed from: M */
    public int f24841M;

    /* renamed from: O */
    public long f24843O;

    /* renamed from: Q */
    public boolean f24845Q;

    /* renamed from: R */
    public int f24846R;

    /* renamed from: S */
    public boolean f24847S;

    /* renamed from: T */
    public boolean f24848T;

    /* renamed from: U */
    public final ww3 f24849U;

    /* renamed from: V */
    public final qw3 f24850V;

    /* renamed from: a */
    public final Uri f24851a;

    /* renamed from: b */
    public final InterfaceC6087o8 f24852b;

    /* renamed from: d */
    public final ut2 f24853d;

    /* renamed from: k */
    public final ot3 f24854k;

    /* renamed from: p */
    public final po2 f24855p;

    /* renamed from: q */
    public final du3 f24856q;

    /* renamed from: r */
    public final long f24857r;

    /* renamed from: t */
    public final xt3 f24859t;

    /* renamed from: y */
    public dt3 f24864y;

    /* renamed from: z */
    public C6346v8 f24865z;

    /* renamed from: s */
    public final kx3 f24858s = new kx3("ProgressiveMediaPeriod");

    /* renamed from: u */
    public final C6014ma f24860u = new C6014ma(InterfaceC5940ka.f26353a);

    /* renamed from: v */
    public final Runnable f24861v = new Runnable(this) { // from class: r4.yt3

        /* renamed from: a */
        public final hu3 f34215a;

        {
            this.f34215a = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f34215a.m10787z();
        }
    };

    /* renamed from: w */
    public final Runnable f24862w = new Runnable(this) { // from class: r4.zt3

        /* renamed from: a */
        public final hu3 f34729a;

        {
            this.f34729a = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f34729a.m10789x();
        }
    };

    /* renamed from: x */
    public final Handler f24863x = C5979lc.m9724M(null);

    /* renamed from: B */
    public fu3[] f24830B = new fu3[0];

    /* renamed from: A */
    public uu3[] f24829A = new uu3[0];

    /* renamed from: P */
    public long f24844P = -9223372036854775807L;

    /* renamed from: N */
    public long f24842N = -1;

    /* renamed from: H */
    public long f24836H = -9223372036854775807L;

    /* renamed from: J */
    public int f24838J = 1;

    public hu3(Uri uri, InterfaceC6087o8 interfaceC6087o8, xt3 xt3Var, ut2 ut2Var, po2 po2Var, ww3 ww3Var, ot3 ot3Var, du3 du3Var, qw3 qw3Var, String str, int i, byte[] bArr) {
        this.f24851a = uri;
        this.f24852b = interfaceC6087o8;
        this.f24853d = ut2Var;
        this.f24855p = po2Var;
        this.f24849U = ww3Var;
        this.f24854k = ot3Var;
        this.f24856q = du3Var;
        this.f24850V = qw3Var;
        this.f24857r = i;
        this.f24859t = xt3Var;
    }

    /* renamed from: C */
    public final boolean m10819C() {
        return this.f24840L || m10812K();
    }

    /* renamed from: G */
    public final void m10816G(cu3 cu3Var) {
        if (this.f24842N == -1) {
            this.f24842N = cu3.m12350h(cu3Var);
        }
    }

    /* renamed from: K */
    public final boolean m10812K() {
        return this.f24844P != -9223372036854775807L;
    }

    /* renamed from: U */
    public final boolean m10802U(int i) {
        return !m10819C() && this.f24829A[i].m6367C(this.f24847S);
    }

    /* renamed from: W */
    public final void m10800W() {
        this.f24858s.m9841l(ww3.m5555a(this.f24838J));
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: a */
    public final void mo4969a(long j) {
    }

    @Override // p168r4.et3
    /* renamed from: g */
    public final long mo5021g() {
        if (this.f24840L) {
            if (this.f24847S || m10814I() > this.f24846R) {
                this.f24840L = false;
                return this.f24843O;
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    @Override // p168r4.tu3
    /* renamed from: h */
    public final void mo6709h(C5713e5 c5713e5) {
        this.f24863x.post(this.f24861v);
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: i */
    public final long mo4966i() {
        if (this.f24841M == 0) {
            return Long.MIN_VALUE;
        }
        return mo4967f();
    }

    @Override // p168r4.d04
    /* renamed from: j */
    public final void mo10798j(final z04 z04Var) {
        this.f24863x.post(new Runnable(this, z04Var) { // from class: r4.bu3

            /* renamed from: a */
            public final hu3 f21226a;

            /* renamed from: b */
            public final z04 f21227b;

            {
                this.f21226a = this;
                this.f21227b = z04Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f21226a.m10790w(this.f21227b);
            }
        });
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: l */
    public final boolean mo4965l() {
        return this.f24858s.m9844i() && this.f24860u.m9440e();
    }

    @Override // p168r4.d04
    /* renamed from: r */
    public final d14 mo10795r(int i, int i2) {
        return m10818D(new fu3(i, false));
    }

    /* renamed from: u */
    public final d14 m10792u() {
        return m10818D(new fu3(0, true));
    }

    @Override // p168r4.d04
    /* renamed from: y */
    public final void mo10788y() {
        this.f24831C = true;
        this.f24863x.post(this.f24861v);
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", Config.SITE_API_VERSION);
        f24827W = Collections.unmodifiableMap(hashMap);
        C5639c5 c5639c5 = new C5639c5();
        c5639c5.m12579d("icy");
        c5639c5.m12564n("application/x-icy");
        f24828X = c5639c5.m12603I();
    }

    /* renamed from: D */
    public final d14 m10818D(fu3 fu3Var) {
        int length = this.f24829A.length;
        for (int i = 0; i < length; i++) {
            if (fu3Var.equals(this.f24830B[i])) {
                return this.f24829A[i];
            }
        }
        qw3 qw3Var = this.f24850V;
        Looper looper = this.f24863x.getLooper();
        ut2 ut2Var = this.f24853d;
        po2 po2Var = this.f24855p;
        looper.getClass();
        ut2Var.getClass();
        uu3 uu3Var = new uu3(qw3Var, looper, ut2Var, po2Var, null);
        uu3Var.m6360J(this);
        int i2 = length + 1;
        fu3[] fu3VarArr = (fu3[]) Arrays.copyOf(this.f24830B, i2);
        fu3VarArr[length] = fu3Var;
        this.f24830B = (fu3[]) C5979lc.m9727J(fu3VarArr);
        uu3[] uu3VarArr = (uu3[]) Arrays.copyOf(this.f24829A, i2);
        uu3VarArr[length] = uu3Var;
        this.f24829A = (uu3[]) C5979lc.m9727J(uu3VarArr);
        return uu3Var;
    }

    @Override // p168r4.hx3
    /* renamed from: E */
    public final void mo10760E() {
        for (uu3 uu3Var : this.f24829A) {
            uu3Var.m6345s();
        }
        this.f24859t.mo4983a();
    }

    /* renamed from: F */
    public final void m10787z() {
        boolean z;
        C5901j8 m10385l;
        if (!this.f24848T && !this.f24832D && this.f24831C && this.f24835G != null) {
            for (uu3 uu3Var : this.f24829A) {
                if (uu3Var.m6338z() == null) {
                    return;
                }
            }
            this.f24860u.m9443b();
            int length = this.f24829A.length;
            h24[] h24VarArr = new h24[length];
            boolean[] zArr = new boolean[length];
            for (int i = 0; i < length; i++) {
                C5713e5 m6338z = this.f24829A[i].m6338z();
                m6338z.getClass();
                String str = m6338z.f22814l;
                boolean m10071a = C5941kb.m10071a(str);
                if (!m10071a && !C5941kb.m10070b(str)) {
                    z = false;
                } else {
                    z = true;
                }
                zArr[i] = z;
                this.f24833E = z | this.f24833E;
                C6346v8 c6346v8 = this.f24865z;
                if (c6346v8 != null) {
                    if (m10071a || this.f24830B[i].f23675b) {
                        C5901j8 c5901j8 = m6338z.f22812j;
                        if (c5901j8 == null) {
                            m10385l = new C5901j8(c6346v8);
                        } else {
                            m10385l = c5901j8.m10385l(c6346v8);
                        }
                        C5639c5 m11856a = m6338z.m11856a();
                        m11856a.m12566l(m10385l);
                        m6338z = m11856a.m12603I();
                    }
                    if (m10071a && m6338z.f22808f == -1 && m6338z.f22809g == -1 && c6346v8.f32643a != -1) {
                        C5639c5 m11856a2 = m6338z.m11856a();
                        m11856a2.m12569i(c6346v8.f32643a);
                        m6338z = m11856a2.m12603I();
                    }
                }
                h24VarArr[i] = new h24(m6338z.m11855b(this.f24853d.mo6371a(m6338z)));
            }
            this.f24834F = new gu3(new j44(h24VarArr), zArr);
            this.f24832D = true;
            dt3 dt3Var = this.f24864y;
            dt3Var.getClass();
            dt3Var.mo4862h(this);
        }
    }

    /* renamed from: H */
    public final void m10815H() {
        cu3 cu3Var = new cu3(this, this.f24851a, this.f24852b, this.f24859t, this, this.f24860u);
        if (this.f24832D) {
            C5903ja.m10371d(m10812K());
            long j = this.f24836H;
            if (j != -9223372036854775807L && this.f24844P > j) {
                this.f24847S = true;
                this.f24844P = -9223372036854775807L;
                return;
            }
            z04 z04Var = this.f24835G;
            z04Var.getClass();
            cu3.m12349i(cu3Var, z04Var.mo4488a(this.f24844P).f33405a.f20343b, this.f24844P);
            for (uu3 uu3Var : this.f24829A) {
                uu3Var.m6343u(this.f24844P);
            }
            this.f24844P = -9223372036854775807L;
        }
        this.f24846R = m10814I();
        long m9845h = this.f24858s.m9845h(cu3Var, this, ww3.m5555a(this.f24838J));
        C6350vc m12351e = cu3.m12351e(cu3Var);
        this.f24854k.m8695d(new ws3(cu3.m12354b(cu3Var), m12351e, m12351e.f32683a, Collections.emptyMap(), m9845h, 0L, 0L), 1, -1, null, 0, null, cu3.m12352d(cu3Var), this.f24836H);
    }

    /* renamed from: I */
    public final int m10814I() {
        int i = 0;
        for (uu3 uu3Var : this.f24829A) {
            i += uu3Var.m6342v();
        }
        return i;
    }

    /* renamed from: J */
    public final long m10813J() {
        long j = Long.MIN_VALUE;
        for (uu3 uu3Var : this.f24829A) {
            j = Math.max(j, uu3Var.m6369A());
        }
        return j;
    }

    /* renamed from: L */
    public final void m10811L() {
        C5903ja.m10371d(this.f24832D);
        this.f24834F.getClass();
        this.f24835G.getClass();
    }

    /* renamed from: T */
    public final void m10803T() {
        if (this.f24832D) {
            for (uu3 uu3Var : this.f24829A) {
                uu3Var.m6341w();
            }
        }
        this.f24858s.m9842k(this);
        this.f24863x.removeCallbacksAndMessages(null);
        this.f24864y = null;
        this.f24848T = true;
    }

    /* renamed from: V */
    public final void m10801V(int i) {
        this.f24829A[i].m6340x();
        m10800W();
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: c */
    public final boolean mo4968c(long j) {
        if (!this.f24847S && !this.f24858s.m9847f() && !this.f24845Q) {
            if (!this.f24832D || this.f24841M != 0) {
                boolean m9444a = this.f24860u.m9444a();
                if (!this.f24858s.m9844i()) {
                    m10815H();
                    return true;
                }
                return m9444a;
            }
            return false;
        }
        return false;
    }

    @Override // p168r4.bx3
    /* renamed from: k */
    public final /* bridge */ /* synthetic */ void mo10797k(fx3 fx3Var, long j, long j2) {
        z04 z04Var;
        long j3;
        if (this.f24836H == -9223372036854775807L && (z04Var = this.f24835G) != null) {
            boolean mo4487c = z04Var.mo4487c();
            long m10813J = m10813J();
            if (m10813J == Long.MIN_VALUE) {
                j3 = 0;
            } else {
                j3 = m10813J + 10000;
            }
            this.f24836H = j3;
            this.f24856q.mo9265i(j3, mo4487c, this.f24837I);
        }
        cu3 cu3Var = (cu3) fx3Var;
        sx3 m12353c = cu3.m12353c(cu3Var);
        ws3 ws3Var = new ws3(cu3.m12354b(cu3Var), cu3.m12351e(cu3Var), m12353c.m6952o(), m12353c.m6951r(), j, j2, m12353c.m6953n());
        cu3.m12354b(cu3Var);
        this.f24854k.m8693f(ws3Var, 1, -1, null, 0, null, cu3.m12352d(cu3Var), this.f24836H);
        m10816G(cu3Var);
        this.f24847S = true;
        dt3 dt3Var = this.f24864y;
        dt3Var.getClass();
        dt3Var.mo4858j(this);
    }

    @Override // p168r4.et3
    /* renamed from: m */
    public final void mo5019m(dt3 dt3Var, long j) {
        this.f24864y = dt3Var;
        this.f24860u.m9444a();
        m10815H();
    }

    @Override // p168r4.bx3
    /* renamed from: n */
    public final /* bridge */ /* synthetic */ void mo10796n(fx3 fx3Var, long j, long j2, boolean z) {
        cu3 cu3Var = (cu3) fx3Var;
        sx3 m12353c = cu3.m12353c(cu3Var);
        ws3 ws3Var = new ws3(cu3.m12354b(cu3Var), cu3.m12351e(cu3Var), m12353c.m6952o(), m12353c.m6951r(), j, j2, m12353c.m6953n());
        cu3.m12354b(cu3Var);
        this.f24854k.m8691h(ws3Var, 1, -1, null, 0, null, cu3.m12352d(cu3Var), this.f24836H);
        if (!z) {
            m10816G(cu3Var);
            for (uu3 uu3Var : this.f24829A) {
                uu3Var.m6344t(false);
            }
            if (this.f24841M > 0) {
                dt3 dt3Var = this.f24864y;
                dt3Var.getClass();
                dt3Var.mo4858j(this);
            }
        }
    }

    @Override // p168r4.et3
    /* renamed from: o */
    public final long mo5017o(long j, C5937k7 c5937k7) {
        boolean z;
        m10811L();
        if (!this.f24835G.mo4487c()) {
            return 0L;
        }
        x04 mo4488a = this.f24835G.mo4488a(j);
        long j2 = mo4488a.f33405a.f20342a;
        long j3 = mo4488a.f33406b.f20342a;
        long j4 = c5937k7.f26334a;
        if (j4 == 0 && c5937k7.f26335b == 0) {
            return j;
        }
        long m9708b = C5979lc.m9708b(j, j4, Long.MIN_VALUE);
        long m9710a = C5979lc.m9710a(j, c5937k7.f26335b, Long.MAX_VALUE);
        boolean z2 = true;
        if (m9708b <= j2 && j2 <= m9710a) {
            z = true;
        } else {
            z = false;
        }
        z2 = (m9708b > j3 || j3 > m9710a) ? false : false;
        if (z && z2) {
            if (Math.abs(j2 - j) > Math.abs(j3 - j)) {
                return j3;
            }
        } else if (!z) {
            if (z2) {
                return j3;
            }
            return m9708b;
        }
        return j2;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0105  */
    @Override // p168r4.bx3
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ p168r4.dx3 mo10794s(p168r4.fx3 r27, long r28, long r30, java.io.IOException r32, int r33) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.hu3.mo10794s(r4.fx3, long, long, java.io.IOException, int):r4.dx3");
    }

    /* renamed from: w */
    public final /* synthetic */ void m10790w(z04 z04Var) {
        z04 y04Var;
        if (this.f24865z == null) {
            y04Var = z04Var;
        } else {
            y04Var = new y04(-9223372036854775807L, 0L);
        }
        this.f24835G = y04Var;
        this.f24836H = z04Var.mo4486g();
        boolean z = false;
        int i = 1;
        if (this.f24842N == -1 && z04Var.mo4486g() == -9223372036854775807L) {
            z = true;
        }
        this.f24837I = z;
        if (true == z) {
            i = 7;
        }
        this.f24838J = i;
        this.f24856q.mo9265i(this.f24836H, z04Var.mo4487c(), this.f24837I);
        if (!this.f24832D) {
            m10787z();
        }
    }

    /* renamed from: x */
    public final /* synthetic */ void m10789x() {
        if (!this.f24848T) {
            dt3 dt3Var = this.f24864y;
            dt3Var.getClass();
            dt3Var.mo4858j(this);
        }
    }

    /* renamed from: A */
    public final void m10821A(int i) {
        m10811L();
        gu3 gu3Var = this.f24834F;
        boolean[] zArr = gu3Var.f24246d;
        if (!zArr[i]) {
            C5713e5 m11000a = gu3Var.f24243a.m10424a(i).m11000a(0);
            this.f24854k.m8687l(C5941kb.m10066f(m11000a.f22814l), m11000a, 0, null, this.f24843O);
            zArr[i] = true;
        }
    }

    /* renamed from: B */
    public final void m10820B(int i) {
        m10811L();
        boolean[] zArr = this.f24834F.f24244b;
        if (this.f24845Q && zArr[i] && !this.f24829A[i].m6367C(false)) {
            this.f24844P = 0L;
            this.f24845Q = false;
            this.f24840L = true;
            this.f24843O = 0L;
            this.f24846R = 0;
            for (uu3 uu3Var : this.f24829A) {
                uu3Var.m6344t(false);
            }
            dt3 dt3Var = this.f24864y;
            dt3Var.getClass();
            dt3Var.mo4858j(this);
        }
    }

    /* renamed from: X */
    public final int m10799X(int i, C5751f5 c5751f5, C5861i4 c5861i4, int i2) {
        if (m10819C()) {
            return -3;
        }
        m10821A(i);
        int m6366D = this.f24829A[i].m6366D(c5751f5, c5861i4, i2, this.f24847S);
        if (m6366D == -3) {
            m10820B(i);
        }
        return m6366D;
    }

    @Override // p168r4.et3
    /* renamed from: b */
    public final void mo5024b() {
        m10800W();
        if (this.f24847S && !this.f24832D) {
            throw C5973l6.m9787b("Loading finished before preparation is complete.", null);
        }
    }

    @Override // p168r4.et3
    /* renamed from: d */
    public final long mo5023d(hv3[] hv3VarArr, boolean[] zArr, vu3[] vu3VarArr, boolean[] zArr2, long j) {
        boolean z;
        hv3 hv3Var;
        boolean z2;
        boolean z3;
        int i;
        m10811L();
        gu3 gu3Var = this.f24834F;
        j44 j44Var = gu3Var.f24243a;
        boolean[] zArr3 = gu3Var.f24245c;
        int i2 = this.f24841M;
        int i3 = 0;
        for (int i4 = 0; i4 < hv3VarArr.length; i4++) {
            vu3 vu3Var = vu3VarArr[i4];
            if (vu3Var != null && (hv3VarArr[i4] == null || !zArr[i4])) {
                i = ((eu3) vu3Var).f23152a;
                C5903ja.m10371d(zArr3[i]);
                this.f24841M--;
                zArr3[i] = false;
                vu3VarArr[i4] = null;
            }
        }
        if (!this.f24839K ? j != 0 : i2 == 0) {
            z = true;
        } else {
            z = false;
        }
        for (int i5 = 0; i5 < hv3VarArr.length; i5++) {
            if (vu3VarArr[i5] == null && (hv3Var = hv3VarArr[i5]) != null) {
                if (hv3Var.m10782b() == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                C5903ja.m10371d(z2);
                if (hv3Var.m10780d(0) == 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                C5903ja.m10371d(z3);
                int m10423b = j44Var.m10423b(hv3Var.m10783a());
                C5903ja.m10371d(!zArr3[m10423b]);
                this.f24841M++;
                zArr3[m10423b] = true;
                vu3VarArr[i5] = new eu3(this, m10423b);
                zArr2[i5] = true;
                if (!z) {
                    uu3 uu3Var = this.f24829A[m10423b];
                    if (!uu3Var.m6365E(j, true) && uu3Var.m6339y() != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
            }
        }
        if (this.f24841M == 0) {
            this.f24845Q = false;
            this.f24840L = false;
            if (this.f24858s.m9844i()) {
                uu3[] uu3VarArr = this.f24829A;
                int length = uu3VarArr.length;
                while (i3 < length) {
                    uu3VarArr[i3].m6361I();
                    i3++;
                }
                this.f24858s.m9843j();
            } else {
                for (uu3 uu3Var2 : this.f24829A) {
                    uu3Var2.m6344t(false);
                }
            }
        } else if (z) {
            j = mo5016p(j);
            while (i3 < vu3VarArr.length) {
                if (vu3VarArr[i3] != null) {
                    zArr2[i3] = true;
                }
                i3++;
            }
        }
        this.f24839K = true;
        return j;
    }

    @Override // p168r4.et3
    /* renamed from: e */
    public final j44 mo5022e() {
        m10811L();
        return this.f24834F.f24243a;
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: f */
    public final long mo4967f() {
        long j;
        m10811L();
        boolean[] zArr = this.f24834F.f24244b;
        if (this.f24847S) {
            return Long.MIN_VALUE;
        }
        if (m10812K()) {
            return this.f24844P;
        }
        if (this.f24833E) {
            int length = this.f24829A.length;
            j = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                if (zArr[i] && !this.f24829A[i].m6368B()) {
                    j = Math.min(j, this.f24829A[i].m6369A());
                }
            }
        } else {
            j = Long.MAX_VALUE;
        }
        if (j == Long.MAX_VALUE) {
            j = m10813J();
        }
        if (j == Long.MIN_VALUE) {
            return this.f24843O;
        }
        return j;
    }

    @Override // p168r4.et3
    /* renamed from: p */
    public final long mo5016p(long j) {
        m10811L();
        boolean[] zArr = this.f24834F.f24244b;
        if (true != this.f24835G.mo4487c()) {
            j = 0;
        }
        this.f24840L = false;
        this.f24843O = j;
        if (m10812K()) {
            this.f24844P = j;
            return j;
        }
        if (this.f24838J != 7) {
            int length = this.f24829A.length;
            for (int i = 0; i < length; i++) {
                if (this.f24829A[i].m6365E(j, false) || (!zArr[i] && this.f24833E)) {
                }
            }
            return j;
        }
        this.f24845Q = false;
        this.f24844P = j;
        this.f24847S = false;
        if (this.f24858s.m9844i()) {
            for (uu3 uu3Var : this.f24829A) {
                uu3Var.m6361I();
            }
            this.f24858s.m9843j();
        } else {
            this.f24858s.m9846g();
            for (uu3 uu3Var2 : this.f24829A) {
                uu3Var2.m6344t(false);
            }
        }
        return j;
    }

    @Override // p168r4.et3
    /* renamed from: q */
    public final void mo5015q(long j, boolean z) {
        m10811L();
        if (m10812K()) {
            return;
        }
        boolean[] zArr = this.f24834F.f24245c;
        int length = this.f24829A.length;
        for (int i = 0; i < length; i++) {
            this.f24829A[i].m6362H(j, false, zArr[i]);
        }
    }

    /* renamed from: t */
    public final int m10793t(int i, long j) {
        if (m10819C()) {
            return 0;
        }
        m10821A(i);
        uu3 uu3Var = this.f24829A[i];
        int m6364F = uu3Var.m6364F(j, this.f24847S);
        uu3Var.m6363G(m6364F);
        if (m6364F == 0) {
            m10820B(i);
            return 0;
        }
        return m6364F;
    }
}
