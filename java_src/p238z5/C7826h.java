package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.h */
/* loaded from: classes2.dex */
public final class C7826h extends AbstractC7762a0.AbstractC7772e.AbstractC7773a {

    /* renamed from: a */
    public final String f38122a;

    /* renamed from: b */
    public final String f38123b;

    /* renamed from: c */
    public final String f38124c;

    /* renamed from: d */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7775b f38125d;

    /* renamed from: e */
    public final String f38126e;

    /* renamed from: f */
    public final String f38127f;

    /* renamed from: g */
    public final String f38128g;

    /* renamed from: z5.h$b */
    /* loaded from: classes2.dex */
    public static final class C7828b extends AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7774a {

        /* renamed from: a */
        public String f38129a;

        /* renamed from: b */
        public String f38130b;

        /* renamed from: c */
        public String f38131c;

        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7775b f38132d;

        /* renamed from: e */
        public String f38133e;

        /* renamed from: f */
        public String f38134f;

        /* renamed from: g */
        public String f38135g;

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7774a
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7774a mo250b(String str) {
            this.f38134f = str;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7774a
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7774a mo249c(String str) {
            this.f38135g = str;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7774a
        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7774a mo248d(String str) {
            this.f38131c = str;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7774a
        /* renamed from: f */
        public AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7774a mo246f(String str) {
            this.f38133e = str;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7774a
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7772e.AbstractC7773a mo251a() {
            String str = "";
            if (this.f38129a == null) {
                str = " identifier";
            }
            if (this.f38130b == null) {
                str = str + " version";
            }
            if (str.isEmpty()) {
                return new C7826h(this.f38129a, this.f38130b, this.f38131c, this.f38132d, this.f38133e, this.f38134f, this.f38135g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7774a
        /* renamed from: e */
        public AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7774a mo247e(String str) {
            if (str != null) {
                this.f38129a = str;
                return this;
            }
            throw new NullPointerException("Null identifier");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7774a
        /* renamed from: g */
        public AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7774a mo245g(String str) {
            if (str != null) {
                this.f38130b = str;
                return this;
            }
            throw new NullPointerException("Null version");
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7773a
    /* renamed from: b */
    public String mo258b() {
        return this.f38127f;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7773a
    /* renamed from: c */
    public String mo257c() {
        return this.f38128g;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7773a
    /* renamed from: d */
    public String mo256d() {
        return this.f38124c;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7773a
    /* renamed from: e */
    public String mo255e() {
        return this.f38122a;
    }

    public boolean equals(Object obj) {
        String str;
        AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7775b abstractC7775b;
        String str2;
        String str3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7772e.AbstractC7773a)) {
            return false;
        }
        AbstractC7762a0.AbstractC7772e.AbstractC7773a abstractC7773a = (AbstractC7762a0.AbstractC7772e.AbstractC7773a) obj;
        if (this.f38122a.equals(abstractC7773a.mo255e()) && this.f38123b.equals(abstractC7773a.mo252h()) && ((str = this.f38124c) != null ? str.equals(abstractC7773a.mo256d()) : abstractC7773a.mo256d() == null) && ((abstractC7775b = this.f38125d) != null ? abstractC7775b.equals(abstractC7773a.mo253g()) : abstractC7773a.mo253g() == null) && ((str2 = this.f38126e) != null ? str2.equals(abstractC7773a.mo254f()) : abstractC7773a.mo254f() == null) && ((str3 = this.f38127f) != null ? str3.equals(abstractC7773a.mo258b()) : abstractC7773a.mo258b() == null)) {
            String str4 = this.f38128g;
            if (str4 == null) {
                if (abstractC7773a.mo257c() == null) {
                    return true;
                }
            } else if (str4.equals(abstractC7773a.mo257c())) {
                return true;
            }
        }
        return false;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7773a
    /* renamed from: f */
    public String mo254f() {
        return this.f38126e;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7773a
    /* renamed from: g */
    public AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7775b mo253g() {
        return this.f38125d;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7773a
    /* renamed from: h */
    public String mo252h() {
        return this.f38123b;
    }

    public String toString() {
        return "Application{identifier=" + this.f38122a + ", version=" + this.f38123b + ", displayVersion=" + this.f38124c + ", organization=" + this.f38125d + ", installationUuid=" + this.f38126e + ", developmentPlatform=" + this.f38127f + ", developmentPlatformVersion=" + this.f38128g + "}";
    }

    public C7826h(String str, String str2, String str3, AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7775b abstractC7775b, String str4, String str5, String str6) {
        this.f38122a = str;
        this.f38123b = str2;
        this.f38124c = str3;
        this.f38125d = abstractC7775b;
        this.f38126e = str4;
        this.f38127f = str5;
        this.f38128g = str6;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5 = (((this.f38122a.hashCode() ^ 1000003) * 1000003) ^ this.f38123b.hashCode()) * 1000003;
        String str = this.f38124c;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = (hashCode5 ^ hashCode) * 1000003;
        AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7775b abstractC7775b = this.f38125d;
        if (abstractC7775b == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = abstractC7775b.hashCode();
        }
        int i3 = (i2 ^ hashCode2) * 1000003;
        String str2 = this.f38126e;
        if (str2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str2.hashCode();
        }
        int i4 = (i3 ^ hashCode3) * 1000003;
        String str3 = this.f38127f;
        if (str3 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str3.hashCode();
        }
        int i5 = (i4 ^ hashCode4) * 1000003;
        String str4 = this.f38128g;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return i5 ^ i;
    }
}
