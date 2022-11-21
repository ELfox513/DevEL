package p148p2;

import p103k2.C4440d;
import p103k2.InterfaceC4438b;
/* renamed from: p2.f */
/* loaded from: classes.dex */
public final class C5328f implements InterfaceC4438b<String> {

    /* renamed from: p2.f$a */
    /* loaded from: classes.dex */
    public static final class C5329a {

        /* renamed from: a */
        public static final C5328f f19931a = new C5328f();
    }

    /* renamed from: a */
    public static C5328f m13447a() {
        return C5329a.f19931a;
    }

    /* renamed from: b */
    public static String m13446b() {
        return (String) C4440d.m16480c(AbstractC5326e.m13450a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: c */
    public String get() {
        return m13446b();
    }
}
