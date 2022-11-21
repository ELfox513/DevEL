package p018b5;
/* renamed from: b5.p9 */
/* loaded from: classes2.dex */
public final class C0820p9 extends AbstractC0854r9 {
    public /* synthetic */ C0820p9(C0803o9 c0803o9) {
        super(null);
    }

    @Override // p018b5.AbstractC0854r9
    /* renamed from: a */
    public final void mo25423a(Object obj, long j) {
        ((InterfaceC0633e9) C0856rb.m25350k(obj, j)).mo25929a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    @Override // p018b5.AbstractC0854r9
    /* renamed from: b */
    public final <E> void mo25422b(Object obj, Object obj2, long j) {
        InterfaceC0633e9<E> interfaceC0633e9 = (InterfaceC0633e9) C0856rb.m25350k(obj, j);
        InterfaceC0633e9<E> interfaceC0633e92 = (InterfaceC0633e9) C0856rb.m25350k(obj2, j);
        int size = interfaceC0633e9.size();
        int size2 = interfaceC0633e92.size();
        InterfaceC0633e9<E> interfaceC0633e93 = interfaceC0633e9;
        interfaceC0633e93 = interfaceC0633e9;
        if (size > 0 && size2 > 0) {
            boolean mo25928b = interfaceC0633e9.mo25928b();
            InterfaceC0633e9<E> interfaceC0633e94 = interfaceC0633e9;
            if (!mo25928b) {
                interfaceC0633e94 = interfaceC0633e9.mo24861p0(size2 + size);
            }
            interfaceC0633e94.addAll(interfaceC0633e92);
            interfaceC0633e93 = interfaceC0633e94;
        }
        if (size > 0) {
            interfaceC0633e92 = interfaceC0633e93;
        }
        C0856rb.m25337x(obj, j, interfaceC0633e92);
    }
}
