package p168r4;

import p235z2.C7601t;
/* renamed from: r4.ou1 */
/* loaded from: classes2.dex */
public final class ou1 extends j70 {

    /* renamed from: a */
    public final /* synthetic */ Object f29140a;

    /* renamed from: b */
    public final /* synthetic */ String f29141b;

    /* renamed from: d */
    public final /* synthetic */ long f29142d;

    /* renamed from: k */
    public final /* synthetic */ vm0 f29143k;

    /* renamed from: p */
    public final /* synthetic */ pu1 f29144p;

    public ou1(pu1 pu1Var, Object obj, String str, long j, vm0 vm0Var) {
        this.f29144p = pu1Var;
        this.f29140a = obj;
        this.f29141b = str;
        this.f29142d = j;
        this.f29143k = vm0Var;
    }

    @Override // p168r4.k70
    /* renamed from: c */
    public final void mo8684c() {
        us1 us1Var;
        ge1 ge1Var;
        synchronized (this.f29140a) {
            this.f29144p.m8186u(this.f29141b, true, "", (int) (C7601t.m932k().mo24762b() - this.f29142d));
            us1Var = this.f29144p.f29591l;
            us1Var.m6388b(this.f29141b);
            ge1Var = this.f29144p.f29594o;
            ge1Var.mo8955u(this.f29141b);
            this.f29143k.m6086e(Boolean.TRUE);
        }
    }

    @Override // p168r4.k70
    /* renamed from: s */
    public final void mo8683s(String str) {
        us1 us1Var;
        ge1 ge1Var;
        synchronized (this.f29140a) {
            this.f29144p.m8186u(this.f29141b, false, str, (int) (C7601t.m932k().mo24762b() - this.f29142d));
            us1Var = this.f29144p.f29591l;
            us1Var.m6387c(this.f29141b, "error");
            ge1Var = this.f29144p.f29594o;
            ge1Var.mo8959b0(this.f29141b, "error");
            this.f29143k.m6086e(Boolean.FALSE);
        }
    }
}
