package p237z4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: z4.d1 */
/* loaded from: classes2.dex */
public final class C7625d1 extends AbstractC7615b1 {

    /* renamed from: c */
    public static final Class<?> f37643c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public C7625d1() {
        super();
    }

    /* renamed from: e */
    public static <E> List<E> m871e(Object obj, long j) {
        return (List) C7627d3.m861G(obj, j);
    }

    @Override // p237z4.AbstractC7615b1
    /* renamed from: a */
    public final void mo811a(Object obj, long j) {
        Object unmodifiableList;
        List list = (List) C7627d3.m861G(obj, j);
        if (list instanceof InterfaceC7610a1) {
            unmodifiableList = ((InterfaceC7610a1) list).mo405H0();
        } else if (f37643c.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof InterfaceC7621c2) && (list instanceof InterfaceC7697q0)) {
                InterfaceC7697q0 interfaceC7697q0 = (InterfaceC7697q0) list;
                if (interfaceC7697q0.mo402t0()) {
                    interfaceC7697q0.mo618j0();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        C7627d3.m846g(obj, j, unmodifiableList);
    }

    @Override // p237z4.AbstractC7615b1
    /* renamed from: b */
    public final <E> void mo810b(Object obj, Object obj2, long j) {
        ArrayList arrayList;
        List m871e = m871e(obj2, j);
        int size = m871e.size();
        List m871e2 = m871e(obj, j);
        if (m871e2.isEmpty()) {
            if (m871e2 instanceof InterfaceC7610a1) {
                m871e2 = new C7737z0(size);
            } else if ((m871e2 instanceof InterfaceC7621c2) && (m871e2 instanceof InterfaceC7697q0)) {
                m871e2 = ((InterfaceC7697q0) m871e2).mo401z0(size);
            } else {
                m871e2 = new ArrayList(size);
            }
            C7627d3.m846g(obj, j, m871e2);
        } else {
            if (f37643c.isAssignableFrom(m871e2.getClass())) {
                ArrayList arrayList2 = new ArrayList(m871e2.size() + size);
                arrayList2.addAll(m871e2);
                C7627d3.m846g(obj, j, arrayList2);
                arrayList = arrayList2;
            } else if (m871e2 instanceof C7612a3) {
                List c7737z0 = new C7737z0(m871e2.size() + size);
                c7737z0.addAll((C7612a3) m871e2);
                C7627d3.m846g(obj, j, c7737z0);
                arrayList = c7737z0;
            } else if ((m871e2 instanceof InterfaceC7621c2) && (m871e2 instanceof InterfaceC7697q0)) {
                InterfaceC7697q0 interfaceC7697q0 = (InterfaceC7697q0) m871e2;
                if (!interfaceC7697q0.mo402t0()) {
                    m871e2 = interfaceC7697q0.mo401z0(m871e2.size() + size);
                    C7627d3.m846g(obj, j, m871e2);
                }
            }
            m871e2 = arrayList;
        }
        int size2 = m871e2.size();
        int size3 = m871e.size();
        if (size2 > 0 && size3 > 0) {
            m871e2.addAll(m871e);
        }
        if (size2 > 0) {
            m871e = m871e2;
        }
        C7627d3.m846g(obj, j, m871e);
    }
}
