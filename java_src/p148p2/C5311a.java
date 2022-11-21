package p148p2;

import p148p2.AbstractC5323d;
/* renamed from: p2.a */
/* loaded from: classes.dex */
public final class C5311a extends AbstractC5323d {

    /* renamed from: b */
    public final long f19904b;

    /* renamed from: c */
    public final int f19905c;

    /* renamed from: d */
    public final int f19906d;

    /* renamed from: e */
    public final long f19907e;

    /* renamed from: f */
    public final int f19908f;

    /* renamed from: p2.a$b */
    /* loaded from: classes.dex */
    public static final class C5313b extends AbstractC5323d.AbstractC5324a {

        /* renamed from: a */
        public Long f19909a;

        /* renamed from: b */
        public Integer f19910b;

        /* renamed from: c */
        public Integer f19911c;

        /* renamed from: d */
        public Long f19912d;

        /* renamed from: e */
        public Integer f19913e;

        @Override // p148p2.AbstractC5323d.AbstractC5324a
        /* renamed from: b */
        public AbstractC5323d.AbstractC5324a mo13455b(int i) {
            this.f19911c = Integer.valueOf(i);
            return this;
        }

        @Override // p148p2.AbstractC5323d.AbstractC5324a
        /* renamed from: c */
        public AbstractC5323d.AbstractC5324a mo13454c(long j) {
            this.f19912d = Long.valueOf(j);
            return this;
        }

        @Override // p148p2.AbstractC5323d.AbstractC5324a
        /* renamed from: d */
        public AbstractC5323d.AbstractC5324a mo13453d(int i) {
            this.f19910b = Integer.valueOf(i);
            return this;
        }

        @Override // p148p2.AbstractC5323d.AbstractC5324a
        /* renamed from: e */
        public AbstractC5323d.AbstractC5324a mo13452e(int i) {
            this.f19913e = Integer.valueOf(i);
            return this;
        }

        @Override // p148p2.AbstractC5323d.AbstractC5324a
        /* renamed from: f */
        public AbstractC5323d.AbstractC5324a mo13451f(long j) {
            this.f19909a = Long.valueOf(j);
            return this;
        }

        @Override // p148p2.AbstractC5323d.AbstractC5324a
        /* renamed from: a */
        public AbstractC5323d mo13456a() {
            String str = "";
            if (this.f19909a == null) {
                str = " maxStorageSizeInBytes";
            }
            if (this.f19910b == null) {
                str = str + " loadBatchSize";
            }
            if (this.f19911c == null) {
                str = str + " criticalSectionEnterTimeoutMs";
            }
            if (this.f19912d == null) {
                str = str + " eventCleanUpAge";
            }
            if (this.f19913e == null) {
                str = str + " maxBlobByteSizePerRow";
            }
            if (str.isEmpty()) {
                return new C5311a(this.f19909a.longValue(), this.f19910b.intValue(), this.f19911c.intValue(), this.f19912d.longValue(), this.f19913e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // p148p2.AbstractC5323d
    /* renamed from: b */
    public int mo13461b() {
        return this.f19906d;
    }

    @Override // p148p2.AbstractC5323d
    /* renamed from: c */
    public long mo13460c() {
        return this.f19907e;
    }

    @Override // p148p2.AbstractC5323d
    /* renamed from: d */
    public int mo13459d() {
        return this.f19905c;
    }

    @Override // p148p2.AbstractC5323d
    /* renamed from: e */
    public int mo13458e() {
        return this.f19908f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC5323d)) {
            return false;
        }
        AbstractC5323d abstractC5323d = (AbstractC5323d) obj;
        return this.f19904b == abstractC5323d.mo13457f() && this.f19905c == abstractC5323d.mo13459d() && this.f19906d == abstractC5323d.mo13461b() && this.f19907e == abstractC5323d.mo13460c() && this.f19908f == abstractC5323d.mo13458e();
    }

    @Override // p148p2.AbstractC5323d
    /* renamed from: f */
    public long mo13457f() {
        return this.f19904b;
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f19904b + ", loadBatchSize=" + this.f19905c + ", criticalSectionEnterTimeoutMs=" + this.f19906d + ", eventCleanUpAge=" + this.f19907e + ", maxBlobByteSizePerRow=" + this.f19908f + "}";
    }

    public C5311a(long j, int i, int i2, long j2, int i3) {
        this.f19904b = j;
        this.f19905c = i;
        this.f19906d = i2;
        this.f19907e = j2;
        this.f19908f = i3;
    }

    public int hashCode() {
        long j = this.f19904b;
        long j2 = this.f19907e;
        return this.f19908f ^ ((((((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f19905c) * 1000003) ^ this.f19906d) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003);
    }
}
