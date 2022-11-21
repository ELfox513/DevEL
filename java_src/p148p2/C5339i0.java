package p148p2;

import android.content.Context;
import p103k2.InterfaceC4438b;
import p171r7.InterfaceC6549a;
/* renamed from: p2.i0 */
/* loaded from: classes.dex */
public final class C5339i0 implements InterfaceC4438b<C5336h0> {

    /* renamed from: a */
    public final InterfaceC6549a<Context> f19942a;

    /* renamed from: b */
    public final InterfaceC6549a<String> f19943b;

    /* renamed from: c */
    public final InterfaceC6549a<Integer> f19944c;

    /* renamed from: a */
    public static C5339i0 m13419a(InterfaceC6549a<Context> interfaceC6549a, InterfaceC6549a<String> interfaceC6549a2, InterfaceC6549a<Integer> interfaceC6549a3) {
        return new C5339i0(interfaceC6549a, interfaceC6549a2, interfaceC6549a3);
    }

    /* renamed from: c */
    public static C5336h0 m13417c(Context context, String str, int i) {
        return new C5336h0(context, str, i);
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public C5336h0 get() {
        return m13417c(this.f19942a.get(), this.f19943b.get(), this.f19944c.get().intValue());
    }

    public C5339i0(InterfaceC6549a<Context> interfaceC6549a, InterfaceC6549a<String> interfaceC6549a2, InterfaceC6549a<Integer> interfaceC6549a3) {
        this.f19942a = interfaceC6549a;
        this.f19943b = interfaceC6549a2;
        this.f19944c = interfaceC6549a3;
    }
}
