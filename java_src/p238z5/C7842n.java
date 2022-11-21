package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.n */
/* loaded from: classes2.dex */
public final class C7842n extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a {

    /* renamed from: a */
    public final long f38185a;

    /* renamed from: b */
    public final long f38186b;

    /* renamed from: c */
    public final String f38187c;

    /* renamed from: d */
    public final String f38188d;

    /* renamed from: z5.n$b */
    /* loaded from: classes2.dex */
    public static final class C7844b extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a.AbstractC7784a {

        /* renamed from: a */
        public Long f38189a;

        /* renamed from: b */
        public Long f38190b;

        /* renamed from: c */
        public String f38191c;

        /* renamed from: d */
        public String f38192d;

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a.AbstractC7784a
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a.AbstractC7784a mo184b(long j) {
            this.f38189a = Long.valueOf(j);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a.AbstractC7784a
        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a.AbstractC7784a mo182d(long j) {
            this.f38190b = Long.valueOf(j);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a.AbstractC7784a
        /* renamed from: e */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a.AbstractC7784a mo181e(String str) {
            this.f38192d = str;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a.AbstractC7784a
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a mo185a() {
            String str = "";
            if (this.f38189a == null) {
                str = " baseAddress";
            }
            if (this.f38190b == null) {
                str = str + " size";
            }
            if (this.f38191c == null) {
                str = str + " name";
            }
            if (str.isEmpty()) {
                return new C7842n(this.f38189a.longValue(), this.f38190b.longValue(), this.f38191c, this.f38192d);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a.AbstractC7784a
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a.AbstractC7784a mo183c(String str) {
            if (str != null) {
                this.f38191c = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a
    /* renamed from: b */
    public long mo189b() {
        return this.f38185a;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a
    /* renamed from: c */
    public String mo188c() {
        return this.f38187c;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a
    /* renamed from: d */
    public long mo187d() {
        return this.f38186b;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a
    /* renamed from: e */
    public String mo186e() {
        return this.f38188d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a)) {
            return false;
        }
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a abstractC7783a = (AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a) obj;
        if (this.f38185a == abstractC7783a.mo189b() && this.f38186b == abstractC7783a.mo187d() && this.f38187c.equals(abstractC7783a.mo188c())) {
            String str = this.f38188d;
            if (str == null) {
                if (abstractC7783a.mo186e() == null) {
                    return true;
                }
            } else if (str.equals(abstractC7783a.mo186e())) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "BinaryImage{baseAddress=" + this.f38185a + ", size=" + this.f38186b + ", name=" + this.f38187c + ", uuid=" + this.f38188d + "}";
    }

    public C7842n(long j, long j2, String str, String str2) {
        this.f38185a = j;
        this.f38186b = j2;
        this.f38187c = str;
        this.f38188d = str2;
    }

    public int hashCode() {
        int hashCode;
        long j = this.f38185a;
        long j2 = this.f38186b;
        int hashCode2 = (((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f38187c.hashCode()) * 1000003;
        String str = this.f38188d;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode ^ hashCode2;
    }
}
