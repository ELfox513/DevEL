package p166r2;

import p103k2.C4440d;
import p103k2.InterfaceC4438b;
/* renamed from: r2.d */
/* loaded from: classes.dex */
public final class C5529d implements InterfaceC4438b<InterfaceC5525a> {

    /* renamed from: r2.d$a */
    /* loaded from: classes.dex */
    public static final class C5530a {

        /* renamed from: a */
        public static final C5529d f20294a = new C5529d();
    }

    /* renamed from: a */
    public static C5529d m13109a() {
        return C5530a.f20294a;
    }

    /* renamed from: c */
    public static InterfaceC5525a m13107c() {
        return (InterfaceC5525a) C4440d.m16480c(AbstractC5526b.m13114b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public InterfaceC5525a get() {
        return m13107c();
    }
}
