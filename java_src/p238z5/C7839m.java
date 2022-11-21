package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.m */
/* loaded from: classes2.dex */
public final class C7839m extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b {

    /* renamed from: a */
    public final C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e> f38175a;

    /* renamed from: b */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c f38176b;

    /* renamed from: c */
    public final AbstractC7762a0.AbstractC7763a f38177c;

    /* renamed from: d */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d f38178d;

    /* renamed from: e */
    public final C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a> f38179e;

    /* renamed from: z5.m$b */
    /* loaded from: classes2.dex */
    public static final class C7841b extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7785b {

        /* renamed from: a */
        public C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e> f38180a;

        /* renamed from: b */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c f38181b;

        /* renamed from: c */
        public AbstractC7762a0.AbstractC7763a f38182c;

        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d f38183d;

        /* renamed from: e */
        public C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a> f38184e;

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7785b
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7785b mo194b(AbstractC7762a0.AbstractC7763a abstractC7763a) {
            this.f38182c = abstractC7763a;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7785b
        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7785b mo192d(AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c abstractC7786c) {
            this.f38181b = abstractC7786c;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7785b
        /* renamed from: f */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7785b mo190f(C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e> c7806b0) {
            this.f38180a = c7806b0;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7785b
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b mo195a() {
            String str = "";
            if (this.f38183d == null) {
                str = " signal";
            }
            if (this.f38184e == null) {
                str = str + " binaries";
            }
            if (str.isEmpty()) {
                return new C7839m(this.f38180a, this.f38181b, this.f38182c, this.f38183d, this.f38184e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7785b
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7785b mo193c(C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a> c7806b0) {
            if (c7806b0 != null) {
                this.f38184e = c7806b0;
                return this;
            }
            throw new NullPointerException("Null binaries");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7785b
        /* renamed from: e */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7785b mo191e(AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d abstractC7788d) {
            if (abstractC7788d != null) {
                this.f38183d = abstractC7788d;
                return this;
            }
            throw new NullPointerException("Null signal");
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b
    /* renamed from: b */
    public AbstractC7762a0.AbstractC7763a mo200b() {
        return this.f38177c;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b
    /* renamed from: c */
    public C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a> mo199c() {
        return this.f38179e;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b
    /* renamed from: d */
    public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c mo198d() {
        return this.f38176b;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b
    /* renamed from: e */
    public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d mo197e() {
        return this.f38178d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b)) {
            return false;
        }
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b abstractC7782b = (AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b) obj;
        C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e> c7806b0 = this.f38175a;
        if (c7806b0 != null ? c7806b0.equals(abstractC7782b.mo196f()) : abstractC7782b.mo196f() == null) {
            AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c abstractC7786c = this.f38176b;
            if (abstractC7786c != null ? abstractC7786c.equals(abstractC7782b.mo198d()) : abstractC7782b.mo198d() == null) {
                AbstractC7762a0.AbstractC7763a abstractC7763a = this.f38177c;
                if (abstractC7763a != null ? abstractC7763a.equals(abstractC7782b.mo200b()) : abstractC7782b.mo200b() == null) {
                    if (this.f38178d.equals(abstractC7782b.mo197e()) && this.f38179e.equals(abstractC7782b.mo199c())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b
    /* renamed from: f */
    public C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e> mo196f() {
        return this.f38175a;
    }

    public String toString() {
        return "Execution{threads=" + this.f38175a + ", exception=" + this.f38176b + ", appExitInfo=" + this.f38177c + ", signal=" + this.f38178d + ", binaries=" + this.f38179e + "}";
    }

    public C7839m(C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e> c7806b0, AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c abstractC7786c, AbstractC7762a0.AbstractC7763a abstractC7763a, AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d abstractC7788d, C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a> c7806b02) {
        this.f38175a = c7806b0;
        this.f38176b = abstractC7786c;
        this.f38177c = abstractC7763a;
        this.f38178d = abstractC7788d;
        this.f38179e = c7806b02;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e> c7806b0 = this.f38175a;
        int i = 0;
        if (c7806b0 == null) {
            hashCode = 0;
        } else {
            hashCode = c7806b0.hashCode();
        }
        int i2 = (hashCode ^ 1000003) * 1000003;
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c abstractC7786c = this.f38176b;
        if (abstractC7786c == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = abstractC7786c.hashCode();
        }
        int i3 = (i2 ^ hashCode2) * 1000003;
        AbstractC7762a0.AbstractC7763a abstractC7763a = this.f38177c;
        if (abstractC7763a != null) {
            i = abstractC7763a.hashCode();
        }
        return ((((i3 ^ i) * 1000003) ^ this.f38178d.hashCode()) * 1000003) ^ this.f38179e.hashCode();
    }
}
