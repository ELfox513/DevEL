package p018b5;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* renamed from: b5.y */
/* loaded from: classes2.dex */
public final class C0963y {

    /* renamed from: a */
    public final Map<String, AbstractC0946x> f2423a = new HashMap();

    /* renamed from: b */
    public final C0743l0 f2424b = new C0743l0();

    /* renamed from: b */
    public final void m24963b(AbstractC0946x abstractC0946x) {
        for (EnumC0777n0 enumC0777n0 : abstractC0946x.f2385a) {
            this.f2423a.put(enumC0777n0.m25604d().toString(), abstractC0946x);
        }
    }

    public C0963y() {
        m24963b(new C0929w());
        m24963b(new C0980z());
        m24963b(new C0555a0());
        m24963b(new C0624e0());
        m24963b(new C0709j0());
        m24963b(new C0726k0());
        m24963b(new C0760m0());
    }

    /* renamed from: a */
    public final InterfaceC0827q m24964a(C0917v4 c0917v4, InterfaceC0827q interfaceC0827q) {
        AbstractC0946x abstractC0946x;
        C0935w5.m25051c(c0917v4);
        if (interfaceC0827q instanceof C0844r) {
            C0844r c0844r = (C0844r) interfaceC0827q;
            ArrayList<InterfaceC0827q> m25450b = c0844r.m25450b();
            String m25451a = c0844r.m25451a();
            if (this.f2423a.containsKey(m25451a)) {
                abstractC0946x = this.f2423a.get(m25451a);
            } else {
                abstractC0946x = this.f2424b;
            }
            return abstractC0946x.mo24903a(m25451a, c0917v4, m25450b);
        }
        return interfaceC0827q;
    }
}
