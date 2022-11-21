package p168r4;

import java.io.IOException;
/* renamed from: r4.xs3 */
/* loaded from: classes2.dex */
public final class xs3 implements et3, dt3 {

    /* renamed from: a */
    public final ft3 f33759a;

    /* renamed from: b */
    public final long f33760b;

    /* renamed from: d */
    public ht3 f33761d;

    /* renamed from: k */
    public et3 f33762k;

    /* renamed from: p */
    public dt3 f33763p;

    /* renamed from: q */
    public long f33764q = -9223372036854775807L;

    /* renamed from: r */
    public final qw3 f33765r;

    public xs3(ft3 ft3Var, qw3 qw3Var, long j, byte[] bArr) {
        this.f33759a = ft3Var;
        this.f33765r = qw3Var;
        this.f33760b = j;
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: a */
    public final void mo4969a(long j) {
        et3 et3Var = this.f33762k;
        int i = C5979lc.f27164a;
        et3Var.mo4969a(j);
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: c */
    public final boolean mo4968c(long j) {
        et3 et3Var = this.f33762k;
        return et3Var != null && et3Var.mo4968c(j);
    }

    @Override // p168r4.et3
    /* renamed from: d */
    public final long mo5023d(hv3[] hv3VarArr, boolean[] zArr, vu3[] vu3VarArr, boolean[] zArr2, long j) {
        long j2;
        long j3 = this.f33764q;
        if (j3 != -9223372036854775807L && j == this.f33760b) {
            this.f33764q = -9223372036854775807L;
            j2 = j3;
        } else {
            j2 = j;
        }
        et3 et3Var = this.f33762k;
        int i = C5979lc.f27164a;
        return et3Var.mo5023d(hv3VarArr, zArr, vu3VarArr, zArr2, j2);
    }

    @Override // p168r4.et3
    /* renamed from: e */
    public final j44 mo5022e() {
        et3 et3Var = this.f33762k;
        int i = C5979lc.f27164a;
        return et3Var.mo5022e();
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: f */
    public final long mo4967f() {
        et3 et3Var = this.f33762k;
        int i = C5979lc.f27164a;
        return et3Var.mo4967f();
    }

    @Override // p168r4.et3
    /* renamed from: g */
    public final long mo5021g() {
        et3 et3Var = this.f33762k;
        int i = C5979lc.f27164a;
        return et3Var.mo5021g();
    }

    @Override // p168r4.dt3
    /* renamed from: h */
    public final void mo4862h(et3 et3Var) {
        dt3 dt3Var = this.f33763p;
        int i = C5979lc.f27164a;
        dt3Var.mo4862h(this);
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: i */
    public final long mo4966i() {
        et3 et3Var = this.f33762k;
        int i = C5979lc.f27164a;
        return et3Var.mo4966i();
    }

    /* renamed from: k */
    public final long m5020k() {
        return this.f33760b;
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: l */
    public final boolean mo4965l() {
        et3 et3Var = this.f33762k;
        return et3Var != null && et3Var.mo4965l();
    }

    @Override // p168r4.et3
    /* renamed from: m */
    public final void mo5019m(dt3 dt3Var, long j) {
        this.f33763p = dt3Var;
        et3 et3Var = this.f33762k;
        if (et3Var != null) {
            et3Var.mo5019m(this, m5010v(this.f33760b));
        }
    }

    /* renamed from: n */
    public final void m5018n(long j) {
        this.f33764q = j;
    }

    @Override // p168r4.et3
    /* renamed from: o */
    public final long mo5017o(long j, C5937k7 c5937k7) {
        et3 et3Var = this.f33762k;
        int i = C5979lc.f27164a;
        return et3Var.mo5017o(j, c5937k7);
    }

    @Override // p168r4.et3
    /* renamed from: p */
    public final long mo5016p(long j) {
        et3 et3Var = this.f33762k;
        int i = C5979lc.f27164a;
        return et3Var.mo5016p(j);
    }

    @Override // p168r4.et3
    /* renamed from: q */
    public final void mo5015q(long j, boolean z) {
        et3 et3Var = this.f33762k;
        int i = C5979lc.f27164a;
        et3Var.mo5015q(j, false);
    }

    /* renamed from: r */
    public final long m5014r() {
        return this.f33764q;
    }

    /* renamed from: s */
    public final void m5013s(ht3 ht3Var) {
        C5903ja.m10371d(this.f33761d == null);
        this.f33761d = ht3Var;
    }

    /* renamed from: v */
    public final long m5010v(long j) {
        long j2 = this.f33764q;
        return j2 != -9223372036854775807L ? j2 : j;
    }

    @Override // p168r4.et3
    /* renamed from: b */
    public final void mo5024b() {
        try {
            et3 et3Var = this.f33762k;
            if (et3Var != null) {
                et3Var.mo5024b();
                return;
            }
            ht3 ht3Var = this.f33761d;
            if (ht3Var != null) {
                ht3Var.mo6009t();
            }
        } catch (IOException e) {
            throw e;
        }
    }

    @Override // p168r4.wu3
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ void mo4858j(et3 et3Var) {
        dt3 dt3Var = this.f33763p;
        int i = C5979lc.f27164a;
        dt3Var.mo4858j(this);
    }

    /* renamed from: t */
    public final void m5012t(ft3 ft3Var) {
        long m5010v = m5010v(this.f33760b);
        ht3 ht3Var = this.f33761d;
        ht3Var.getClass();
        et3 mo6013b = ht3Var.mo6013b(ft3Var, this.f33765r, m5010v);
        this.f33762k = mo6013b;
        if (this.f33763p != null) {
            mo6013b.mo5019m(this, m5010v);
        }
    }

    /* renamed from: u */
    public final void m5011u() {
        et3 et3Var = this.f33762k;
        if (et3Var != null) {
            ht3 ht3Var = this.f33761d;
            ht3Var.getClass();
            ht3Var.mo6012h(et3Var);
        }
    }
}
