package p168r4;

import p185t3.C6734b;
import p220x3.AbstractC7246c;
/* renamed from: r4.oo */
/* loaded from: classes2.dex */
public final class C6103oo implements AbstractC7246c.InterfaceC7248b {

    /* renamed from: a */
    public final /* synthetic */ C6140po f29084a;

    public C6103oo(C6140po c6140po) {
        this.f29084a = c6140po;
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7248b
    /* renamed from: t0 */
    public final void mo1940t0(C6734b c6734b) {
        Object obj;
        C6251so c6251so;
        Object obj2;
        obj = this.f29084a.f29538b;
        synchronized (obj) {
            this.f29084a.f29541e = null;
            c6251so = this.f29084a.f29539c;
            if (c6251so != null) {
                this.f29084a.f29539c = null;
            }
            obj2 = this.f29084a.f29538b;
            obj2.notifyAll();
        }
    }
}
