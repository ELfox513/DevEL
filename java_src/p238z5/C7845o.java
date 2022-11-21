package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.o */
/* loaded from: classes2.dex */
public final class C7845o extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c {

    /* renamed from: a */
    public final String f38193a;

    /* renamed from: b */
    public final String f38194b;

    /* renamed from: c */
    public final C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b> f38195c;

    /* renamed from: d */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c f38196d;

    /* renamed from: e */
    public final int f38197e;

    /* renamed from: z5.o$b */
    /* loaded from: classes2.dex */
    public static final class C7847b extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c.AbstractC7787a {

        /* renamed from: a */
        public String f38198a;

        /* renamed from: b */
        public String f38199b;

        /* renamed from: c */
        public C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b> f38200c;

        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c f38201d;

        /* renamed from: e */
        public Integer f38202e;

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c.AbstractC7787a
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c.AbstractC7787a mo174b(AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c abstractC7786c) {
            this.f38201d = abstractC7786c;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c.AbstractC7787a
        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c.AbstractC7787a mo172d(int i) {
            this.f38202e = Integer.valueOf(i);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c.AbstractC7787a
        /* renamed from: e */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c.AbstractC7787a mo171e(String str) {
            this.f38199b = str;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c.AbstractC7787a
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c mo175a() {
            String str = "";
            if (this.f38198a == null) {
                str = " type";
            }
            if (this.f38200c == null) {
                str = str + " frames";
            }
            if (this.f38202e == null) {
                str = str + " overflowCount";
            }
            if (str.isEmpty()) {
                return new C7845o(this.f38198a, this.f38199b, this.f38200c, this.f38201d, this.f38202e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c.AbstractC7787a
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c.AbstractC7787a mo173c(C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b> c7806b0) {
            if (c7806b0 != null) {
                this.f38200c = c7806b0;
                return this;
            }
            throw new NullPointerException("Null frames");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c.AbstractC7787a
        /* renamed from: f */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c.AbstractC7787a mo170f(String str) {
            if (str != null) {
                this.f38198a = str;
                return this;
            }
            throw new NullPointerException("Null type");
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c
    /* renamed from: b */
    public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c mo180b() {
        return this.f38196d;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c
    /* renamed from: c */
    public C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b> mo179c() {
        return this.f38195c;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c
    /* renamed from: d */
    public int mo178d() {
        return this.f38197e;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c
    /* renamed from: e */
    public String mo177e() {
        return this.f38194b;
    }

    public boolean equals(Object obj) {
        String str;
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c abstractC7786c;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c)) {
            return false;
        }
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c abstractC7786c2 = (AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c) obj;
        return this.f38193a.equals(abstractC7786c2.mo176f()) && ((str = this.f38194b) != null ? str.equals(abstractC7786c2.mo177e()) : abstractC7786c2.mo177e() == null) && this.f38195c.equals(abstractC7786c2.mo179c()) && ((abstractC7786c = this.f38196d) != null ? abstractC7786c.equals(abstractC7786c2.mo180b()) : abstractC7786c2.mo180b() == null) && this.f38197e == abstractC7786c2.mo178d();
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c
    /* renamed from: f */
    public String mo176f() {
        return this.f38193a;
    }

    public String toString() {
        return "Exception{type=" + this.f38193a + ", reason=" + this.f38194b + ", frames=" + this.f38195c + ", causedBy=" + this.f38196d + ", overflowCount=" + this.f38197e + "}";
    }

    public C7845o(String str, String str2, C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b> c7806b0, AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c abstractC7786c, int i) {
        this.f38193a = str;
        this.f38194b = str2;
        this.f38195c = c7806b0;
        this.f38196d = abstractC7786c;
        this.f38197e = i;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = (this.f38193a.hashCode() ^ 1000003) * 1000003;
        String str = this.f38194b;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode3 = (((hashCode2 ^ hashCode) * 1000003) ^ this.f38195c.hashCode()) * 1000003;
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c abstractC7786c = this.f38196d;
        if (abstractC7786c != null) {
            i = abstractC7786c.hashCode();
        }
        return ((hashCode3 ^ i) * 1000003) ^ this.f38197e;
    }
}
