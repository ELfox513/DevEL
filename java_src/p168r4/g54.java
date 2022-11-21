package p168r4;
/* renamed from: r4.g54 */
/* loaded from: classes2.dex */
public final class g54 implements a04 {

    /* renamed from: j */
    public static final g04 f23893j = f54.f23383a;

    /* renamed from: c */
    public final C6423xb f23896c;

    /* renamed from: d */
    public final C6386wb f23897d;

    /* renamed from: e */
    public d04 f23898e;

    /* renamed from: f */
    public long f23899f;

    /* renamed from: h */
    public boolean f23901h;

    /* renamed from: i */
    public boolean f23902i;

    /* renamed from: a */
    public final h54 f23894a = new h54(true, null);

    /* renamed from: b */
    public final C6423xb f23895b = new C6423xb(2048);

    /* renamed from: g */
    public long f23900g = -1;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0052, code lost:
        r10.mo5959k();
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x005b, code lost:
        if ((r4 - r1) >= 8192) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0061, code lost:
        return false;
     */
    @Override // p168r4.a04
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo4475e(p168r4.b04 r10) {
        /*
            r9 = this;
            r0 = 0
            r1 = 0
        L2:
            r4.xb r2 = r9.f23896c
            byte[] r2 = r2.m5402q()
            r3 = r10
            r4.vz3 r3 = (p168r4.vz3) r3
            r4 = 10
            r3.mo5960i(r2, r0, r4, r0)
            r4.xb r2 = r9.f23896c
            r2.m5403p(r0)
            r4.xb r2 = r9.f23896c
            int r2 = r2.m5393z()
            r4 = 4801587(0x494433, float:6.728456E-39)
            if (r2 == r4) goto L90
            r10.mo5959k()
            r2 = r10
            r4.vz3 r2 = (p168r4.vz3) r2
            r2.m5955o(r1, r0)
            long r3 = r9.f23900g
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L34
            long r3 = (long) r1
            r9.f23900g = r3
        L34:
            r4 = r1
        L35:
            r3 = 0
            r5 = 0
        L37:
            r4.xb r6 = r9.f23896c
            byte[] r6 = r6.m5402q()
            r7 = 2
            r2.mo5960i(r6, r0, r7, r0)
            r4.xb r6 = r9.f23896c
            r6.m5403p(r0)
            r4.xb r6 = r9.f23896c
            int r6 = r6.m5396w()
            boolean r6 = p168r4.h54.m10981e(r6)
            if (r6 != 0) goto L62
            r10.mo5959k()
            int r4 = r4 + 1
            int r3 = r4 - r1
            r5 = 8192(0x2000, float:1.14794E-41)
            if (r3 >= r5) goto L61
            r2.m5955o(r4, r0)
            goto L35
        L61:
            return r0
        L62:
            r6 = 1
            int r3 = r3 + r6
            r7 = 4
            if (r3 < r7) goto L6d
            r8 = 188(0xbc, float:2.63E-43)
            if (r5 > r8) goto L6c
            goto L6d
        L6c:
            return r6
        L6d:
            r4.xb r6 = r9.f23896c
            byte[] r6 = r6.m5402q()
            r2.mo5960i(r6, r0, r7, r0)
            r4.wb r6 = r9.f23897d
            r7 = 14
            r6.m5789d(r7)
            r4.wb r6 = r9.f23897d
            r7 = 13
            int r6 = r6.m5785h(r7)
            r7 = 6
            if (r6 > r7) goto L89
            return r0
        L89:
            int r7 = r6 + (-6)
            r2.m5955o(r7, r0)
            int r5 = r5 + r6
            goto L37
        L90:
            r4.xb r2 = r9.f23896c
            r4 = 3
            r2.m5400s(r4)
            r4.xb r2 = r9.f23896c
            int r2 = r2.m5418a()
            int r4 = r2 + 10
            int r1 = r1 + r4
            r3.m5955o(r2, r0)
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.g54.mo4475e(r4.b04):boolean");
    }

    @Override // p168r4.a04
    /* renamed from: i */
    public final void mo4472i(long j, long j2) {
        this.f23901h = false;
        this.f23894a.zza();
        this.f23899f = j2;
    }

    @Override // p168r4.a04
    /* renamed from: f */
    public final int mo4474f(b04 b04Var, w04 w04Var) {
        C5903ja.m10370e(this.f23898e);
        int mo4060b = b04Var.mo4060b(this.f23895b.m5402q(), 0, 2048);
        if (!this.f23902i) {
            this.f23898e.mo10798j(new y04(-9223372036854775807L, 0L));
            this.f23902i = true;
        }
        if (mo4060b == -1) {
            return -1;
        }
        this.f23895b.m5403p(0);
        this.f23895b.m5405n(mo4060b);
        if (!this.f23901h) {
            this.f23894a.mo4422d(this.f23899f, 4);
            this.f23901h = true;
        }
        this.f23894a.mo4424b(this.f23895b);
        return 0;
    }

    @Override // p168r4.a04
    /* renamed from: h */
    public final void mo4473h(d04 d04Var) {
        this.f23898e = d04Var;
        this.f23894a.mo4425a(d04Var, new z64(Integer.MIN_VALUE, 0, 1));
        d04Var.mo10788y();
    }

    public g54(int i) {
        C6423xb c6423xb = new C6423xb(10);
        this.f23896c = c6423xb;
        byte[] m5402q = c6423xb.m5402q();
        this.f23897d = new C6386wb(m5402q, m5402q.length);
    }
}
