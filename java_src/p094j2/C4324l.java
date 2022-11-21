package p094j2;

import android.content.Context;
import p103k2.InterfaceC4438b;
import p171r7.InterfaceC6549a;
/* renamed from: j2.l */
/* loaded from: classes.dex */
public final class C4324l implements InterfaceC4438b<C4322k> {

    /* renamed from: a */
    public final InterfaceC6549a<Context> f18201a;

    /* renamed from: b */
    public final InterfaceC6549a<C4320i> f18202b;

    /* renamed from: a */
    public static C4324l m16816a(InterfaceC6549a<Context> interfaceC6549a, InterfaceC6549a<C4320i> interfaceC6549a2) {
        return new C4324l(interfaceC6549a, interfaceC6549a2);
    }

    /* renamed from: c */
    public static C4322k m16814c(Context context, Object obj) {
        return new C4322k(context, (C4320i) obj);
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public C4322k get() {
        return m16814c(this.f18201a.get(), this.f18202b.get());
    }

    public C4324l(InterfaceC6549a<Context> interfaceC6549a, InterfaceC6549a<C4320i> interfaceC6549a2) {
        this.f18201a = interfaceC6549a;
        this.f18202b = interfaceC6549a2;
    }
}
