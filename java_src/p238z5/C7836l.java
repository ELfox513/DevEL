package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.l */
/* loaded from: classes2.dex */
public final class C7836l extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a {

    /* renamed from: a */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b f38165a;

    /* renamed from: b */
    public final C7806b0<AbstractC7762a0.AbstractC7766c> f38166b;

    /* renamed from: c */
    public final C7806b0<AbstractC7762a0.AbstractC7766c> f38167c;

    /* renamed from: d */
    public final Boolean f38168d;

    /* renamed from: e */
    public final int f38169e;

    /* renamed from: z5.l$b */
    /* loaded from: classes2.dex */
    public static final class C7838b extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7781a {

        /* renamed from: a */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b f38170a;

        /* renamed from: b */
        public C7806b0<AbstractC7762a0.AbstractC7766c> f38171b;

        /* renamed from: c */
        public C7806b0<AbstractC7762a0.AbstractC7766c> f38172c;

        /* renamed from: d */
        public Boolean f38173d;

        /* renamed from: e */
        public Integer f38174e;

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7781a
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7781a mo205b(Boolean bool) {
            this.f38173d = bool;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7781a
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7781a mo204c(C7806b0<AbstractC7762a0.AbstractC7766c> c7806b0) {
            this.f38171b = c7806b0;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7781a
        /* renamed from: e */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7781a mo202e(C7806b0<AbstractC7762a0.AbstractC7766c> c7806b0) {
            this.f38172c = c7806b0;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7781a
        /* renamed from: f */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7781a mo201f(int i) {
            this.f38174e = Integer.valueOf(i);
            return this;
        }

        public C7838b() {
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7781a
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a mo206a() {
            String str = "";
            if (this.f38170a == null) {
                str = " execution";
            }
            if (this.f38174e == null) {
                str = str + " uiOrientation";
            }
            if (str.isEmpty()) {
                return new C7836l(this.f38170a, this.f38171b, this.f38172c, this.f38173d, this.f38174e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7781a
        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7781a mo203d(AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b abstractC7782b) {
            if (abstractC7782b != null) {
                this.f38170a = abstractC7782b;
                return this;
            }
            throw new NullPointerException("Null execution");
        }

        public C7838b(AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a abstractC7780a) {
            this.f38170a = abstractC7780a.mo210d();
            this.f38171b = abstractC7780a.mo211c();
            this.f38172c = abstractC7780a.mo209e();
            this.f38173d = abstractC7780a.mo212b();
            this.f38174e = Integer.valueOf(abstractC7780a.mo208f());
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a
    /* renamed from: b */
    public Boolean mo212b() {
        return this.f38168d;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a
    /* renamed from: c */
    public C7806b0<AbstractC7762a0.AbstractC7766c> mo211c() {
        return this.f38166b;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a
    /* renamed from: d */
    public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b mo210d() {
        return this.f38165a;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a
    /* renamed from: e */
    public C7806b0<AbstractC7762a0.AbstractC7766c> mo209e() {
        return this.f38167c;
    }

    public boolean equals(Object obj) {
        C7806b0<AbstractC7762a0.AbstractC7766c> c7806b0;
        C7806b0<AbstractC7762a0.AbstractC7766c> c7806b02;
        Boolean bool;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a)) {
            return false;
        }
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a abstractC7780a = (AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a) obj;
        return this.f38165a.equals(abstractC7780a.mo210d()) && ((c7806b0 = this.f38166b) != null ? c7806b0.equals(abstractC7780a.mo211c()) : abstractC7780a.mo211c() == null) && ((c7806b02 = this.f38167c) != null ? c7806b02.equals(abstractC7780a.mo209e()) : abstractC7780a.mo209e() == null) && ((bool = this.f38168d) != null ? bool.equals(abstractC7780a.mo212b()) : abstractC7780a.mo212b() == null) && this.f38169e == abstractC7780a.mo208f();
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a
    /* renamed from: f */
    public int mo208f() {
        return this.f38169e;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a
    /* renamed from: g */
    public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7781a mo207g() {
        return new C7838b(this);
    }

    public String toString() {
        return "Application{execution=" + this.f38165a + ", customAttributes=" + this.f38166b + ", internalKeys=" + this.f38167c + ", background=" + this.f38168d + ", uiOrientation=" + this.f38169e + "}";
    }

    public C7836l(AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b abstractC7782b, C7806b0<AbstractC7762a0.AbstractC7766c> c7806b0, C7806b0<AbstractC7762a0.AbstractC7766c> c7806b02, Boolean bool, int i) {
        this.f38165a = abstractC7782b;
        this.f38166b = c7806b0;
        this.f38167c = c7806b02;
        this.f38168d = bool;
        this.f38169e = i;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = (this.f38165a.hashCode() ^ 1000003) * 1000003;
        C7806b0<AbstractC7762a0.AbstractC7766c> c7806b0 = this.f38166b;
        int i = 0;
        if (c7806b0 == null) {
            hashCode = 0;
        } else {
            hashCode = c7806b0.hashCode();
        }
        int i2 = (hashCode3 ^ hashCode) * 1000003;
        C7806b0<AbstractC7762a0.AbstractC7766c> c7806b02 = this.f38167c;
        if (c7806b02 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = c7806b02.hashCode();
        }
        int i3 = (i2 ^ hashCode2) * 1000003;
        Boolean bool = this.f38168d;
        if (bool != null) {
            i = bool.hashCode();
        }
        return ((i3 ^ i) * 1000003) ^ this.f38169e;
    }
}
