package p018b5;

import java.util.List;
/* renamed from: b5.ya */
/* loaded from: classes2.dex */
public final class C0974ya extends AbstractC0708j {

    /* renamed from: d */
    public final /* synthetic */ InterfaceC0568ad f2440d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0974ya(C0992zb c0992zb, String str, InterfaceC0568ad interfaceC0568ad) {
        super("getValue");
        this.f2440d = interfaceC0568ad;
    }

    @Override // p018b5.AbstractC0708j
    /* renamed from: a */
    public final InterfaceC0827q mo24853a(C0917v4 c0917v4, List<InterfaceC0827q> list) {
        C0935w5.m25046h("getValue", 2, list);
        InterfaceC0827q m25072b = c0917v4.m25072b(list.get(0));
        InterfaceC0827q m25072b2 = c0917v4.m25072b(list.get(1));
        String mo17985q = this.f2440d.mo17985q(m25072b.mo25083j());
        if (mo17985q != null) {
            return new C0895u(mo17985q);
        }
        return m25072b2;
    }
}
