package p070g5;

import p220x3.C7297q;
/* renamed from: g5.m8 */
/* loaded from: classes2.dex */
public final class RunnableC3746m8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3784pa f16730a;

    /* renamed from: b */
    public final /* synthetic */ boolean f16731b;

    /* renamed from: d */
    public final /* synthetic */ C3617c f16732d;

    /* renamed from: k */
    public final /* synthetic */ C3617c f16733k;

    /* renamed from: p */
    public final /* synthetic */ C3866w8 f16734p;

    public RunnableC3746m8(C3866w8 c3866w8, boolean z, C3784pa c3784pa, boolean z2, C3617c c3617c, C3617c c3617c2) {
        this.f16734p = c3866w8;
        this.f16730a = c3784pa;
        this.f16731b = z2;
        this.f16732d = c3617c;
        this.f16733k = c3617c2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC3669g3 interfaceC3669g3;
        C3617c c3617c;
        interfaceC3669g3 = this.f16734p.f17044d;
        if (interfaceC3669g3 == null) {
            this.f16734p.f17008a.mo17858F().m18018m().m18042a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        C7297q.m1883j(this.f16730a);
        C3866w8 c3866w8 = this.f16734p;
        if (this.f16731b) {
            c3617c = null;
        } else {
            c3617c = this.f16732d;
        }
        c3866w8.m17876m(interfaceC3669g3, c3617c, this.f16730a);
        this.f16734p.m17863z();
    }
}
