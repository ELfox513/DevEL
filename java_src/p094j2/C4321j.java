package p094j2;

import android.content.Context;
import p103k2.InterfaceC4438b;
import p166r2.InterfaceC5525a;
import p171r7.InterfaceC6549a;
/* renamed from: j2.j */
/* loaded from: classes.dex */
public final class C4321j implements InterfaceC4438b<C4320i> {

    /* renamed from: a */
    public final InterfaceC6549a<Context> f18193a;

    /* renamed from: b */
    public final InterfaceC6549a<InterfaceC5525a> f18194b;

    /* renamed from: c */
    public final InterfaceC6549a<InterfaceC5525a> f18195c;

    /* renamed from: a */
    public static C4321j m16824a(InterfaceC6549a<Context> interfaceC6549a, InterfaceC6549a<InterfaceC5525a> interfaceC6549a2, InterfaceC6549a<InterfaceC5525a> interfaceC6549a3) {
        return new C4321j(interfaceC6549a, interfaceC6549a2, interfaceC6549a3);
    }

    /* renamed from: c */
    public static C4320i m16822c(Context context, InterfaceC5525a interfaceC5525a, InterfaceC5525a interfaceC5525a2) {
        return new C4320i(context, interfaceC5525a, interfaceC5525a2);
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public C4320i get() {
        return m16822c(this.f18193a.get(), this.f18194b.get(), this.f18195c.get());
    }

    public C4321j(InterfaceC6549a<Context> interfaceC6549a, InterfaceC6549a<InterfaceC5525a> interfaceC6549a2, InterfaceC6549a<InterfaceC5525a> interfaceC6549a3) {
        this.f18193a = interfaceC6549a;
        this.f18194b = interfaceC6549a2;
        this.f18195c = interfaceC6549a3;
    }
}
