package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.b */
/* loaded from: classes2.dex */
public final class C7803b extends AbstractC7762a0 {

    /* renamed from: b */
    public final String f38055b;

    /* renamed from: c */
    public final String f38056c;

    /* renamed from: d */
    public final int f38057d;

    /* renamed from: e */
    public final String f38058e;

    /* renamed from: f */
    public final String f38059f;

    /* renamed from: g */
    public final String f38060g;

    /* renamed from: h */
    public final AbstractC7762a0.AbstractC7772e f38061h;

    /* renamed from: i */
    public final AbstractC7762a0.AbstractC7768d f38062i;

    /* renamed from: z5.b$b */
    /* loaded from: classes2.dex */
    public static final class C7805b extends AbstractC7762a0.AbstractC7765b {

        /* renamed from: a */
        public String f38063a;

        /* renamed from: b */
        public String f38064b;

        /* renamed from: c */
        public Integer f38065c;

        /* renamed from: d */
        public String f38066d;

        /* renamed from: e */
        public String f38067e;

        /* renamed from: f */
        public String f38068f;

        /* renamed from: g */
        public AbstractC7762a0.AbstractC7772e f38069g;

        /* renamed from: h */
        public AbstractC7762a0.AbstractC7768d f38070h;

        @Override // p238z5.AbstractC7762a0.AbstractC7765b
        /* renamed from: f */
        public AbstractC7762a0.AbstractC7765b mo324f(AbstractC7762a0.AbstractC7768d abstractC7768d) {
            this.f38070h = abstractC7768d;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7765b
        /* renamed from: g */
        public AbstractC7762a0.AbstractC7765b mo323g(int i) {
            this.f38065c = Integer.valueOf(i);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7765b
        /* renamed from: i */
        public AbstractC7762a0.AbstractC7765b mo321i(AbstractC7762a0.AbstractC7772e abstractC7772e) {
            this.f38069g = abstractC7772e;
            return this;
        }

        public C7805b() {
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7765b
        /* renamed from: a */
        public AbstractC7762a0 mo329a() {
            String str = "";
            if (this.f38063a == null) {
                str = " sdkVersion";
            }
            if (this.f38064b == null) {
                str = str + " gmpAppId";
            }
            if (this.f38065c == null) {
                str = str + " platform";
            }
            if (this.f38066d == null) {
                str = str + " installationUuid";
            }
            if (this.f38067e == null) {
                str = str + " buildVersion";
            }
            if (this.f38068f == null) {
                str = str + " displayVersion";
            }
            if (str.isEmpty()) {
                return new C7803b(this.f38063a, this.f38064b, this.f38065c.intValue(), this.f38066d, this.f38067e, this.f38068f, this.f38069g, this.f38070h);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7765b
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7765b mo328b(String str) {
            if (str != null) {
                this.f38067e = str;
                return this;
            }
            throw new NullPointerException("Null buildVersion");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7765b
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7765b mo327c(String str) {
            if (str != null) {
                this.f38068f = str;
                return this;
            }
            throw new NullPointerException("Null displayVersion");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7765b
        /* renamed from: d */
        public AbstractC7762a0.AbstractC7765b mo326d(String str) {
            if (str != null) {
                this.f38064b = str;
                return this;
            }
            throw new NullPointerException("Null gmpAppId");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7765b
        /* renamed from: e */
        public AbstractC7762a0.AbstractC7765b mo325e(String str) {
            if (str != null) {
                this.f38066d = str;
                return this;
            }
            throw new NullPointerException("Null installationUuid");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7765b
        /* renamed from: h */
        public AbstractC7762a0.AbstractC7765b mo322h(String str) {
            if (str != null) {
                this.f38063a = str;
                return this;
            }
            throw new NullPointerException("Null sdkVersion");
        }

        public C7805b(AbstractC7762a0 abstractC7762a0) {
            this.f38063a = abstractC7762a0.mo332i();
            this.f38064b = abstractC7762a0.mo336e();
            this.f38065c = Integer.valueOf(abstractC7762a0.mo333h());
            this.f38066d = abstractC7762a0.mo335f();
            this.f38067e = abstractC7762a0.mo338c();
            this.f38068f = abstractC7762a0.mo337d();
            this.f38069g = abstractC7762a0.mo331j();
            this.f38070h = abstractC7762a0.mo334g();
        }
    }

    @Override // p238z5.AbstractC7762a0
    /* renamed from: c */
    public String mo338c() {
        return this.f38059f;
    }

    @Override // p238z5.AbstractC7762a0
    /* renamed from: d */
    public String mo337d() {
        return this.f38060g;
    }

    @Override // p238z5.AbstractC7762a0
    /* renamed from: e */
    public String mo336e() {
        return this.f38056c;
    }

    public boolean equals(Object obj) {
        AbstractC7762a0.AbstractC7772e abstractC7772e;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0)) {
            return false;
        }
        AbstractC7762a0 abstractC7762a0 = (AbstractC7762a0) obj;
        if (this.f38055b.equals(abstractC7762a0.mo332i()) && this.f38056c.equals(abstractC7762a0.mo336e()) && this.f38057d == abstractC7762a0.mo333h() && this.f38058e.equals(abstractC7762a0.mo335f()) && this.f38059f.equals(abstractC7762a0.mo338c()) && this.f38060g.equals(abstractC7762a0.mo337d()) && ((abstractC7772e = this.f38061h) != null ? abstractC7772e.equals(abstractC7762a0.mo331j()) : abstractC7762a0.mo331j() == null)) {
            AbstractC7762a0.AbstractC7768d abstractC7768d = this.f38062i;
            if (abstractC7768d == null) {
                if (abstractC7762a0.mo334g() == null) {
                    return true;
                }
            } else if (abstractC7768d.equals(abstractC7762a0.mo334g())) {
                return true;
            }
        }
        return false;
    }

    @Override // p238z5.AbstractC7762a0
    /* renamed from: f */
    public String mo335f() {
        return this.f38058e;
    }

    @Override // p238z5.AbstractC7762a0
    /* renamed from: g */
    public AbstractC7762a0.AbstractC7768d mo334g() {
        return this.f38062i;
    }

    @Override // p238z5.AbstractC7762a0
    /* renamed from: h */
    public int mo333h() {
        return this.f38057d;
    }

    @Override // p238z5.AbstractC7762a0
    /* renamed from: i */
    public String mo332i() {
        return this.f38055b;
    }

    @Override // p238z5.AbstractC7762a0
    /* renamed from: j */
    public AbstractC7762a0.AbstractC7772e mo331j() {
        return this.f38061h;
    }

    @Override // p238z5.AbstractC7762a0
    /* renamed from: k */
    public AbstractC7762a0.AbstractC7765b mo330k() {
        return new C7805b(this);
    }

    public String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.f38055b + ", gmpAppId=" + this.f38056c + ", platform=" + this.f38057d + ", installationUuid=" + this.f38058e + ", buildVersion=" + this.f38059f + ", displayVersion=" + this.f38060g + ", session=" + this.f38061h + ", ndkPayload=" + this.f38062i + "}";
    }

    public C7803b(String str, String str2, int i, String str3, String str4, String str5, AbstractC7762a0.AbstractC7772e abstractC7772e, AbstractC7762a0.AbstractC7768d abstractC7768d) {
        this.f38055b = str;
        this.f38056c = str2;
        this.f38057d = i;
        this.f38058e = str3;
        this.f38059f = str4;
        this.f38060g = str5;
        this.f38061h = abstractC7772e;
        this.f38062i = abstractC7768d;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = (((((((((((this.f38055b.hashCode() ^ 1000003) * 1000003) ^ this.f38056c.hashCode()) * 1000003) ^ this.f38057d) * 1000003) ^ this.f38058e.hashCode()) * 1000003) ^ this.f38059f.hashCode()) * 1000003) ^ this.f38060g.hashCode()) * 1000003;
        AbstractC7762a0.AbstractC7772e abstractC7772e = this.f38061h;
        int i = 0;
        if (abstractC7772e == null) {
            hashCode = 0;
        } else {
            hashCode = abstractC7772e.hashCode();
        }
        int i2 = (hashCode2 ^ hashCode) * 1000003;
        AbstractC7762a0.AbstractC7768d abstractC7768d = this.f38062i;
        if (abstractC7768d != null) {
            i = abstractC7768d.hashCode();
        }
        return i2 ^ i;
    }
}
