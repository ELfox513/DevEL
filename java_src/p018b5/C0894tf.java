package p018b5;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: b5.tf */
/* loaded from: classes2.dex */
public final class C0894tf extends AbstractC0708j {

    /* renamed from: d */
    public final boolean f2321d;

    /* renamed from: k */
    public final boolean f2322k;

    /* renamed from: p */
    public final /* synthetic */ C0911uf f2323p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0894tf(C0911uf c0911uf, boolean z, boolean z2) {
        super("log");
        this.f2323p = c0911uf;
        this.f2321d = z;
        this.f2322k = z2;
    }

    @Override // p018b5.AbstractC0708j
    /* renamed from: a */
    public final InterfaceC0827q mo24853a(C0917v4 c0917v4, List<InterfaceC0827q> list) {
        int i;
        InterfaceC0877sf interfaceC0877sf;
        InterfaceC0877sf interfaceC0877sf2;
        InterfaceC0877sf interfaceC0877sf3;
        C0935w5.m25045i("log", 1, list);
        if (list.size() == 1) {
            interfaceC0877sf3 = this.f2323p.f2344d;
            interfaceC0877sf3.mo18001a(3, c0917v4.m25072b(list.get(0)).mo25083j(), Collections.emptyList(), this.f2321d, this.f2322k);
            return InterfaceC0827q.f2154c;
        }
        int m25052b = C0935w5.m25052b(c0917v4.m25072b(list.get(0)).mo25085f().doubleValue());
        if (m25052b != 2) {
            if (m25052b != 3) {
                if (m25052b != 5) {
                    if (m25052b != 6) {
                        i = 3;
                    } else {
                        i = 2;
                    }
                } else {
                    i = 5;
                }
            } else {
                i = 1;
            }
        } else {
            i = 4;
        }
        String mo25083j = c0917v4.m25072b(list.get(1)).mo25083j();
        if (list.size() == 2) {
            interfaceC0877sf2 = this.f2323p.f2344d;
            interfaceC0877sf2.mo18001a(i, mo25083j, Collections.emptyList(), this.f2321d, this.f2322k);
            return InterfaceC0827q.f2154c;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 2; i2 < Math.min(list.size(), 5); i2++) {
            arrayList.add(c0917v4.m25072b(list.get(i2)).mo25083j());
        }
        interfaceC0877sf = this.f2323p.f2344d;
        interfaceC0877sf.mo18001a(i, mo25083j, arrayList, this.f2321d, this.f2322k);
        return InterfaceC0827q.f2154c;
    }
}
