package p018b5;

import java.util.List;
/* renamed from: b5.uf */
/* loaded from: classes2.dex */
public final class C0911uf extends AbstractC0708j {

    /* renamed from: d */
    public final InterfaceC0877sf f2344d;

    @Override // p018b5.AbstractC0708j
    /* renamed from: a */
    public final InterfaceC0827q mo24853a(C0917v4 c0917v4, List<InterfaceC0827q> list) {
        return InterfaceC0827q.f2154c;
    }

    public C0911uf(InterfaceC0877sf interfaceC0877sf) {
        super("internal.logger");
        this.f2344d = interfaceC0877sf;
        this.f1912b.put("log", new C0894tf(this, false, true));
        this.f1912b.put("silent", new C0587be(this, "silent"));
        ((AbstractC0708j) this.f1912b.get("silent")).mo25606u("log", new C0894tf(this, true, true));
        this.f1912b.put("unmonitored", new C0605cf(this, "unmonitored"));
        ((AbstractC0708j) this.f1912b.get("unmonitored")).mo25606u("log", new C0894tf(this, false, false));
    }
}
