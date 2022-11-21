package p070g5;

import p220x3.C7297q;
/* renamed from: g5.y7 */
/* loaded from: classes2.dex */
public final class RunnableC3889y7 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3784pa f17109a;

    /* renamed from: b */
    public final /* synthetic */ boolean f17110b;

    /* renamed from: d */
    public final /* synthetic */ C3652ea f17111d;

    /* renamed from: k */
    public final /* synthetic */ C3866w8 f17112k;

    public RunnableC3889y7(C3866w8 c3866w8, C3784pa c3784pa, boolean z, C3652ea c3652ea) {
        this.f17112k = c3866w8;
        this.f17109a = c3784pa;
        this.f17110b = z;
        this.f17111d = c3652ea;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC3669g3 interfaceC3669g3;
        C3652ea c3652ea;
        interfaceC3669g3 = this.f17112k.f17044d;
        if (interfaceC3669g3 == null) {
            this.f17112k.f17008a.mo17858F().m18018m().m18042a("Discarding data. Failed to set user property");
            return;
        }
        C7297q.m1883j(this.f17109a);
        C3866w8 c3866w8 = this.f17112k;
        if (this.f17110b) {
            c3652ea = null;
        } else {
            c3652ea = this.f17111d;
        }
        c3866w8.m17876m(interfaceC3669g3, c3652ea, this.f17109a);
        this.f17112k.m17863z();
    }
}
