package p070g5;

import p018b5.C0842qe;
/* renamed from: g5.n5 */
/* loaded from: classes2.dex */
public final class RunnableC3755n5 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3833u f16756a;

    /* renamed from: b */
    public final /* synthetic */ C3784pa f16757b;

    /* renamed from: d */
    public final /* synthetic */ BinderC3839u5 f16758d;

    public RunnableC3755n5(BinderC3839u5 binderC3839u5, C3833u c3833u, C3784pa c3784pa) {
        this.f16758d = binderC3839u5;
        this.f16756a = c3833u;
        this.f16757b = c3784pa;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3616ba c3616ba;
        C3833u m17954L0 = this.f16758d.m17954L0(this.f16756a, this.f16757b);
        C0842qe.m25453b();
        c3616ba = this.f16758d.f16983a;
        if (c3616ba.m18490T().m18356w(null, C3621c3.f16402x0)) {
            this.f16758d.m17944e3(m17954L0, this.f16757b);
        } else {
            this.f16758d.m17934t0(m17954L0, this.f16757b);
        }
    }
}
