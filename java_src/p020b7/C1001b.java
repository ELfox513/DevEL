package p020b7;

import p162q7.C5436b;
import p171r7.InterfaceC6549a;
import p239z6.C7873a;
/* renamed from: b7.b */
/* loaded from: classes2.dex */
public final class C1001b implements InterfaceC6549a {

    /* renamed from: a */
    public final C1000a f2486a;

    /* renamed from: a */
    public static C1001b m24837a(C1000a c1000a) {
        return new C1001b(c1000a);
    }

    /* renamed from: c */
    public static C7873a m24835c(C1000a c1000a) {
        return (C7873a) C5436b.m13301c(c1000a.m24844a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public C7873a get() {
        return m24835c(this.f2486a);
    }

    public C1001b(C1000a c1000a) {
        this.f2486a = c1000a;
    }
}
