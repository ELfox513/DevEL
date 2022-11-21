package p168r4;

import android.os.Bundle;
import android.os.DeadObjectException;
import p220x3.AbstractC7246c;
/* renamed from: r4.no */
/* loaded from: classes2.dex */
public final class C6066no implements AbstractC7246c.InterfaceC7247a {

    /* renamed from: a */
    public final /* synthetic */ C6140po f28375a;

    public C6066no(C6140po c6140po) {
        this.f28375a = c6140po;
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: j0 */
    public final void mo1948j0(int i) {
        Object obj;
        Object obj2;
        obj = this.f28375a.f29538b;
        synchronized (obj) {
            this.f28375a.f29541e = null;
            obj2 = this.f28375a.f29538b;
            obj2.notifyAll();
        }
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: o0 */
    public final void mo1947o0(Bundle bundle) {
        Object obj;
        Object obj2;
        C6251so c6251so;
        C6251so c6251so2;
        obj = this.f28375a.f29538b;
        synchronized (obj) {
            try {
                c6251so = this.f28375a.f29539c;
                if (c6251so != null) {
                    C6140po c6140po = this.f28375a;
                    c6251so2 = c6140po.f29539c;
                    c6140po.f29541e = c6251so2.m7094i0();
                }
            } catch (DeadObjectException e) {
                cm0.m12439d("Unable to obtain a cache service instance.", e);
                C6140po.m8236j(this.f28375a);
            }
            obj2 = this.f28375a.f29538b;
            obj2.notifyAll();
        }
    }
}
