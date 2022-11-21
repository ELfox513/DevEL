package p237z4;

import java.util.Comparator;
import p218x1.C7221i;
/* renamed from: z4.k */
/* loaded from: classes2.dex */
public final class C7662k implements Comparator<AbstractC7652i> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(AbstractC7652i abstractC7652i, AbstractC7652i abstractC7652i2) {
        int m703d;
        int m703d2;
        AbstractC7652i abstractC7652i3 = abstractC7652i;
        AbstractC7652i abstractC7652i4 = abstractC7652i2;
        InterfaceC7691p interfaceC7691p = (InterfaceC7691p) abstractC7652i3.iterator();
        InterfaceC7691p interfaceC7691p2 = (InterfaceC7691p) abstractC7652i4.iterator();
        while (interfaceC7691p.hasNext() && interfaceC7691p2.hasNext()) {
            m703d = AbstractC7652i.m703d(interfaceC7691p.mo623d());
            m703d2 = AbstractC7652i.m703d(interfaceC7691p2.mo623d());
            int m2085a = C7221i.m2085a(m703d, m703d2);
            if (m2085a != 0) {
                return m2085a;
            }
        }
        return C7221i.m2085a(abstractC7652i3.size(), abstractC7652i4.size());
    }
}
