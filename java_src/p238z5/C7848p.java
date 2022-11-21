package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.p */
/* loaded from: classes2.dex */
public final class C7848p extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d {

    /* renamed from: a */
    public final String f38203a;

    /* renamed from: b */
    public final String f38204b;

    /* renamed from: c */
    public final long f38205c;

    /* renamed from: z5.p$b */
    /* loaded from: classes2.dex */
    public static final class C7850b extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d.AbstractC7789a {

        /* renamed from: a */
        public String f38206a;

        /* renamed from: b */
        public String f38207b;

        /* renamed from: c */
        public Long f38208c;

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d.AbstractC7789a
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d.AbstractC7789a mo165b(long j) {
            this.f38208c = Long.valueOf(j);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d.AbstractC7789a
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d mo166a() {
            String str = "";
            if (this.f38206a == null) {
                str = " name";
            }
            if (this.f38207b == null) {
                str = str + " code";
            }
            if (this.f38208c == null) {
                str = str + " address";
            }
            if (str.isEmpty()) {
                return new C7848p(this.f38206a, this.f38207b, this.f38208c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d.AbstractC7789a
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d.AbstractC7789a mo164c(String str) {
            if (str != null) {
                this.f38207b = str;
                return this;
            }
            throw new NullPointerException("Null code");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d.AbstractC7789a
        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d.AbstractC7789a mo163d(String str) {
            if (str != null) {
                this.f38206a = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d
    /* renamed from: b */
    public long mo169b() {
        return this.f38205c;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d
    /* renamed from: c */
    public String mo168c() {
        return this.f38204b;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d
    /* renamed from: d */
    public String mo167d() {
        return this.f38203a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d)) {
            return false;
        }
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d abstractC7788d = (AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d) obj;
        return this.f38203a.equals(abstractC7788d.mo167d()) && this.f38204b.equals(abstractC7788d.mo168c()) && this.f38205c == abstractC7788d.mo169b();
    }

    public String toString() {
        return "Signal{name=" + this.f38203a + ", code=" + this.f38204b + ", address=" + this.f38205c + "}";
    }

    public C7848p(String str, String str2, long j) {
        this.f38203a = str;
        this.f38204b = str2;
        this.f38205c = j;
    }

    public int hashCode() {
        long j = this.f38205c;
        return ((((this.f38203a.hashCode() ^ 1000003) * 1000003) ^ this.f38204b.hashCode()) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }
}
