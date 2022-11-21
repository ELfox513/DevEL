package p085i2;

import java.util.concurrent.Executor;
import p103k2.C4440d;
import p103k2.InterfaceC4438b;
/* renamed from: i2.j */
/* loaded from: classes.dex */
public final class C4107j implements InterfaceC4438b<Executor> {

    /* renamed from: i2.j$a */
    /* loaded from: classes.dex */
    public static final class C4108a {

        /* renamed from: a */
        public static final C4107j f17714a = new C4107j();
    }

    /* renamed from: a */
    public static C4107j m17374a() {
        return C4108a.f17714a;
    }

    /* renamed from: b */
    public static Executor m17373b() {
        return (Executor) C4440d.m16480c(AbstractC4106i.m17375a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: c */
    public Executor get() {
        return m17373b();
    }
}
