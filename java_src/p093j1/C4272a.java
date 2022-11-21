package p093j1;
/* renamed from: j1.a */
/* loaded from: classes.dex */
public final class C4272a {

    /* renamed from: a */
    public String f18113a;

    /* renamed from: j1.a$a */
    /* loaded from: classes.dex */
    public static final class C4273a {

        /* renamed from: a */
        public String f18114a;

        public C4273a() {
        }

        /* renamed from: b */
        public final C4273a m16875b(String str) {
            this.f18114a = str;
            return this;
        }

        /* renamed from: a */
        public final C4272a m16876a() {
            if (this.f18114a != null) {
                C4272a c4272a = new C4272a();
                c4272a.f18113a = this.f18114a;
                return c4272a;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }
    }

    public C4272a() {
    }

    /* renamed from: b */
    public static C4273a m16878b() {
        return new C4273a();
    }

    /* renamed from: a */
    public final String m16879a() {
        return this.f18113a;
    }
}
