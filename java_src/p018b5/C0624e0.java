package p018b5;

import java.util.List;
/* renamed from: b5.e0 */
/* loaded from: classes2.dex */
public final class C0624e0 extends AbstractC0946x {
    @Override // p018b5.AbstractC0946x
    /* renamed from: a */
    public final InterfaceC0827q mo24903a(String str, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        EnumC0777n0 enumC0777n0 = EnumC0777n0.ADD;
        int ordinal = C0935w5.m25049e(str).ordinal();
        if (ordinal != 1) {
            if (ordinal != 47) {
                if (ordinal != 50) {
                    return super.m25015b(str);
                }
                C0935w5.m25046h(EnumC0777n0.OR.name(), 2, list);
                InterfaceC0827q m25072b = c0917v4.m25072b(list.get(0));
                if (m25072b.mo25084g().booleanValue()) {
                    return m25072b;
                }
                return c0917v4.m25072b(list.get(1));
            }
            C0935w5.m25046h(EnumC0777n0.NOT.name(), 1, list);
            return new C0657g(Boolean.valueOf(!c0917v4.m25072b(list.get(0)).mo25084g().booleanValue()));
        }
        C0935w5.m25046h(EnumC0777n0.AND.name(), 2, list);
        InterfaceC0827q m25072b2 = c0917v4.m25072b(list.get(0));
        if (!m25072b2.mo25084g().booleanValue()) {
            return m25072b2;
        }
        return c0917v4.m25072b(list.get(1));
    }

    public C0624e0() {
        this.f2385a.add(EnumC0777n0.AND);
        this.f2385a.add(EnumC0777n0.NOT);
        this.f2385a.add(EnumC0777n0.OR);
    }
}
