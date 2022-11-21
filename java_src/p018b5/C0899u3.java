package p018b5;
/* renamed from: b5.u3 */
/* loaded from: classes2.dex */
public final class C0899u3 {

    /* renamed from: a */
    public final C0963y f2330a;

    /* renamed from: b */
    public final C0917v4 f2331b;

    /* renamed from: c */
    public final C0917v4 f2332c;

    /* renamed from: d */
    public final C0971y7 f2333d;

    /* renamed from: a */
    public final InterfaceC0827q m25107a(C0917v4 c0917v4, C0816p5... c0816p5Arr) {
        InterfaceC0827q interfaceC0827q = InterfaceC0827q.f2154c;
        for (C0816p5 c0816p5 : c0816p5Arr) {
            interfaceC0827q = C0953x6.m24989a(c0816p5);
            C0935w5.m25051c(this.f2332c);
            if ((interfaceC0827q instanceof C0844r) || (interfaceC0827q instanceof C0810p)) {
                interfaceC0827q = this.f2330a.m24964a(c0917v4, interfaceC0827q);
            }
        }
        return interfaceC0827q;
    }

    public C0899u3() {
        C0963y c0963y = new C0963y();
        this.f2330a = c0963y;
        C0917v4 c0917v4 = new C0917v4(null, c0963y);
        this.f2332c = c0917v4;
        this.f2331b = c0917v4.m25073a();
        C0971y7 c0971y7 = new C0971y7();
        this.f2333d = c0971y7;
        c0917v4.m25067g("require", new C0962xf(c0971y7));
        c0971y7.m24913a("internal.platform", CallableC0881t2.f2313a);
        c0917v4.m25067g("runtime.counter", new C0691i(Double.valueOf(0.0d)));
    }
}
