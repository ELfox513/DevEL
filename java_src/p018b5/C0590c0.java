package p018b5;

import java.util.Arrays;
import java.util.Comparator;
/* renamed from: b5.c0 */
/* loaded from: classes2.dex */
public final class C0590c0 implements Comparator<InterfaceC0827q> {

    /* renamed from: a */
    public final /* synthetic */ AbstractC0708j f1755a;

    /* renamed from: b */
    public final /* synthetic */ C0917v4 f1756b;

    public C0590c0(AbstractC0708j abstractC0708j, C0917v4 c0917v4) {
        this.f1755a = abstractC0708j;
        this.f1756b = c0917v4;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(InterfaceC0827q interfaceC0827q, InterfaceC0827q interfaceC0827q2) {
        InterfaceC0827q interfaceC0827q3 = interfaceC0827q;
        InterfaceC0827q interfaceC0827q4 = interfaceC0827q2;
        AbstractC0708j abstractC0708j = this.f1755a;
        C0917v4 c0917v4 = this.f1756b;
        if (interfaceC0827q3 instanceof C0912v) {
            if (!(interfaceC0827q4 instanceof C0912v)) {
                return 1;
            }
            return 0;
        } else if (interfaceC0827q4 instanceof C0912v) {
            return -1;
        } else {
            if (abstractC0708j == null) {
                return interfaceC0827q3.mo25083j().compareTo(interfaceC0827q4.mo25083j());
            }
            return (int) C0935w5.m25053a(abstractC0708j.mo24853a(c0917v4, Arrays.asList(interfaceC0827q3, interfaceC0827q4)).mo25085f().doubleValue());
        }
    }
}
