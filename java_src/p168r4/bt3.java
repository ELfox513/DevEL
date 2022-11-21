package p168r4;
/* renamed from: r4.bt3 */
/* loaded from: classes2.dex */
public final class bt3 extends ps3<Void> {

    /* renamed from: j */
    public final ht3 f21210j;

    /* renamed from: k */
    public final boolean f21211k;

    /* renamed from: l */
    public final C5679d8 f21212l;

    /* renamed from: m */
    public final C5606b8 f21213m;

    /* renamed from: n */
    public ys3 f21214n;

    /* renamed from: o */
    public xs3 f21215o;

    /* renamed from: p */
    public boolean f21216p;

    /* renamed from: q */
    public boolean f21217q;

    /* renamed from: r */
    public boolean f21218r;

    /* renamed from: F */
    public final AbstractC5717e8 m12696F() {
        return this.f21214n;
    }

    @Override // p168r4.ht3
    /* renamed from: h */
    public final void mo6012h(et3 et3Var) {
        ((xs3) et3Var).m5011u();
        if (et3Var == this.f21215o) {
            this.f21215o = null;
        }
    }

    @Override // p168r4.ps3, p168r4.so3
    /* renamed from: p */
    public final void mo6010p() {
        this.f21217q = false;
        this.f21216p = false;
        super.mo6010p();
    }

    @Override // p168r4.ps3, p168r4.ht3
    /* renamed from: t */
    public final void mo6009t() {
    }

    @Override // p168r4.ht3
    /* renamed from: v */
    public final C6306u5 mo6008v() {
        return this.f21210j.mo6008v();
    }

    @Override // p168r4.ps3
    /* renamed from: B */
    public final /* bridge */ /* synthetic */ ft3 mo6014B(Void r2, ft3 ft3Var) {
        Object obj = ft3Var.f23237a;
        if (ys3.m4580p(this.f21214n) != null && ys3.m4580p(this.f21214n).equals(obj)) {
            obj = ys3.f34194f;
        }
        return ft3Var.m11366c(obj);
    }

    @Override // p168r4.ht3
    /* renamed from: C */
    public final xs3 mo6013b(ft3 ft3Var, qw3 qw3Var, long j) {
        xs3 xs3Var = new xs3(ft3Var, qw3Var, j, null);
        xs3Var.m5013s(this.f21210j);
        if (this.f21217q) {
            xs3Var.m5012t(ft3Var.m11366c(m12698D(ft3Var.f23237a)));
        } else {
            this.f21215o = xs3Var;
            if (!this.f21216p) {
                this.f21216p = true;
                m8216A(null, this.f21210j);
            }
        }
        return xs3Var;
    }

    /* renamed from: D */
    public final Object m12698D(Object obj) {
        if (ys3.m4580p(this.f21214n) != null && obj.equals(ys3.f34194f)) {
            return ys3.m4580p(this.f21214n);
        }
        return obj;
    }

