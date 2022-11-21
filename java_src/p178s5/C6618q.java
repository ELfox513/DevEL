package p178s5;
/* renamed from: s5.q */
/* loaded from: classes2.dex */
public final class C6618q {

    /* renamed from: a */
    public final Class<?> f35200a;

    /* renamed from: b */
    public final int f35201b;

    /* renamed from: c */
    public final int f35202c;

    /* renamed from: a */
    public static C6618q m3790a(Class<?> cls) {
        return new C6618q(cls, 0, 2);
    }

    /* renamed from: b */
    public static String m3789b(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return "deferred";
                }
                throw new AssertionError("Unsupported injection: " + i);
            }
            return "provider";
        }
        return "direct";
    }

    /* renamed from: h */
    public static C6618q m3783h(Class<?> cls) {
        return new C6618q(cls, 0, 1);
    }

    /* renamed from: i */
    public static C6618q m3782i(Class<?> cls) {
        return new C6618q(cls, 1, 0);
    }

    /* renamed from: j */
    public static C6618q m3781j(Class<?> cls) {
        return new C6618q(cls, 1, 1);
    }

    /* renamed from: k */
    public static C6618q m3780k(Class<?> cls) {
        return new C6618q(cls, 2, 0);
    }

    /* renamed from: c */
    public Class<?> m3788c() {
        return this.f35200a;
    }

    /* renamed from: d */
    public boolean m3787d() {
        return this.f35202c == 2;
    }

    /* renamed from: e */
    public boolean m3786e() {
        return this.f35202c == 0;
    }

    /* renamed from: f */
    public boolean m3785f() {
        return this.f35201b == 1;
    }

    /* renamed from: g */
    public boolean m3784g() {
        return this.f35201b == 2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C6618q)) {
            return false;
        }
        C6618q c6618q = (C6618q) obj;
        if (this.f35200a != c6618q.f35200a || this.f35201b != c6618q.f35201b || this.f35202c != c6618q.f35202c) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((((this.f35200a.hashCode() ^ 1000003) * 1000003) ^ this.f35201b) * 1000003) ^ this.f35202c;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f35200a);
        sb.append(", type=");
        int i = this.f35201b;
        if (i == 1) {
            str = "required";
        } else if (i == 0) {
            str = "optional";
        } else {
            str = "set";
        }
        sb.append(str);
        sb.append(", injection=");
        sb.append(m3789b(this.f35202c));
        sb.append("}");
        return sb.toString();
    }

    public C6618q(Class<?> cls, int i, int i2) {
        this.f35200a = (Class) C6595d0.m3837c(cls, "Null dependency anInterface.");
        this.f35201b = i;
        this.f35202c = i2;
    }
}
