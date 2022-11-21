package p130n2;

import android.content.Context;
import p103k2.C4440d;
import p103k2.InterfaceC4438b;
import p139o2.AbstractC5072g;
import p139o2.InterfaceC5091v;
import p148p2.InterfaceC5321c;
import p166r2.InterfaceC5525a;
import p171r7.InterfaceC6549a;
/* renamed from: n2.i */
/* loaded from: classes.dex */
public final class C4742i implements InterfaceC4438b<InterfaceC5091v> {

    /* renamed from: a */
    public final InterfaceC6549a<Context> f18981a;

    /* renamed from: b */
    public final InterfaceC6549a<InterfaceC5321c> f18982b;

    /* renamed from: c */
    public final InterfaceC6549a<AbstractC5072g> f18983c;

    /* renamed from: d */
    public final InterfaceC6549a<InterfaceC5525a> f18984d;

    /* renamed from: a */
    public static C4742i m15488a(InterfaceC6549a<Context> interfaceC6549a, InterfaceC6549a<InterfaceC5321c> interfaceC6549a2, InterfaceC6549a<AbstractC5072g> interfaceC6549a3, InterfaceC6549a<InterfaceC5525a> interfaceC6549a4) {
        return new C4742i(interfaceC6549a, interfaceC6549a2, interfaceC6549a3, interfaceC6549a4);
    }

    /* renamed from: c */
    public static InterfaceC5091v m15486c(Context context, InterfaceC5321c interfaceC5321c, AbstractC5072g abstractC5072g, InterfaceC5525a interfaceC5525a) {
        return (InterfaceC5091v) C4440d.m16480c(AbstractC4741h.m15489a(context, interfaceC5321c, abstractC5072g, interfaceC5525a), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public InterfaceC5091v get() {
        return m15486c(this.f18981a.get(), this.f18982b.get(), this.f18983c.get(), this.f18984d.get());
    }

    public C4742i(InterfaceC6549a<Context> interfaceC6549a, InterfaceC6549a<InterfaceC5321c> interfaceC6549a2, InterfaceC6549a<AbstractC5072g> interfaceC6549a3, InterfaceC6549a<InterfaceC5525a> interfaceC6549a4) {
        this.f18981a = interfaceC6549a;
        this.f18982b = interfaceC6549a2;
        this.f18983c = interfaceC6549a3;
        this.f18984d = interfaceC6549a4;
    }
}
