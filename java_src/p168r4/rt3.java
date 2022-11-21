package p168r4;
/* renamed from: r4.rt3 */
/* loaded from: classes2.dex */
public final class rt3 implements et3, dt3 {

    /* renamed from: a */
    public final et3 f30685a;

    /* renamed from: b */
    public final long f30686b;

    /* renamed from: d */
    public dt3 f30687d;

    public rt3(et3 et3Var, long j) {
        this.f30685a = et3Var;
        this.f30686b = j;
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: a */
    public final void mo4969a(long j) {
        this.f30685a.mo4969a(j - this.f30686b);
    }

    @Override // p168r4.et3
    /* renamed from: b */
    public final void mo5024b() {
        this.f30685a.mo5024b();
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: c */
    public final boolean mo4968c(long j) {
        return this.f30685a.mo4968c(j - this.f30686b);
    }

    @Override // p168r4.et3
    /* renamed from: d */
    public final long mo5023d(hv3[] hv3VarArr, boolean[] zArr, vu3[] vu3VarArr, boolean[] zArr2, long j) {
        vu3[] vu3VarArr2 = new vu3[vu3VarArr.length];
        int i = 0;
        while (true) {
            vu3 vu3Var = null;
            if (i >= vu3VarArr.length) {
                break;
            }
            st3 st3Var = (st3) vu3VarArr[i];
            if (st3Var != null) {
                vu3Var = st3Var.m6995e();
            }
            vu3VarArr2[i] = vu3Var;
            i++;
        }
        long mo5023d = this.f30685a.mo5023d(hv3VarArr, zArr, vu3VarArr2, zArr2, j - this.f30686b);
        for (int i2 = 0; i2 < vu3VarArr.length; i2++) {
            vu3 vu3Var2 = vu3VarArr2[i2];
            if (vu3Var2 == null) {
                vu3VarArr[i2] = null;
            } else {
                vu3 vu3Var3 = vu3VarArr[i2];
                if (vu3Var3 == null || ((st3) vu3Var3).m6995e() != vu3Var2) {
                    vu3VarArr[i2] = new st3(vu3Var2, this.f30686b);
                }
            }
        }
        return mo5023d + this.f30686b;
    }

    @Override // p168r4.et3
    /* renamed from: e */
    public final j44 mo5022e() {
        return this.f30685a.mo5022e();
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: f */
    public final long mo4967f() {
        long mo4967f = this.f30685a.mo4967f();
        if (mo4967f == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return mo4967f + this.f30686b;
    }

    @Override // p168r4.et3
    /* renamed from: g */
    public final long mo5021g() {
        long mo5021g = this.f30685a.mo5021g();
        if (mo5021g == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return mo5021g + this.f30686b;
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: i */
    public final long mo4966i() {
        long mo4966i = this.f30685a.mo4966i();
        if (mo4966i == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return mo4966i + this.f30686b;
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: l */
    public final boolean mo4965l() {
        return this.f30685a.mo4965l();
    }

    @Override // p168r4.et3
    /* renamed from: m */
    public final void mo5019m(dt3 dt3Var, long j) {
        this.f30687d = dt3Var;
        this.f30685a.mo5019m(this, j - this.f30686b);
    }

    @Override // p168r4.et3
    /* renamed from: o */
    public final long mo5017o(long j, C5937k7 c5937k7) {
        return this.f30685a.mo5017o(j - this.f30686b, c5937k7) + this.f30686b;
    }

    @Override // p168r4.et3
    /* renamed from: p */
    public final long mo5016p(long j) {
        return this.f30685a.mo5016p(j - this.f30686b) + this.f30686b;
    }

    @Override // p168r4.et3
    /* renamed from: q */
    public final void mo5015q(long j, boolean z) {
        this.f30685a.mo5015q(j - this.f30686b, false);
    }

    @Override // p168r4.dt3
    /* renamed from: h */
    public final void mo4862h(et3 et3Var) {
        dt3 dt3Var = this.f30687d;
        dt3Var.getClass();
        dt3Var.mo4862h(this);
    }

    @Override // p168r4.wu3
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ void mo4858j(et3 et3Var) {
        dt3 dt3Var = this.f30687d;
        dt3Var.getClass();
        dt3Var.mo4858j(this);
    }
}
