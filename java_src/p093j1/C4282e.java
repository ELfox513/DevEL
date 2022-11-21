package p093j1;
/* renamed from: j1.e */
/* loaded from: classes.dex */
public final class C4282e {

    /* renamed from: a */
    public String f18140a;

    /* renamed from: j1.e$a */
    /* loaded from: classes.dex */
    public static final class C4283a {

        /* renamed from: a */
        public String f18141a;

        public C4283a() {
        }

        /* renamed from: b */
        public final C4283a m16850b(String str) {
            this.f18141a = str;
            return this;
        }

        /* renamed from: a */
        public final C4282e m16851a() {
            if (this.f18141a != null) {
                C4282e c4282e = new C4282e();
                c4282e.f18140a = this.f18141a;
                return c4282e;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }
    }

    public C4282e() {
    }

    /* renamed from: b */
    public static C4283a m16853b() {
        return new C4283a();
    }

    /* renamed from: a */
    public final String m16854a() {
        return this.f18140a;
    }
}
