package p020b7;

import p126m7.C4669p;
import p161q6.InterfaceC5434b;
import p162q7.C5436b;
import p171r7.InterfaceC6549a;
/* renamed from: b7.f */
/* loaded from: classes2.dex */
public final class C1005f implements InterfaceC6549a {

    /* renamed from: a */
    public final C1000a f2490a;

    /* renamed from: a */
    public static C1005f m24825a(C1000a c1000a) {
        return new C1005f(c1000a);
    }

    /* renamed from: c */
    public static InterfaceC5434b<C4669p> m24823c(C1000a c1000a) {
        return (InterfaceC5434b) C5436b.m13301c(c1000a.m24840e(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public InterfaceC5434b<C4669p> get() {
        return m24823c(this.f2490a);
    }

    public C1005f(C1000a c1000a) {
        this.f2490a = c1000a;
    }
}
