package p209w0;

import android.os.Build;
/* renamed from: w0.b */
/* loaded from: classes.dex */
public final class C7103b {

    /* renamed from: i */
    public static final C7103b f36093i = new C7104a().m2508a();

    /* renamed from: a */
    public EnumC7116k f36094a;

    /* renamed from: b */
    public boolean f36095b;

    /* renamed from: c */
    public boolean f36096c;

    /* renamed from: d */
    public boolean f36097d;

    /* renamed from: e */
    public boolean f36098e;

    /* renamed from: f */
    public long f36099f;

    /* renamed from: g */
    public long f36100g;

    /* renamed from: h */
    public C7105c f36101h;

    /* renamed from: w0.b$a */
    /* loaded from: classes.dex */
    public static final class C7104a {

        /* renamed from: a */
        public boolean f36102a = false;

        /* renamed from: b */
        public boolean f36103b = false;

        /* renamed from: c */
        public EnumC7116k f36104c = EnumC7116k.NOT_REQUIRED;

        /* renamed from: d */
        public boolean f36105d = false;

        /* renamed from: e */
        public boolean f36106e = false;

        /* renamed from: f */
        public long f36107f = -1;

        /* renamed from: g */
        public long f36108g = -1;

        /* renamed from: h */
        public C7105c f36109h = new C7105c();

        /* renamed from: a */
        public C7103b m2508a() {
            return new C7103b(this);
        }

        /* renamed from: b */
        public C7104a m2507b(EnumC7116k enumC7116k) {
            this.f36104c = enumC7116k;
            return this;
        }
    }

    public C7103b() {
        this.f36094a = EnumC7116k.NOT_REQUIRED;
        this.f36099f = -1L;
        this.f36100g = -1L;
        this.f36101h = new C7105c();
    }

    /* renamed from: a */
    public C7105c m2525a() {
        return this.f36101h;
    }

    /* renamed from: b */
    public EnumC7116k m2524b() {
        return this.f36094a;
    }

    /* renamed from: c */
    public long m2523c() {
        return this.f36099f;
    }

    /* renamed from: d */
    public long m2522d() {
        return this.f36100g;
    }

    /* renamed from: e */
    public boolean m2521e() {
        return this.f36101h.m2504c() > 0;
    }

    /* renamed from: f */
    public boolean m2520f() {
        return this.f36097d;
    }

    /* renamed from: g */
    public boolean m2519g() {
        return this.f36095b;
    }

    /* renamed from: h */
    public boolean m2518h() {
        return this.f36096c;
    }

    /* renamed from: i */
    public boolean m2517i() {
        return this.f36098e;
    }

    /* renamed from: j */
    public void m2516j(C7105c c7105c) {
        this.f36101h = c7105c;
    }

    /* renamed from: k */
    public void m2515k(EnumC7116k enumC7116k) {
        this.f36094a = enumC7116k;
    }

    /* renamed from: l */
    public void m2514l(boolean z) {
        this.f36097d = z;
    }

    /* renamed from: m */
    public void m2513m(boolean z) {
        this.f36095b = z;
    }

    /* renamed from: n */
    public void m2512n(boolean z) {
        this.f36096c = z;
    }

    /* renamed from: o */
    public void m2511o(boolean z) {
        this.f36098e = z;
    }

    /* renamed from: p */
    public void m2510p(long j) {
        this.f36099f = j;
    }

    /* renamed from: q */
    public void m2509q(long j) {
        this.f36100g = j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C7103b.class != obj.getClass()) {
            return false;
        }
        C7103b c7103b = (C7103b) obj;
        if (this.f36095b != c7103b.f36095b || this.f36096c != c7103b.f36096c || this.f36097d != c7103b.f36097d || this.f36098e != c7103b.f36098e || this.f36099f != c7103b.f36099f || this.f36100g != c7103b.f36100g || this.f36094a != c7103b.f36094a) {
            return false;
        }
        return this.f36101h.equals(c7103b.f36101h);
    }

    public int hashCode() {
        long j = this.f36099f;
        long j2 = this.f36100g;
        return (((((((((((((this.f36094a.hashCode() * 31) + (this.f36095b ? 1 : 0)) * 31) + (this.f36096c ? 1 : 0)) * 31) + (this.f36097d ? 1 : 0)) * 31) + (this.f36098e ? 1 : 0)) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.f36101h.hashCode();
    }

    public C7103b(C7104a c7104a) {
        this.f36094a = EnumC7116k.NOT_REQUIRED;
        this.f36099f = -1L;
        this.f36100g = -1L;
        this.f36101h = new C7105c();
        this.f36095b = c7104a.f36102a;
        int i = Build.VERSION.SDK_INT;
        this.f36096c = i >= 23 && c7104a.f36103b;
        this.f36094a = c7104a.f36104c;
        this.f36097d = c7104a.f36105d;
        this.f36098e = c7104a.f36106e;
        if (i >= 24) {
            this.f36101h = c7104a.f36109h;
            this.f36099f = c7104a.f36107f;
            this.f36100g = c7104a.f36108g;
        }
    }

    public C7103b(C7103b c7103b) {
        this.f36094a = EnumC7116k.NOT_REQUIRED;
        this.f36099f = -1L;
        this.f36100g = -1L;
        this.f36101h = new C7105c();
        this.f36095b = c7103b.f36095b;
        this.f36096c = c7103b.f36096c;
        this.f36094a = c7103b.f36094a;
        this.f36097d = c7103b.f36097d;
        this.f36098e = c7103b.f36098e;
        this.f36101h = c7103b.f36101h;
    }
}
