package p237z4;
/* renamed from: z4.e1 */
/* loaded from: classes2.dex */
public final class C7634e1 extends AbstractC7615b1 {
    public C7634e1() {
        super();
    }

    /* renamed from: e */
    public static <E> InterfaceC7697q0<E> m809e(Object obj, long j) {
        return (InterfaceC7697q0) C7627d3.m861G(obj, j);
    }

    @Override // p237z4.AbstractC7615b1
    /* renamed from: a */
    public final void mo811a(Object obj, long j) {
        m809e(obj, j).mo618j0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    @Override // p237z4.AbstractC7615b1
    /* renamed from: b */
    public final <E> void mo810b(Object obj, Object obj2, long j) {
        InterfaceC7697q0<E> m809e = m809e(obj, j);
        InterfaceC7697q0<E> m809e2 = m809e(obj2, j);
        int size = m809e.size();
        int size2 = m809e2.size();
        InterfaceC7697q0<E> interfaceC7697q0 = m809e;
        interfaceC7697q0 = m809e;
        if (size > 0 && size2 > 0) {
            boolean mo402t0 = m809e.mo402t0();
            InterfaceC7697q0<E> interfaceC7697q02 = m809e;
            if (!mo402t0) {
                interfaceC7697q02 = m809e.mo401z0(size2 + size);
            }
            interfaceC7697q02.addAll(m809e2);
            interfaceC7697q0 = interfaceC7697q02;
        }
        if (size > 0) {
            m809e2 = interfaceC7697q0;
        }
        C7627d3.m846g(obj, j, m809e2);
    }
}
