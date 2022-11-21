package p070g5;

import p220x3.C7297q;
/* renamed from: g5.l8 */
/* loaded from: classes2.dex */
public final class RunnableC3734l8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3784pa f16712a;

    /* renamed from: b */
    public final /* synthetic */ boolean f16713b;

    /* renamed from: d */
    public final /* synthetic */ C3833u f16714d;

    /* renamed from: k */
    public final /* synthetic */ String f16715k;

    /* renamed from: p */
    public final /* synthetic */ C3866w8 f16716p;

    public RunnableC3734l8(C3866w8 c3866w8, boolean z, C3784pa c3784pa, boolean z2, C3833u c3833u, String str) {
        this.f16716p = c3866w8;
        this.f16712a = c3784pa;
        this.f16713b = z2;
        this.f16714d = c3833u;
        this.f16715k = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC3669g3 interfaceC3669g3;
        C3833u c3833u;
        interfaceC3669g3 = this.f16716p.f17044d;
        if (interfaceC3669g3 == null) {
            this.f16716p.f17008a.mo17858F().m18018m().m18042a("Discarding data. Failed to send event to service");
            return;
        }
        C7297q.m1883j(this.f16712a);
        C3866w8 c3866w8 = this.f16716p;
        if (this.f16713b) {
            c3833u = null;
        } else {
            c3833u = this.f16714d;
        }
        c3866w8.m17876m(interfaceC3669g3, c3833u, this.f16712a);
        this.f16716p.m17863z();
    }
}
