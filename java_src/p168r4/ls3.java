package p168r4;
/* renamed from: r4.ls3 */
/* loaded from: classes2.dex */
public final class ls3 implements et3, dt3 {

    /* renamed from: a */
    public final et3 f27356a;

    /* renamed from: b */
    public dt3 f27357b;

    /* renamed from: d */
    public ur3[] f27358d = new ur3[0];

    /* renamed from: k */
    public long f27359k = 0;

    /* renamed from: p */
    public long f27360p;

    public ls3(et3 et3Var, boolean z, long j, long j2) {
        this.f27356a = et3Var;
        this.f27360p = j2;
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: a */
    public final void mo4969a(long j) {
        this.f27356a.mo4969a(j);
    }

    @Override // p168r4.et3
    /* renamed from: b */
    public final void mo5024b() {
        this.f27356a.mo5024b();
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: c */
    public final boolean mo4968c(long j) {
        return this.f27356a.mo4968c(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004a, code lost:
        if (r4 > r7) goto L19;
     */
    @Override // p168r4.et3
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo5023d(p168r4.hv3[] r14, boolean[] r15, p168r4.vu3[] r16, boolean[] r17, long r18) {
        /*
            r13 = this;
            r0 = r13
            r1 = r16
            int r2 = r1.length
            r4.ur3[] r3 = new p168r4.ur3[r2]
            r0.f27358d = r3
            r4.vu3[] r2 = new p168r4.vu3[r2]
            r3 = 0
            r4 = 0
        Lc:
            int r5 = r1.length
            r11 = 0
            if (r4 >= r5) goto L21
            r4.ur3[] r5 = r0.f27358d
            r6 = r1[r4]
            r4.ur3 r6 = (p168r4.ur3) r6
            r5[r4] = r6
            if (r6 == 0) goto L1c
            r4.vu3 r11 = r6.f32362a
        L1c:
            r2[r4] = r11
            int r4 = r4 + 1
            goto Lc
        L21:
            r4.et3 r4 = r0.f27356a
            r5 = r14
            r6 = r15
            r7 = r2
            r8 = r17
            r9 = r18
            long r4 = r4.mo5023d(r5, r6, r7, r8, r9)
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f27359k = r6
            r6 = 1
            int r7 = (r4 > r18 ? 1 : (r4 == r18 ? 0 : -1))
            if (r7 == 0) goto L4e
            r7 = 0
            int r9 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r9 < 0) goto L4d
            long r7 = r0.f27360p
            r9 = -9223372036854775808
            int r12 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r12 == 0) goto L4e
            int r9 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r9 > 0) goto L4d
            goto L4e
        L4d:
            r6 = 0
        L4e:
            p168r4.C5903ja.m10371d(r6)
        L51:
            int r6 = r1.length
            if (r3 >= r6) goto L77
            r6 = r2[r3]
            if (r6 != 0) goto L5d
            r4.ur3[] r6 = r0.f27358d
            r6[r3] = r11
            goto L6e
        L5d:
            r4.ur3[] r7 = r0.f27358d
            r8 = r7[r3]
            if (r8 == 0) goto L67
            r4.vu3 r8 = r8.f32362a
            if (r8 == r6) goto L6e
        L67:
            r4.ur3 r8 = new r4.ur3
            r8.<init>(r13, r6)
            r7[r3] = r8
        L6e:
            r4.ur3[] r6 = r0.f27358d
            r6 = r6[r3]
            r1[r3] = r6
            int r3 = r3 + 1
            goto L51
        L77:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.ls3.mo5023d(r4.hv3[], boolean[], r4.vu3[], boolean[], long):long");
    }

    @Override // p168r4.et3
    /* renamed from: e */
    public final j44 mo5022e() {
        return this.f27356a.mo5022e();
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: f */
    public final long mo4967f() {
        long mo4967f = this.f27356a.mo4967f();
        if (mo4967f != Long.MIN_VALUE) {
            long j = this.f27360p;
            if (j == Long.MIN_VALUE || mo4967f < j) {
                return mo4967f;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: i */
    public final long mo4966i() {
        long mo4966i = this.f27356a.mo4966i();
        if (mo4966i != Long.MIN_VALUE) {
            long j = this.f27360p;
            if (j == Long.MIN_VALUE || mo4966i < j) {
                return mo4966i;
            }
        }
        return Long.MIN_VALUE;
    }

    /* renamed from: k */
    public final void m9570k(long j, long j2) {
        this.f27360p = j2;
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: l */
    public final boolean mo4965l() {
        return this.f27356a.mo4965l();
    }

    @Override // p168r4.et3
    /* renamed from: m */
    public final void mo5019m(dt3 dt3Var, long j) {
        this.f27357b = dt3Var;
        this.f27356a.mo5019m(this, j);
    }

    /* renamed from: n */
    public final boolean m9569n() {
        return this.f27359k != -9223372036854775807L;
    }

    @Override // p168r4.et3
    /* renamed from: q */
    public final void mo5015q(long j, boolean z) {
        this.f27356a.mo5015q(j, false);
    }

    @Override // p168r4.dt3
    /* renamed from: h */
    public final void mo4862h(et3 et3Var) {
        dt3 dt3Var = this.f27357b;
        dt3Var.getClass();
        dt3Var.mo4862h(this);
    }

    @Override // p168r4.wu3
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ void mo4858j(et3 et3Var) {
        dt3 dt3Var = this.f27357b;
        dt3Var.getClass();
        dt3Var.mo4858j(this);
    }

    @Override // p168r4.et3
    /* renamed from: o */
    public final long mo5017o(long j, C5937k7 c5937k7) {
        long j2;
        if (j != 0) {
            long m9703d0 = C5979lc.m9703d0(c5937k7.f26334a, 0L, j);
            long j3 = c5937k7.f26335b;
            long j4 = this.f27360p;
            if (j4 == Long.MIN_VALUE) {
                j2 = Long.MAX_VALUE;
            } else {
                j2 = j4 - j;
            }
            long m9703d02 = C5979lc.m9703d0(j3, 0L, j2);
            if (m9703d0 != c5937k7.f26334a || m9703d02 != c5937k7.f26335b) {
                c5937k7 = new C5937k7(m9703d0, m9703d02);
            }
            return this.f27356a.mo5017o(j, c5937k7);
        }
        return 0L;
    }

    @Override // p168r4.et3
    /* renamed from: g */
    public final long mo5021g() {
        boolean z;
        if (m9569n()) {
            long j = this.f27359k;
            this.f27359k = -9223372036854775807L;
            long mo5021g = mo5021g();
            if (mo5021g != -9223372036854775807L) {
                return mo5021g;
            }
            return j;
        }
        long mo5021g2 = this.f27356a.mo5021g();
        if (mo5021g2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        boolean z2 = false;
        if (mo5021g2 >= 0) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10371d(z);
        long j2 = this.f27360p;
        C5903ja.m10371d((j2 == Long.MIN_VALUE || mo5021g2 <= j2) ? true : true);
        return mo5021g2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
        if (r0 > r8) goto L18;
     */
    @Override // p168r4.et3
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo5016p(long r8) {
        /*
            r7 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7.f27359k = r0
            r4.ur3[] r0 = r7.f27358d
            int r1 = r0.length
            r2 = 0
            r3 = 0
        Lc:
            if (r3 >= r1) goto L18
            r4 = r0[r3]
            if (r4 == 0) goto L15
            r4.m6390e()
        L15:
            int r3 = r3 + 1
            goto Lc
        L18:
            r4.et3 r0 = r7.f27356a
            long r0 = r0.mo5016p(r8)
            r3 = 1
            int r4 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r4 == 0) goto L35
            r8 = 0
            int r4 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r4 < 0) goto L36
            long r8 = r7.f27360p
            r4 = -9223372036854775808
            int r6 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r6 == 0) goto L35
            int r4 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r4 > 0) goto L36
        L35:
            r2 = 1
        L36:
            p168r4.C5903ja.m10371d(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.ls3.mo5016p(long):long");
    }
}
