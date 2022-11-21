package p197u6;

import p197u6.AbstractC6943f;
/* renamed from: u6.b */
/* loaded from: classes2.dex */
public final class C6935b extends AbstractC6943f {

    /* renamed from: a */
    public final String f35796a;

    /* renamed from: b */
    public final long f35797b;

    /* renamed from: c */
    public final AbstractC6943f.EnumC6945b f35798c;

    /* renamed from: u6.b$b */
    /* loaded from: classes2.dex */
    public static final class C6937b extends AbstractC6943f.AbstractC6944a {

        /* renamed from: a */
        public String f35799a;

        /* renamed from: b */
        public Long f35800b;

        /* renamed from: c */
        public AbstractC6943f.EnumC6945b f35801c;

        @Override // p197u6.AbstractC6943f.AbstractC6944a
        /* renamed from: b */
        public AbstractC6943f.AbstractC6944a mo2961b(AbstractC6943f.EnumC6945b enumC6945b) {
            this.f35801c = enumC6945b;
            return this;
        }

        @Override // p197u6.AbstractC6943f.AbstractC6944a
        /* renamed from: c */
        public AbstractC6943f.AbstractC6944a mo2960c(String str) {
            this.f35799a = str;
            return this;
        }

        @Override // p197u6.AbstractC6943f.AbstractC6944a
        /* renamed from: d */
        public AbstractC6943f.AbstractC6944a mo2959d(long j) {
            this.f35800b = Long.valueOf(j);
            return this;
        }

        @Override // p197u6.AbstractC6943f.AbstractC6944a
        /* renamed from: a */
        public AbstractC6943f mo2962a() {
            String str = "";
            if (this.f35800b == null) {
                str = " tokenExpirationTimestamp";
            }
            if (str.isEmpty()) {
                return new C6935b(this.f35799a, this.f35800b.longValue(), this.f35801c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // p197u6.AbstractC6943f
    /* renamed from: b */
    public AbstractC6943f.EnumC6945b mo2965b() {
        return this.f35798c;
    }

    @Override // p197u6.AbstractC6943f
    /* renamed from: c */
    public String mo2964c() {
        return this.f35796a;
    }

    @Override // p197u6.AbstractC6943f
    /* renamed from: d */
    public long mo2963d() {
        return this.f35797b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6943f)) {
            return false;
        }
        AbstractC6943f abstractC6943f = (AbstractC6943f) obj;
        String str = this.f35796a;
        if (str != null ? str.equals(abstractC6943f.mo2964c()) : abstractC6943f.mo2964c() == null) {
            if (this.f35797b == abstractC6943f.mo2963d()) {
                AbstractC6943f.EnumC6945b enumC6945b = this.f35798c;
                if (enumC6945b == null) {
                    if (abstractC6943f.mo2965b() == null) {
                        return true;
                    }
                } else if (enumC6945b.equals(abstractC6943f.mo2965b())) {
                    return true;
                }
            }
        }
        return false;
    }

    public String toString() {
        return "TokenResult{token=" + this.f35796a + ", tokenExpirationTimestamp=" + this.f35797b + ", responseCode=" + this.f35798c + "}";
    }

    public C6935b(String str, long j, AbstractC6943f.EnumC6945b enumC6945b) {
        this.f35796a = str;
        this.f35797b = j;
        this.f35798c = enumC6945b;
    }

    public int hashCode() {
        int hashCode;
        String str = this.f35796a;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        long j = this.f35797b;
        int i2 = (((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        AbstractC6943f.EnumC6945b enumC6945b = this.f35798c;
        if (enumC6945b != null) {
            i = enumC6945b.hashCode();
        }
        return i2 ^ i;
    }
}
