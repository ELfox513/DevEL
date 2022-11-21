package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.u */
/* loaded from: classes2.dex */
public final class C7863u extends AbstractC7762a0.AbstractC7772e.AbstractC7799e {

    /* renamed from: a */
    public final int f38239a;

    /* renamed from: b */
    public final String f38240b;

    /* renamed from: c */
    public final String f38241c;

    /* renamed from: d */
    public final boolean f38242d;

    /* renamed from: z5.u$b */
    /* loaded from: classes2.dex */
    public static final class C7865b extends AbstractC7762a0.AbstractC7772e.AbstractC7799e.AbstractC7800a {

        /* renamed from: a */
        public Integer f38243a;

        /* renamed from: b */
        public String f38244b;

        /* renamed from: c */
        public String f38245c;

        /* renamed from: d */
        public Boolean f38246d;

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7799e.AbstractC7800a
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7772e.AbstractC7799e.AbstractC7800a mo122c(boolean z) {
            this.f38246d = Boolean.valueOf(z);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7799e.AbstractC7800a
        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7799e.AbstractC7800a mo121d(int i) {
            this.f38243a = Integer.valueOf(i);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7799e.AbstractC7800a
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7772e.AbstractC7799e mo124a() {
            String str = "";
            if (this.f38243a == null) {
                str = " platform";
            }
            if (this.f38244b == null) {
                str = str + " version";
            }
            if (this.f38245c == null) {
                str = str + " buildVersion";
            }
            if (this.f38246d == null) {
                str = str + " jailbroken";
            }
            if (str.isEmpty()) {
                return new C7863u(this.f38243a.intValue(), this.f38244b, this.f38245c, this.f38246d.booleanValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7799e.AbstractC7800a
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7772e.AbstractC7799e.AbstractC7800a mo123b(String str) {
            if (str != null) {
                this.f38245c = str;
                return this;
            }
            throw new NullPointerException("Null buildVersion");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7799e.AbstractC7800a
        /* renamed from: e */
        public AbstractC7762a0.AbstractC7772e.AbstractC7799e.AbstractC7800a mo120e(String str) {
            if (str != null) {
                this.f38244b = str;
                return this;
            }
            throw new NullPointerException("Null version");
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7799e
    /* renamed from: b */
    public String mo128b() {
        return this.f38241c;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7799e
    /* renamed from: c */
    public int mo127c() {
        return this.f38239a;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7799e
    /* renamed from: d */
    public String mo126d() {
        return this.f38240b;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7799e
    /* renamed from: e */
    public boolean mo125e() {
        return this.f38242d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7772e.AbstractC7799e)) {
            return false;
        }
        AbstractC7762a0.AbstractC7772e.AbstractC7799e abstractC7799e = (AbstractC7762a0.AbstractC7772e.AbstractC7799e) obj;
        return this.f38239a == abstractC7799e.mo127c() && this.f38240b.equals(abstractC7799e.mo126d()) && this.f38241c.equals(abstractC7799e.mo128b()) && this.f38242d == abstractC7799e.mo125e();
    }

    public String toString() {
        return "OperatingSystem{platform=" + this.f38239a + ", version=" + this.f38240b + ", buildVersion=" + this.f38241c + ", jailbroken=" + this.f38242d + "}";
    }

    public C7863u(int i, String str, String str2, boolean z) {
        this.f38239a = i;
        this.f38240b = str;
        this.f38241c = str2;
        this.f38242d = z;
    }

    public int hashCode() {
        int i;
        int hashCode = (((((this.f38239a ^ 1000003) * 1000003) ^ this.f38240b.hashCode()) * 1000003) ^ this.f38241c.hashCode()) * 1000003;
        if (this.f38242d) {
            i = 1231;
        } else {
            i = 1237;
        }
        return hashCode ^ i;
    }
}
