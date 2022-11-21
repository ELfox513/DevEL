package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.k */
/* loaded from: classes2.dex */
public final class C7833k extends AbstractC7762a0.AbstractC7772e.AbstractC7779d {

    /* renamed from: a */
    public final long f38155a;

    /* renamed from: b */
    public final String f38156b;

    /* renamed from: c */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a f38157c;

    /* renamed from: d */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c f38158d;

    /* renamed from: e */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d f38159e;

    /* renamed from: z5.k$b */
    /* loaded from: classes2.dex */
    public static final class C7835b extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7794b {

        /* renamed from: a */
        public Long f38160a;

        /* renamed from: b */
        public String f38161b;

        /* renamed from: c */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a f38162c;

        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c f38163d;

        /* renamed from: e */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d f38164e;

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7794b
        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7794b mo215d(AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d abstractC7797d) {
            this.f38164e = abstractC7797d;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7794b
        /* renamed from: e */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7794b mo214e(long j) {
            this.f38160a = Long.valueOf(j);
            return this;
        }

        public C7835b() {
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7794b
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d mo218a() {
            String str = "";
            if (this.f38160a == null) {
                str = " timestamp";
            }
            if (this.f38161b == null) {
                str = str + " type";
            }
            if (this.f38162c == null) {
                str = str + " app";
            }
            if (this.f38163d == null) {
                str = str + " device";
            }
            if (str.isEmpty()) {
                return new C7833k(this.f38160a.longValue(), this.f38161b, this.f38162c, this.f38163d, this.f38164e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7794b
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7794b mo217b(AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a abstractC7780a) {
            if (abstractC7780a != null) {
                this.f38162c = abstractC7780a;
                return this;
            }
            throw new NullPointerException("Null app");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7794b
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7794b mo216c(AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c abstractC7795c) {
            if (abstractC7795c != null) {
                this.f38163d = abstractC7795c;
                return this;
            }
            throw new NullPointerException("Null device");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7794b
        /* renamed from: f */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7794b mo213f(String str) {
            if (str != null) {
                this.f38161b = str;
                return this;
            }
            throw new NullPointerException("Null type");
        }

        public C7835b(AbstractC7762a0.AbstractC7772e.AbstractC7779d abstractC7779d) {
            this.f38160a = Long.valueOf(abstractC7779d.mo221e());
            this.f38161b = abstractC7779d.mo220f();
            this.f38162c = abstractC7779d.mo224b();
            this.f38163d = abstractC7779d.mo223c();
            this.f38164e = abstractC7779d.mo222d();
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d
    /* renamed from: b */
    public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a mo224b() {
        return this.f38157c;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d
    /* renamed from: c */
    public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c mo223c() {
        return this.f38158d;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d
    /* renamed from: d */
    public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d mo222d() {
        return this.f38159e;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d
    /* renamed from: e */
    public long mo221e() {
        return this.f38155a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7772e.AbstractC7779d)) {
            return false;
        }
        AbstractC7762a0.AbstractC7772e.AbstractC7779d abstractC7779d = (AbstractC7762a0.AbstractC7772e.AbstractC7779d) obj;
        if (this.f38155a == abstractC7779d.mo221e() && this.f38156b.equals(abstractC7779d.mo220f()) && this.f38157c.equals(abstractC7779d.mo224b()) && this.f38158d.equals(abstractC7779d.mo223c())) {
            AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d abstractC7797d = this.f38159e;
            if (abstractC7797d == null) {
                if (abstractC7779d.mo222d() == null) {
                    return true;
                }
            } else if (abstractC7797d.equals(abstractC7779d.mo222d())) {
                return true;
            }
        }
        return false;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d
    /* renamed from: f */
    public String mo220f() {
        return this.f38156b;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d
    /* renamed from: g */
    public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7794b mo219g() {
        return new C7835b(this);
    }

    public String toString() {
        return "Event{timestamp=" + this.f38155a + ", type=" + this.f38156b + ", app=" + this.f38157c + ", device=" + this.f38158d + ", log=" + this.f38159e + "}";
    }

    public C7833k(long j, String str, AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a abstractC7780a, AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c abstractC7795c, AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d abstractC7797d) {
        this.f38155a = j;
        this.f38156b = str;
        this.f38157c = abstractC7780a;
        this.f38158d = abstractC7795c;
        this.f38159e = abstractC7797d;
    }

    public int hashCode() {
        int hashCode;
        long j = this.f38155a;
        int hashCode2 = (((((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f38156b.hashCode()) * 1000003) ^ this.f38157c.hashCode()) * 1000003) ^ this.f38158d.hashCode()) * 1000003;
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d abstractC7797d = this.f38159e;
        if (abstractC7797d == null) {
            hashCode = 0;
        } else {
            hashCode = abstractC7797d.hashCode();
        }
        return hashCode ^ hashCode2;
    }
}
