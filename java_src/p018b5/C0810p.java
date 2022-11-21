package p018b5;

import java.util.ArrayList;
import java.util.List;
/* renamed from: b5.p */
/* loaded from: classes2.dex */
public final class C0810p extends AbstractC0708j {

    /* renamed from: d */
    public final List<String> f2134d;

    /* renamed from: k */
    public final List<InterfaceC0827q> f2135k;

    /* renamed from: p */
    public C0917v4 f2136p;

    public C0810p(C0810p c0810p) {
        super(c0810p.f1911a);
        ArrayList arrayList = new ArrayList(c0810p.f2134d.size());
        this.f2134d = arrayList;
        arrayList.addAll(c0810p.f2134d);
        ArrayList arrayList2 = new ArrayList(c0810p.f2135k.size());
        this.f2135k = arrayList2;
        arrayList2.addAll(c0810p.f2135k);
        this.f2136p = c0810p.f2136p;
    }

    @Override // p018b5.AbstractC0708j, p018b5.InterfaceC0827q
    /* renamed from: e */
    public final InterfaceC0827q mo25086e() {
        return new C0810p(this);
    }

    @Override // p018b5.AbstractC0708j
    /* renamed from: a */
    public final InterfaceC0827q mo24853a(C0917v4 c0917v4, List<InterfaceC0827q> list) {
        C0917v4 m25073a = this.f2136p.m25073a();
        for (int i = 0; i < this.f2134d.size(); i++) {
            if (i < list.size()) {
                m25073a.m25069e(this.f2134d.get(i), c0917v4.m25072b(list.get(i)));
            } else {
                m25073a.m25069e(this.f2134d.get(i), InterfaceC0827q.f2154c);
            }
        }
        for (InterfaceC0827q interfaceC0827q : this.f2135k) {
            InterfaceC0827q m25072b = m25073a.m25072b(interfaceC0827q);
            if (m25072b instanceof C0844r) {
                m25072b = m25073a.m25072b(interfaceC0827q);
            }
            if (m25072b instanceof C0674h) {
                return ((C0674h) m25072b).m25880a();
            }
        }
        return InterfaceC0827q.f2154c;
    }

    public C0810p(String str, List<InterfaceC0827q> list, List<InterfaceC0827q> list2, C0917v4 c0917v4) {
        super(str);
        this.f2134d = new ArrayList();
        this.f2136p = c0917v4;
        if (!list.isEmpty()) {
            for (InterfaceC0827q interfaceC0827q : list) {
                this.f2134d.add(interfaceC0827q.mo25083j());
            }
        }
        this.f2135k = new ArrayList(list2);
    }
}
