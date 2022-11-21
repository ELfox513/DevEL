package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.s */
/* loaded from: classes2.dex */
public final class C7857s extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c {

    /* renamed from: a */
    public final Double f38225a;

    /* renamed from: b */
    public final int f38226b;

    /* renamed from: c */
    public final boolean f38227c;

    /* renamed from: d */
    public final int f38228d;

    /* renamed from: e */
    public final long f38229e;

    /* renamed from: f */
    public final long f38230f;

    /* renamed from: z5.s$b */
    /* loaded from: classes2.dex */
    public static final class C7859b extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.AbstractC7796a {

        /* renamed from: a */
        public Double f38231a;

        /* renamed from: b */
        public Integer f38232b;

        /* renamed from: c */
        public Boolean f38233c;

        /* renamed from: d */
        public Integer f38234d;

        /* renamed from: e */
        public Long f38235e;

        /* renamed from: f */
        public Long f38236f;

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.AbstractC7796a
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.AbstractC7796a mo137b(Double d) {
            this.f38231a = d;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.AbstractC7796a
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.AbstractC7796a mo136c(int i) {
            this.f38232b = Integer.valueOf(i);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.AbstractC7796a
        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.AbstractC7796a mo135d(long j) {
            this.f38236f = Long.valueOf(j);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.AbstractC7796a
        /* renamed from: e */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.AbstractC7796a mo134e(int i) {
            this.f38234d = Integer.valueOf(i);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.AbstractC7796a
        /* renamed from: f */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.AbstractC7796a mo133f(boolean z) {
            this.f38233c = Boolean.valueOf(z);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.AbstractC7796a
        /* renamed from: g */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.AbstractC7796a mo132g(long j) {
            this.f38235e = Long.valueOf(j);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.AbstractC7796a
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c mo138a() {
            String str = "";
            if (this.f38232b == null) {
                str = " batteryVelocity";
            }
            if (this.f38233c == null) {
                str = str + " proximityOn";
            }
            if (this.f38234d == null) {
                str = str + " orientation";
            }
            if (this.f38235e == null) {
                str = str + " ramUsed";
            }
            if (this.f38236f == null) {
                str = str + " diskUsed";
            }
            if (str.isEmpty()) {
                return new C7857s(this.f38231a, this.f38232b.intValue(), this.f38233c.booleanValue(), this.f38234d.intValue(), this.f38235e.longValue(), this.f38236f.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c
    /* renamed from: b */
    public Double mo144b() {
        return this.f38225a;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c
    /* renamed from: c */
    public int mo143c() {
        return this.f38226b;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c
    /* renamed from: d */
    public long mo142d() {
        return this.f38230f;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c
    /* renamed from: e */
    public int mo141e() {
        return this.f38228d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c)) {
            return false;
        }
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c abstractC7795c = (AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c) obj;
        Double d = this.f38225a;
        if (d != null ? d.equals(abstractC7795c.mo144b()) : abstractC7795c.mo144b() == null) {
            if (this.f38226b == abstractC7795c.mo143c() && this.f38227c == abstractC7795c.mo139g() && this.f38228d == abstractC7795c.mo141e() && this.f38229e == abstractC7795c.mo140f() && this.f38230f == abstractC7795c.mo142d()) {
                return true;
            }
        }
        return false;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c
    /* renamed from: f */
    public long mo140f() {
        return this.f38229e;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c
    /* renamed from: g */
    public boolean mo139g() {
        return this.f38227c;
    }

    public String toString() {
        return "Device{batteryLevel=" + this.f38225a + ", batteryVelocity=" + this.f38226b + ", proximityOn=" + this.f38227c + ", orientation=" + this.f38228d + ", ramUsed=" + this.f38229e + ", diskUsed=" + this.f38230f + "}";
    }

    public C7857s(Double d, int i, boolean z, int i2, long j, long j2) {
        this.f38225a = d;
        this.f38226b = i;
        this.f38227c = z;
        this.f38228d = i2;
        this.f38229e = j;
        this.f38230f = j2;
    }

    public int hashCode() {
        int hashCode;
        int i;
        Double d = this.f38225a;
        if (d == null) {
            hashCode = 0;
        } else {
            hashCode = d.hashCode();
        }
        int i2 = (((hashCode ^ 1000003) * 1000003) ^ this.f38226b) * 1000003;
        if (this.f38227c) {
            i = 1231;
        } else {
            i = 1237;
        }
        long j = this.f38229e;
        long j2 = this.f38230f;
        return ((((((i2 ^ i) * 1000003) ^ this.f38228d) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }
}
