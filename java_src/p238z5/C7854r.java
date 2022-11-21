package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.r */
/* loaded from: classes2.dex */
public final class C7854r extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b {

    /* renamed from: a */
    public final long f38215a;

    /* renamed from: b */
    public final String f38216b;

    /* renamed from: c */
    public final String f38217c;

    /* renamed from: d */
    public final long f38218d;

    /* renamed from: e */
    public final int f38219e;

    /* renamed from: z5.r$b */
    /* loaded from: classes2.dex */
    public static final class C7856b extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b.AbstractC7793a {

        /* renamed from: a */
        public Long f38220a;

        /* renamed from: b */
        public String f38221b;

        /* renamed from: c */
        public String f38222c;

        /* renamed from: d */
        public Long f38223d;

        /* renamed from: e */
        public Integer f38224e;

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b.AbstractC7793a
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b.AbstractC7793a mo149b(String str) {
            this.f38222c = str;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b.AbstractC7793a
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b.AbstractC7793a mo148c(int i) {
            this.f38224e = Integer.valueOf(i);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b.AbstractC7793a
        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b.AbstractC7793a mo147d(long j) {
            this.f38223d = Long.valueOf(j);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b.AbstractC7793a
        /* renamed from: e */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b.AbstractC7793a mo146e(long j) {
            this.f38220a = Long.valueOf(j);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b.AbstractC7793a
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b mo150a() {
            String str = "";
            if (this.f38220a == null) {
                str = " pc";
            }
            if (this.f38221b == null) {
                str = str + " symbol";
            }
            if (this.f38223d == null) {
                str = str + " offset";
            }
            if (this.f38224e == null) {
                str = str + " importance";
            }
            if (str.isEmpty()) {
                return new C7854r(this.f38220a.longValue(), this.f38221b, this.f38222c, this.f38223d.longValue(), this.f38224e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b.AbstractC7793a
        /* renamed from: f */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b.AbstractC7793a mo145f(String str) {
            if (str != null) {
                this.f38221b = str;
                return this;
            }
            throw new NullPointerException("Null symbol");
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b
    /* renamed from: b */
    public String mo155b() {
        return this.f38217c;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b
    /* renamed from: c */
    public int mo154c() {
        return this.f38219e;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b
    /* renamed from: d */
    public long mo153d() {
        return this.f38218d;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b
    /* renamed from: e */
    public long mo152e() {
        return this.f38215a;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b)) {
            return false;
        }
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b abstractC7792b = (AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b) obj;
        return this.f38215a == abstractC7792b.mo152e() && this.f38216b.equals(abstractC7792b.mo151f()) && ((str = this.f38217c) != null ? str.equals(abstractC7792b.mo155b()) : abstractC7792b.mo155b() == null) && this.f38218d == abstractC7792b.mo153d() && this.f38219e == abstractC7792b.mo154c();
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b
    /* renamed from: f */
    public String mo151f() {
        return this.f38216b;
    }

    public String toString() {
        return "Frame{pc=" + this.f38215a + ", symbol=" + this.f38216b + ", file=" + this.f38217c + ", offset=" + this.f38218d + ", importance=" + this.f38219e + "}";
    }

    public C7854r(long j, String str, String str2, long j2, int i) {
        this.f38215a = j;
        this.f38216b = str;
        this.f38217c = str2;
        this.f38218d = j2;
        this.f38219e = i;
    }

    public int hashCode() {
        int hashCode;
        long j = this.f38215a;
        int hashCode2 = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f38216b.hashCode()) * 1000003;
        String str = this.f38217c;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        long j2 = this.f38218d;
        return this.f38219e ^ ((((hashCode2 ^ hashCode) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003);
    }
}
