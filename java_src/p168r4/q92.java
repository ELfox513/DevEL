package p168r4;

import android.os.RemoteException;
/* renamed from: r4.q92 */
/* loaded from: classes2.dex */
public final class q92 {

    /* renamed from: a */
    public final pj1 f30054a;

    /* renamed from: b */
    public final d92 f30055b;

    /* renamed from: c */
    public final m71 f30056c;

    /* renamed from: a */
    public final void m7929a(InterfaceC5887iv interfaceC5887iv) {
        this.f30055b.m12192v(interfaceC5887iv);
    }

    /* renamed from: b */
    public final mh1 m7928b() {
        return new mh1(this.f30054a, this.f30055b.m12194c());
    }

    /* renamed from: c */
    public final d92 m7927c() {
        return this.f30055b;
    }

    /* renamed from: d */
    public final y81 m7926d() {
        return this.f30055b;
    }

    /* renamed from: e */
    public final m71 m7925e() {
        return this.f30056c;
    }

    public q92(pj1 pj1Var, xt2 xt2Var) {
        this.f30054a = pj1Var;
        final d92 d92Var = new d92(xt2Var);
        this.f30055b = d92Var;
        final c80 m8305e = pj1Var.m8305e();
        this.f30056c = new m71(d92Var, m8305e) { // from class: r4.p92

            /* renamed from: a */
            public final d92 f29398a;

            /* renamed from: b */
            public final c80 f29399b;

            {
                this.f29398a = d92Var;
                this.f29399b = m8305e;
            }

            @Override // p168r4.m71
            /* renamed from: B */
            public final void mo5143B(C5996lt c5996lt) {
                d92 d92Var2 = this.f29398a;
                c80 c80Var = this.f29399b;
                d92Var2.mo5143B(c5996lt);
                if (c80Var != null) {
                    try {
                        c80Var.mo12510F(c5996lt);
                    } catch (RemoteException e) {
                        cm0.m12434i("#007 Could not call remote method.", e);
                    }
                }
                if (c80Var != null) {
                    try {
                        c80Var.mo12511C(c5996lt.f27361a);
                    } catch (RemoteException e2) {
                        cm0.m12434i("#007 Could not call remote method.", e2);
                    }
                }
            }
        };
    }
}
