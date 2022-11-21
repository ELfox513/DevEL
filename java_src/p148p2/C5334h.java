package p148p2;

import p103k2.C4440d;
import p103k2.InterfaceC4438b;
/* renamed from: p2.h */
/* loaded from: classes.dex */
public final class C5334h implements InterfaceC4438b<AbstractC5323d> {

    /* renamed from: p2.h$a */
    /* loaded from: classes.dex */
    public static final class C5335a {

        /* renamed from: a */
        public static final C5334h f19933a = new C5334h();
    }

    /* renamed from: a */
    public static C5334h m13439a() {
        return C5335a.f19933a;
    }

    /* renamed from: c */
    public static AbstractC5323d m13437c() {
        return (AbstractC5323d) C4440d.m16480c(AbstractC5326e.m13448c(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public AbstractC5323d get() {
        return m13437c();
    }
}