    /* renamed from: E */
    public final void m12697E(long j) {
        xs3 xs3Var = this.f21215o;
        int mo4072i = this.f21214n.mo4072i(xs3Var.f33759a.f23237a);
        if (mo4072i == -1) {
            return;
        }
        ys3 ys3Var = this.f21214n;
        C5606b8 c5606b8 = this.f21213m;
        ys3Var.mo4073h(mo4072i, c5606b8, false);
        long j2 = c5606b8.f20896d;
        if (j2 != -9223372036854775807L && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        xs3Var.m5018n(j);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0090  */
    @Override // p168r4.ps3
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ void mo6007z(java.lang.Void r12, p168r4.ht3 r13, p168r4.AbstractC5717e8 r14) {
        /*
            r11 = this;
            java.lang.Void r12 = (java.lang.Void) r12
            boolean r12 = r11.f21217q
            r13 = 0
            if (r12 == 0) goto L1c
            r4.ys3 r12 = r11.f21214n
            r4.ys3 r12 = r12.m4577s(r14)
            r11.f21214n = r12
            r4.xs3 r12 = r11.f21215o
            if (r12 == 0) goto L9f
            long r0 = r12.m5014r()
            r11.m12697E(r0)
            goto L9f
        L1c:
            boolean r12 = r14.m11843k()
            if (r12 == 0) goto L38
            boolean r12 = r11.f21218r
            if (r12 == 0) goto L2d
            r4.ys3 r12 = r11.f21214n
            r4.ys3 r12 = r12.m4577s(r14)
            goto L35
        L2d:
            java.lang.Object r12 = p168r4.C5679d8.f22142o
            java.lang.Object r0 = p168r4.ys3.f34194f
            r4.ys3 r12 = p168r4.ys3.m4578r(r14, r12, r0)
        L35:
            r11.f21214n = r12
            goto L9f
        L38:
            r4.d8 r12 = r11.f21212l
            r0 = 0
            r1 = 0
            r14.mo4075f(r0, r12, r1)
            r4.d8 r12 = r11.f21212l
            java.lang.Object r12 = r12.f22146a
            r4.xs3 r3 = r11.f21215o
            if (r3 == 0) goto L66
            long r3 = r3.m5020k()
            r4.ys3 r5 = r11.f21214n
            r4.xs3 r6 = r11.f21215o
            r4.ft3 r6 = r6.f33759a
            java.lang.Object r6 = r6.f23237a
            r4.b8 r7 = r11.f21213m
            r5.mo6932o(r6, r7)
            r4.ys3 r5 = r11.f21214n
            r4.d8 r6 = r11.f21212l
            r5.mo4075f(r0, r6, r1)
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 == 0) goto L66
            r9 = r3
            goto L67
        L66:
            r9 = r1
        L67:
            r4.d8 r6 = r11.f21212l
            r4.b8 r7 = r11.f21213m
            r8 = 0
            r5 = r14
            android.util.Pair r0 = r5.m11841m(r6, r7, r8, r9)
            java.lang.Object r1 = r0.first
            java.lang.Object r0 = r0.second
            java.lang.Long r0 = (java.lang.Long) r0
            long r2 = r0.longValue()
            boolean r0 = r11.f21218r
            if (r0 == 0) goto L86
            r4.ys3 r12 = r11.f21214n
            r4.ys3 r12 = r12.m4577s(r14)
            goto L8a
        L86:
            r4.ys3 r12 = p168r4.ys3.m4578r(r14, r12, r1)
        L8a:
            r11.f21214n = r12
            r4.xs3 r12 = r11.f21215o
            if (r12 == 0) goto L9f
            r11.m12697E(r2)
            r4.ft3 r12 = r12.f33759a
            java.lang.Object r13 = r12.f23237a
            java.lang.Object r13 = r11.m12698D(r13)
            r4.ft3 r13 = r12.m11366c(r13)
        L9f:
            r12 = 1
            r11.f21218r = r12
            r11.f21217q = r12
            r4.ys3 r12 = r11.f21214n
            r11.m7082q(r12)
            if (r13 == 0) goto Lb3
            r4.xs3 r12 = r11.f21215o
            r12.getClass()
            r12.m5012t(r13)
        Lb3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.bt3.mo6007z(java.lang.Object, r4.ht3, r4.e8):void");
    }

    public bt3(ht3 ht3Var, boolean z) {
        boolean z2;
        this.f21210j = ht3Var;
        if (z) {
            ht3Var.mo7084n();
            z2 = true;
        } else {
            z2 = false;
        }
        this.f21211k = z2;
        this.f21212l = new C5679d8();
        this.f21213m = new C5606b8();
        ht3Var.mo7081r();
        this.f21214n = ys3.m4579q(ht3Var.mo6008v());
    }

    @Override // p168r4.ps3, p168r4.so3
    /* renamed from: m */
    public final void mo6011m(InterfaceC5844ho interfaceC5844ho) {
        super.mo6011m(interfaceC5844ho);
        if (!this.f21211k) {
            this.f21216p = true;
            m8216A(null, this.f21210j);
        }
    }
}
