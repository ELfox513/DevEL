package p018b5;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: b5.y8 */
/* loaded from: classes2.dex */
public final class C0972y8 extends AbstractC0708j {

    /* renamed from: d */
    public final C0589c f2437d;

    public C0972y8(C0589c c0589c) {
        super("internal.eventLogger");
        this.f2437d = c0589c;
    }

    @Override // p018b5.AbstractC0708j
    /* renamed from: a */
    public final InterfaceC0827q mo24853a(C0917v4 c0917v4, List<InterfaceC0827q> list) {
        Map<String, Object> hashMap;
        C0935w5.m25046h(this.f1911a, 3, list);
        String mo25083j = c0917v4.m25072b(list.get(0)).mo25083j();
        long m25053a = (long) C0935w5.m25053a(c0917v4.m25072b(list.get(1)).mo25085f().doubleValue());
        InterfaceC0827q m25072b = c0917v4.m25072b(list.get(2));
        if (m25072b instanceof C0776n) {
            hashMap = C0935w5.m25047g((C0776n) m25072b);
        } else {
            hashMap = new HashMap<>();
        }
        this.f2437d.m26123e(mo25083j, m25053a, hashMap);
        return InterfaceC0827q.f2154c;
    }
}
