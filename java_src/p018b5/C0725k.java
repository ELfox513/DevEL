package p018b5;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: b5.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0725k {
    /* renamed from: a */
    public static InterfaceC0827q m25723a(InterfaceC0759m interfaceC0759m, InterfaceC0827q interfaceC0827q, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        if (interfaceC0759m.mo25607t(interfaceC0827q.mo25083j())) {
            InterfaceC0827q mo25608s = interfaceC0759m.mo25608s(interfaceC0827q.mo25083j());
            if (mo25608s instanceof AbstractC0708j) {
                return ((AbstractC0708j) mo25608s).mo24853a(c0917v4, list);
            }
            throw new IllegalArgumentException(String.format("%s is not a function", interfaceC0827q.mo25083j()));
        } else if ("hasOwnProperty".equals(interfaceC0827q.mo25083j())) {
            C0935w5.m25046h("hasOwnProperty", 1, list);
            if (interfaceC0759m.mo25607t(c0917v4.m25072b(list.get(0)).mo25083j())) {
                return InterfaceC0827q.f2159i;
            }
            return InterfaceC0827q.f2160j;
        } else {
            throw new IllegalArgumentException(String.format("Object has no function %s", interfaceC0827q.mo25083j()));
        }
    }

    /* renamed from: b */
    public static Iterator<InterfaceC0827q> m25722b(Map<String, InterfaceC0827q> map) {
        return new C0742l(map.keySet().iterator());
    }
}
