package p018b5;

import com.prineside.tdi2.tiles.CoreTile;
import java.util.List;
/* renamed from: b5.wf */
/* loaded from: classes2.dex */
public final class C0945wf extends AbstractC0708j {

    /* renamed from: d */
    public final C0571ag f2384d;

    public C0945wf(C0571ag c0571ag) {
        super("internal.registerCallback");
        this.f2384d = c0571ag;
    }

    @Override // p018b5.AbstractC0708j
    /* renamed from: a */
    public final InterfaceC0827q mo24853a(C0917v4 c0917v4, List<InterfaceC0827q> list) {
        int i;
        C0935w5.m25046h(this.f1911a, 3, list);
        String mo25083j = c0917v4.m25072b(list.get(0)).mo25083j();
        InterfaceC0827q m25072b = c0917v4.m25072b(list.get(1));
        if (m25072b instanceof C0810p) {
            InterfaceC0827q m25072b2 = c0917v4.m25072b(list.get(2));
            if (m25072b2 instanceof C0776n) {
                C0776n c0776n = (C0776n) m25072b2;
                if (c0776n.mo25607t("type")) {
                    String mo25083j2 = c0776n.mo25608s("type").mo25083j();
                    if (c0776n.mo25607t("priority")) {
                        i = C0935w5.m25052b(c0776n.mo25608s("priority").mo25085f().doubleValue());
                    } else {
                        i = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
                    }
                    this.f2384d.m26163a(mo25083j, i, (C0810p) m25072b, mo25083j2);
                    return InterfaceC0827q.f2154c;
                }
                throw new IllegalArgumentException("Undefined rule type");
            }
            throw new IllegalArgumentException("Invalid callback params");
        }
        throw new IllegalArgumentException("Invalid callback type");
    }
}
