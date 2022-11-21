package p166r2;

import p103k2.C4440d;
import p103k2.InterfaceC4438b;
/* renamed from: r2.c */
/* loaded from: classes.dex */
public final class C5527c implements InterfaceC4438b<InterfaceC5525a> {

    /* renamed from: r2.c$a */
    /* loaded from: classes.dex */
    public static final class C5528a {

        /* renamed from: a */
        public static final C5527c f20293a = new C5527c();
    }

    /* renamed from: a */
    public static C5527c m13113a() {
        return C5528a.f20293a;
    }

    /* renamed from: b */
    public static InterfaceC5525a m13112b() {
        return (InterfaceC5525a) C4440d.m16480c(AbstractC5526b.m13115a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: c */
    public InterfaceC5525a get() {
        return m13112b();
    }
}
