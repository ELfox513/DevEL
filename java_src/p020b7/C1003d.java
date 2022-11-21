package p020b7;

import p162q7.C5436b;
import p170r6.InterfaceC6538g;
import p171r7.InterfaceC6549a;
/* renamed from: b7.d */
/* loaded from: classes2.dex */
public final class C1003d implements InterfaceC6549a {

    /* renamed from: a */
    public final C1000a f2488a;

    /* renamed from: a */
    public static C1003d m24831a(C1000a c1000a) {
        return new C1003d(c1000a);
    }

    /* renamed from: c */
    public static InterfaceC6538g m24829c(C1000a c1000a) {
        return (InterfaceC6538g) C5436b.m13301c(c1000a.m24842c(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public InterfaceC6538g get() {
        return m24829c(this.f2488a);
    }

    public C1003d(C1000a c1000a) {
        this.f2488a = c1000a;
    }
}
