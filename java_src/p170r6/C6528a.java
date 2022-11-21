package p170r6;

import p170r6.AbstractC6544l;
/* renamed from: r6.a */
/* loaded from: classes2.dex */
public final class C6528a extends AbstractC6544l {

    /* renamed from: a */
    public final String f34816a;

    /* renamed from: b */
    public final long f34817b;

    /* renamed from: c */
    public final long f34818c;

    /* renamed from: r6.a$b */
    /* loaded from: classes2.dex */
    public static final class C6530b extends AbstractC6544l.AbstractC6545a {

        /* renamed from: a */
        public String f34819a;

        /* renamed from: b */
        public Long f34820b;

        /* renamed from: c */
        public Long f34821c;

        @Override // p170r6.AbstractC6544l.AbstractC6545a
        /* renamed from: c */
        public AbstractC6544l.AbstractC6545a mo3953c(long j) {
            this.f34821c = Long.valueOf(j);
            return this;
        }

        @Override // p170r6.AbstractC6544l.AbstractC6545a
        /* renamed from: d */
        public AbstractC6544l.AbstractC6545a mo3952d(long j) {
            this.f34820b = Long.valueOf(j);
            return this;
        }

        @Override // p170r6.AbstractC6544l.AbstractC6545a
        /* renamed from: a */
        public AbstractC6544l mo3955a() {
            String str = "";
            if (this.f34819a == null) {
                str = " token";
            }
            if (this.f34820b == null) {
                str = str + " tokenExpirationTimestamp";
            }
            if (this.f34821c == null) {
                str = str + " tokenCreationTimestamp";
            }
            if (str.isEmpty()) {
                return new C6528a(this.f34819a, this.f34820b.longValue(), this.f34821c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p170r6.AbstractC6544l.AbstractC6545a
        /* renamed from: b */
        public AbstractC6544l.AbstractC6545a mo3954b(String str) {
            if (str != null) {
                this.f34819a = str;
                return this;
            }
            throw new NullPointerException("Null token");
        }
    }

    @Override // p170r6.AbstractC6544l
    /* renamed from: b */
    public String mo3958b() {
        return this.f34816a;
    }

    @Override // p170r6.AbstractC6544l
    /* renamed from: c */
    public long mo3957c() {
        return this.f34818c;
    }

    @Override // p170r6.AbstractC6544l
    /* renamed from: d */
    public long mo3956d() {
        return this.f34817b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6544l)) {
            return false;
        }
        AbstractC6544l abstractC6544l = (AbstractC6544l) obj;
        return this.f34816a.equals(abstractC6544l.mo3958b()) && this.f34817b == abstractC6544l.mo3956d() && this.f34818c == abstractC6544l.mo3957c();
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.f34816a + ", tokenExpirationTimestamp=" + this.f34817b + ", tokenCreationTimestamp=" + this.f34818c + "}";
    }

    public C6528a(String str, long j, long j2) {
        this.f34816a = str;
        this.f34817b = j;
        this.f34818c = j2;
    }

    public int hashCode() {
        long j = this.f34817b;
        long j2 = this.f34818c;
        return ((((this.f34816a.hashCode() ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }
}
