package p020b7;

import p124m5.C4638c;
import p162q7.C5436b;
import p171r7.InterfaceC6549a;
/* renamed from: b7.c */
/* loaded from: classes2.dex */
public final class C1002c implements InterfaceC6549a {

    /* renamed from: a */
    public final C1000a f2487a;

    /* renamed from: a */
    public static C1002c m24834a(C1000a c1000a) {
        return new C1002c(c1000a);
    }

    /* renamed from: c */
    public static C4638c m24832c(C1000a c1000a) {
        return (C4638c) C5436b.m13301c(c1000a.m24843b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public C4638c get() {
        return m24832c(this.f2487a);
    }

    public C1002c(C1000a c1000a) {
        this.f2487a = c1000a;
    }
}
