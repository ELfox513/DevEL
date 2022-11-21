package p018b5;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: b5.n9 */
/* loaded from: classes2.dex */
public final class C0786n9 extends AbstractC0854r9 {

    /* renamed from: c */
    public static final Class<?> f2059c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public /* synthetic */ C0786n9(C0769m9 c0769m9) {
        super(null);
    }

    @Override // p018b5.AbstractC0854r9
    /* renamed from: a */
    public final void mo25423a(Object obj, long j) {
        Object unmodifiableList;
        List list = (List) C0856rb.m25350k(obj, j);
        if (list instanceof InterfaceC0752l9) {
            unmodifiableList = ((InterfaceC0752l9) list).mo25651c();
        } else if (f2059c.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof InterfaceC0753la) && (list instanceof InterfaceC0633e9)) {
                InterfaceC0633e9 interfaceC0633e9 = (InterfaceC0633e9) list;
                if (interfaceC0633e9.mo25928b()) {
                    interfaceC0633e9.mo25929a();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        C0856rb.m25337x(obj, j, unmodifiableList);
    }

    @Override // p018b5.AbstractC0854r9
    /* renamed from: b */
    public final <E> void mo25422b(Object obj, Object obj2, long j) {
        ArrayList arrayList;
        List list = (List) C0856rb.m25350k(obj2, j);
        int size = list.size();
        List list2 = (List) C0856rb.m25350k(obj, j);
        if (list2.isEmpty()) {
            if (list2 instanceof InterfaceC0752l9) {
                list2 = new C0735k9(size);
            } else if ((list2 instanceof InterfaceC0753la) && (list2 instanceof InterfaceC0633e9)) {
                list2 = ((InterfaceC0633e9) list2).mo24861p0(size);
            } else {
                list2 = new ArrayList(size);
            }
            C0856rb.m25337x(obj, j, list2);
        } else {
            if (f2059c.isAssignableFrom(list2.getClass())) {
                ArrayList arrayList2 = new ArrayList(list2.size() + size);
                arrayList2.addAll(list2);
                C0856rb.m25337x(obj, j, arrayList2);
                arrayList = arrayList2;
            } else if (list2 instanceof C0771mb) {
                C0735k9 c0735k9 = new C0735k9(list2.size() + size);
                c0735k9.addAll(c0735k9.size(), (C0771mb) list2);
                C0856rb.m25337x(obj, j, c0735k9);
                arrayList = c0735k9;
            } else if ((list2 instanceof InterfaceC0753la) && (list2 instanceof InterfaceC0633e9)) {
                InterfaceC0633e9 interfaceC0633e9 = (InterfaceC0633e9) list2;
                if (!interfaceC0633e9.mo25928b()) {
                    list2 = interfaceC0633e9.mo24861p0(list2.size() + size);
                    C0856rb.m25337x(obj, j, list2);
                }
            }
            list2 = arrayList;
        }
        int size2 = list2.size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list);
        }
        if (size2 > 0) {
            list = list2;
        }
        C0856rb.m25337x(obj, j, list);
    }
}
