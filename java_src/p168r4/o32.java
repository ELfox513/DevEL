package p168r4;

import java.util.concurrent.Executor;
import p060f4.InterfaceC3512a;
/* renamed from: r4.o32 */
/* loaded from: classes2.dex */
public final class o32 extends ph0 implements u81 {

    /* renamed from: a */
    public qh0 f28837a;

    /* renamed from: b */
    public t81 f28838b;

    /* renamed from: d */
    public nf1 f28839d;

    @Override // p168r4.qh0
    /* renamed from: I5 */
    public final synchronized void mo7856I5(InterfaceC3512a interfaceC3512a) {
        qh0 qh0Var = this.f28837a;
        if (qh0Var != null) {
            ((k62) qh0Var).f26313a.mo4163j0();
        }
    }

    @Override // p168r4.qh0
    /* renamed from: M */
    public final synchronized void mo7855M(InterfaceC3512a interfaceC3512a) {
        Executor executor;
        nf1 nf1Var = this.f28839d;
        if (nf1Var != null) {
            executor = ((j62) nf1Var).f25939d.f27112b;
            final bp2 bp2Var = ((j62) nf1Var).f25936a;
            final no2 no2Var = ((j62) nf1Var).f25937b;
            final t12 t12Var = ((j62) nf1Var).f25938c;
            final j62 j62Var = (j62) nf1Var;
            executor.execute(new Runnable(j62Var, bp2Var, no2Var, t12Var) { // from class: r4.i62

                /* renamed from: a */
                public final j62 f24984a;

                /* renamed from: b */
                public final bp2 f24985b;

                /* renamed from: d */
                public final no2 f24986d;

                /* renamed from: k */
                public final t12 f24987k;

                {
                    this.f24984a = j62Var;
                    this.f24985b = bp2Var;
                    this.f24986d = no2Var;
                    this.f24987k = t12Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    j62 j62Var2 = this.f24984a;
                    bp2 bp2Var2 = this.f24985b;
                    no2 no2Var2 = this.f24986d;
                    t12 t12Var2 = this.f24987k;
                    l62 l62Var = j62Var2.f25939d;
                    l62.m9782e(bp2Var2, no2Var2, t12Var2);
                }
            });
        }
    }

    @Override // p168r4.qh0
    /* renamed from: N0 */
    public final synchronized void mo7854N0(InterfaceC3512a interfaceC3512a, int i) {
        nf1 nf1Var = this.f28839d;
        if (nf1Var != null) {
            String valueOf = String.valueOf(((j62) nf1Var).f25938c.f31616a);
            cm0.m12437f(valueOf.length() != 0 ? "Fail to initialize adapter ".concat(valueOf) : new String("Fail to initialize adapter "));
        }
    }

    @Override // p168r4.qh0
    /* renamed from: Q4 */
    public final synchronized void mo7853Q4(InterfaceC3512a interfaceC3512a) {
        qh0 qh0Var = this.f28837a;
        if (qh0Var != null) {
            ((k62) qh0Var).f26315d.m7575d();
        }
    }

    @Override // p168r4.qh0
    /* renamed from: U */
    public final synchronized void mo7852U(InterfaceC3512a interfaceC3512a) {
        t81 t81Var = this.f28838b;
        if (t81Var != null) {
            t81Var.zza();
        }
    }

    @Override // p168r4.qh0
    /* renamed from: a0 */
    public final synchronized void mo7851a0(InterfaceC3512a interfaceC3512a) {
        qh0 qh0Var = this.f28837a;
        if (qh0Var != null) {
            qh0Var.mo7851a0(interfaceC3512a);
        }
    }

    /* renamed from: g7 */
    public final synchronized void m8906g7(qh0 qh0Var) {
        this.f28837a = qh0Var;
    }

    @Override // p168r4.qh0
    /* renamed from: h2 */
    public final synchronized void mo7850h2(InterfaceC3512a interfaceC3512a, int i) {
        t81 t81Var = this.f28838b;
        if (t81Var != null) {
            t81Var.mo6607x(i);
        }
    }

    /* renamed from: h7 */
    public final synchronized void m8905h7(nf1 nf1Var) {
        this.f28839d = nf1Var;
    }

    @Override // p168r4.qh0
    /* renamed from: i0 */
    public final synchronized void mo7849i0(InterfaceC3512a interfaceC3512a) {
        qh0 qh0Var = this.f28837a;
        if (qh0Var != null) {
            ((k62) qh0Var).f26315d.m7577a();
        }
    }

    @Override // p168r4.qh0
    /* renamed from: l3 */
    public final synchronized void mo7848l3(InterfaceC3512a interfaceC3512a, rh0 rh0Var) {
        qh0 qh0Var = this.f28837a;
        if (qh0Var != null) {
            ((k62) qh0Var).f26316k.mo7415L(rh0Var);
        }
    }

    @Override // p168r4.qh0
    /* renamed from: m0 */
    public final synchronized void mo7847m0(InterfaceC3512a interfaceC3512a) {
        qh0 qh0Var = this.f28837a;
        if (qh0Var != null) {
            ((k62) qh0Var).f26316k.zza();
        }
    }

    @Override // p168r4.u81
    /* renamed from: p6 */
    public final synchronized void mo6601p6(t81 t81Var) {
        this.f28838b = t81Var;
    }

    @Override // p168r4.qh0
    /* renamed from: z2 */
    public final synchronized void mo7846z2(InterfaceC3512a interfaceC3512a) {
        qh0 qh0Var = this.f28837a;
        if (qh0Var != null) {
            ((k62) qh0Var).f26314b.mo3609F0();
        }
    }
}
