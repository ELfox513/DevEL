package p168r4;

import java.util.concurrent.atomic.AtomicReference;
import p004a3.InterfaceC0076q;
/* renamed from: r4.fk2 */
/* loaded from: classes2.dex */
public final class fk2 implements m71, k91, xl2, InterfaceC0076q, w91, z71, cf1 {

    /* renamed from: a */
    public final pq2 f23535a;

    /* renamed from: b */
    public final AtomicReference<InterfaceC5807go> f23536b = new AtomicReference<>();

    /* renamed from: d */
    public final AtomicReference<C5881io> f23537d = new AtomicReference<>();

    /* renamed from: k */
    public final AtomicReference<InterfaceC5954ko> f23538k = new AtomicReference<>();

    /* renamed from: p */
    public final AtomicReference<k91> f23539p = new AtomicReference<>();

    /* renamed from: q */
    public final AtomicReference<InterfaceC0076q> f23540q = new AtomicReference<>();

    /* renamed from: r */
    public final AtomicReference<InterfaceC5742ex> f23541r = new AtomicReference<>();

    /* renamed from: s */
    public fk2 f23542s = null;

    /* renamed from: d */
    public static fk2 m11497d(fk2 fk2Var) {
        fk2 fk2Var2 = new fk2(fk2Var.f23535a);
        fk2Var2.f23542s = fk2Var;
        return fk2Var2;
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: A2 */
    public final void mo4171A2() {
    }

    /* renamed from: L */
    public final void m11498L(C5881io c5881io) {
        this.f23537d.set(c5881io);
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: e3 */
    public final void mo4165e3() {
    }

    /* renamed from: g */
    public final void m11496g(InterfaceC5807go interfaceC5807go) {
        this.f23536b.set(interfaceC5807go);
    }

    /* renamed from: j */
    public final void m11495j(InterfaceC5954ko interfaceC5954ko) {
        this.f23538k.set(interfaceC5954ko);
    }

    /* renamed from: p */
    public final void m11494p(k91 k91Var) {
        this.f23539p.set(k91Var);
    }

    /* renamed from: q */
    public final void m11493q(InterfaceC0076q interfaceC0076q) {
        this.f23540q.set(interfaceC0076q);
    }

    @Override // p168r4.xl2
    /* renamed from: s */
    public final void mo5284s(xl2 xl2Var) {
        this.f23542s = (fk2) xl2Var;
    }

    /* renamed from: v */
    public final void m11492v(InterfaceC5742ex interfaceC5742ex) {
        this.f23541r.set(interfaceC5742ex);
    }

    /* renamed from: A */
    public final void m11499A() {
        fk2 fk2Var = this.f23542s;
        if (fk2Var != null) {
            fk2Var.m11499A();
            return;
        }
        this.f23535a.m8221b();
        ol2.m8771a(this.f23537d, zj2.f34652a);
        ol2.m8771a(this.f23538k, ak2.f20535a);
    }

    @Override // p168r4.m71
    /* renamed from: B */
    public final void mo5143B(final C5996lt c5996lt) {
        fk2 fk2Var = this.f23542s;
        if (fk2Var != null) {
            fk2Var.mo5143B(c5996lt);
            return;
        }
        ol2.m8771a(this.f23536b, new nl2(c5996lt) { // from class: r4.xj2

            /* renamed from: a */
            public final C5996lt f33617a;

            {
                this.f33617a = c5996lt;
            }

            @Override // p168r4.nl2
            /* renamed from: a */
            public final void mo4181a(Object obj) {
                ((InterfaceC5807go) obj).mo11096g0(this.f33617a);
            }
        });
        ol2.m8771a(this.f23536b, new nl2(c5996lt) { // from class: r4.yj2

            /* renamed from: a */
            public final C5996lt f34111a;

            {
                this.f34111a = c5996lt;
            }

            @Override // p168r4.nl2
            /* renamed from: a */
            public final void mo4181a(Object obj) {
                ((InterfaceC5807go) obj).mo11097D(this.f34111a.f27361a);
            }
        });
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: C6 */
    public final void mo4170C6(final int i) {
        fk2 fk2Var = this.f23542s;
        if (fk2Var != null) {
            fk2Var.mo4170C6(i);
        } else {
            ol2.m8771a(this.f23540q, new nl2(i) { // from class: r4.rj2

                /* renamed from: a */
                public final int f30605a;

                {
                    this.f30605a = i;
                }

                @Override // p168r4.nl2
                /* renamed from: a */
                public final void mo4181a(Object obj) {
                    ((InterfaceC0076q) obj).mo4170C6(this.f30605a);
                }
            });
        }
    }

    @Override // p168r4.cf1
    /* renamed from: a */
    public final void mo5096a() {
        fk2 fk2Var = this.f23542s;
        if (fk2Var != null) {
            fk2Var.mo5096a();
        } else {
            ol2.m8771a(this.f23538k, uj2.f32304a);
        }
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: c */
    public final void mo4168c() {
        fk2 fk2Var = this.f23542s;
        if (fk2Var != null) {
            fk2Var.mo4168c();
        } else {
            ol2.m8771a(this.f23540q, tj2.f31877a);
        }
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: e */
    public final void mo4166e() {
        fk2 fk2Var = this.f23542s;
        if (fk2Var != null) {
            fk2Var.mo4166e();
        } else {
            ol2.m8771a(this.f23540q, sj2.f31382a);
        }
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: j0 */
    public final void mo4163j0() {
        fk2 fk2Var = this.f23542s;
        if (fk2Var != null) {
            fk2Var.mo4163j0();
            return;
        }
        ol2.m8771a(this.f23540q, ck2.f21571a);
        ol2.m8771a(this.f23538k, dk2.f22309a);
        ol2.m8771a(this.f23538k, ek2.f23057a);
    }

    @Override // p168r4.z71
    /* renamed from: o */
    public final void mo4410o(final C5996lt c5996lt) {
        fk2 fk2Var = this.f23542s;
        if (fk2Var != null) {
            fk2Var.mo4410o(c5996lt);
        } else {
            ol2.m8771a(this.f23538k, new nl2(c5996lt) { // from class: r4.vj2

                /* renamed from: a */
                public final C5996lt f32738a;

                {
                    this.f32738a = c5996lt;
                }

                @Override // p168r4.nl2
                /* renamed from: a */
                public final void mo4181a(Object obj) {
                    ((InterfaceC5954ko) obj).mo9991q0(this.f32738a);
                }
            });
        }
    }

    @Override // p168r4.k91
    /* renamed from: o0 */
    public final void mo5380o0() {
        fk2 fk2Var = this.f23542s;
        if (fk2Var != null) {
            fk2Var.mo5380o0();
        } else {
            ol2.m8771a(this.f23539p, bk2.f21090a);
        }
    }

    @Override // p168r4.w91
    /* renamed from: u */
    public final void mo5377u(final C5591au c5591au) {
        fk2 fk2Var = this.f23542s;
        if (fk2Var != null) {
            fk2Var.mo5377u(c5591au);
        } else {
            ol2.m8771a(this.f23541r, new nl2(c5591au) { // from class: r4.qj2

                /* renamed from: a */
                public final C5591au f30161a;

                {
                    this.f30161a = c5591au;
                }

                @Override // p168r4.nl2
                /* renamed from: a */
                public final void mo4181a(Object obj) {
                    ((InterfaceC5742ex) obj).mo7279v5(this.f30161a);
                }
            });
        }
    }

    /* renamed from: z */
    public final void m11491z(final InterfaceC5695do interfaceC5695do) {
        fk2 fk2Var = this.f23542s;
        if (fk2Var != null) {
            fk2Var.m11491z(interfaceC5695do);
        } else {
            ol2.m8771a(this.f23536b, new nl2(interfaceC5695do) { // from class: r4.wj2

                /* renamed from: a */
                public final InterfaceC5695do f33205a;

                {
                    this.f33205a = interfaceC5695do;
                }

                @Override // p168r4.nl2
                /* renamed from: a */
                public final void mo4181a(Object obj) {
                    ((InterfaceC5807go) obj).mo11095p3(this.f33205a);
                }
            });
        }
    }

    public fk2(pq2 pq2Var) {
        this.f23535a = pq2Var;
    }
}
