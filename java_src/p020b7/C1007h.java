package p020b7;

import p058f2.InterfaceC3508g;
import p161q6.InterfaceC5434b;
import p162q7.C5436b;
import p171r7.InterfaceC6549a;
/* renamed from: b7.h */
/* loaded from: classes2.dex */
public final class C1007h implements InterfaceC6549a {

    /* renamed from: a */
    public final C1000a f2492a;

    /* renamed from: a */
    public static C1007h m24819a(C1000a c1000a) {
        return new C1007h(c1000a);
    }

    /* renamed from: c */
    public static InterfaceC5434b<InterfaceC3508g> m24817c(C1000a c1000a) {
        return (InterfaceC5434b) C5436b.m13301c(c1000a.m24838g(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public InterfaceC5434b<InterfaceC3508g> get() {
        return m24817c(this.f2492a);
    }

    public C1007h(C1000a c1000a) {
        this.f2492a = c1000a;
    }
}
