package p130n2;

import p103k2.C4440d;
import p103k2.InterfaceC4438b;
import p139o2.AbstractC5072g;
import p166r2.InterfaceC5525a;
import p171r7.InterfaceC6549a;
/* renamed from: n2.g */
/* loaded from: classes.dex */
public final class C4740g implements InterfaceC4438b<AbstractC5072g> {

    /* renamed from: a */
    public final InterfaceC6549a<InterfaceC5525a> f18980a;

    /* renamed from: a */
    public static AbstractC5072g m15492a(InterfaceC5525a interfaceC5525a) {
        return (AbstractC5072g) C4440d.m16480c(AbstractC4739f.m15493a(interfaceC5525a), "Cannot return null from a non-@Nullable @Provides method");
    }

    /* renamed from: b */
    public static C4740g m15491b(InterfaceC6549a<InterfaceC5525a> interfaceC6549a) {
        return new C4740g(interfaceC6549a);
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: c */
    public AbstractC5072g get() {
        return m15492a(this.f18980a.get());
    }

    public C4740g(InterfaceC6549a<InterfaceC5525a> interfaceC6549a) {
        this.f18980a = interfaceC6549a;
    }
}
