package p197u6;

import p197u6.AbstractC6939d;
/* renamed from: u6.a */
/* loaded from: classes2.dex */
public final class C6932a extends AbstractC6939d {

    /* renamed from: a */
    public final String f35786a;

    /* renamed from: b */
    public final String f35787b;

    /* renamed from: c */
    public final String f35788c;

    /* renamed from: d */
    public final AbstractC6943f f35789d;

    /* renamed from: e */
    public final AbstractC6939d.EnumC6941b f35790e;

    /* renamed from: u6.a$b */
    /* loaded from: classes2.dex */
    public static final class C6934b extends AbstractC6939d.AbstractC6940a {

        /* renamed from: a */
        public String f35791a;

        /* renamed from: b */
        public String f35792b;

        /* renamed from: c */
        public String f35793c;

        /* renamed from: d */
        public AbstractC6943f f35794d;

        /* renamed from: e */
        public AbstractC6939d.EnumC6941b f35795e;

        @Override // p197u6.AbstractC6939d.AbstractC6940a
        /* renamed from: a */
        public AbstractC6939d mo2978a() {
            return new C6932a(this.f35791a, this.f35792b, this.f35793c, this.f35794d, this.f35795e);
        }

        @Override // p197u6.AbstractC6939d.AbstractC6940a
        /* renamed from: b */
        public AbstractC6939d.AbstractC6940a mo2977b(AbstractC6943f abstractC6943f) {
            this.f35794d = abstractC6943f;
            return this;
        }

        @Override // p197u6.AbstractC6939d.AbstractC6940a
        /* renamed from: c */
        public AbstractC6939d.AbstractC6940a mo2976c(String str) {
            this.f35792b = str;
            return this;
        }

        @Override // p197u6.AbstractC6939d.AbstractC6940a
        /* renamed from: d */
        public AbstractC6939d.AbstractC6940a mo2975d(String str) {
            this.f35793c = str;
            return this;
        }

        @Override // p197u6.AbstractC6939d.AbstractC6940a
        /* renamed from: e */
        public AbstractC6939d.AbstractC6940a mo2974e(AbstractC6939d.EnumC6941b enumC6941b) {
            this.f35795e = enumC6941b;
            return this;
        }

        @Override // p197u6.AbstractC6939d.AbstractC6940a
        /* renamed from: f */
        public AbstractC6939d.AbstractC6940a mo2973f(String str) {
            this.f35791a = str;
            return this;
        }
    }

    @Override // p197u6.AbstractC6939d
    /* renamed from: b */
    public AbstractC6943f mo2983b() {
        return this.f35789d;
    }

    @Override // p197u6.AbstractC6939d
    /* renamed from: c */
    public String mo2982c() {
        return this.f35787b;
    }

    @Override // p197u6.AbstractC6939d
    /* renamed from: d */
    public String mo2981d() {
        return this.f35788c;
    }

    @Override // p197u6.AbstractC6939d
    /* renamed from: e */
    public AbstractC6939d.EnumC6941b mo2980e() {
        return this.f35790e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6939d)) {
            return false;
        }
        AbstractC6939d abstractC6939d = (AbstractC6939d) obj;
        String str = this.f35786a;
        if (str != null ? str.equals(abstractC6939d.mo2979f()) : abstractC6939d.mo2979f() == null) {
            String str2 = this.f35787b;
            if (str2 != null ? str2.equals(abstractC6939d.mo2982c()) : abstractC6939d.mo2982c() == null) {
                String str3 = this.f35788c;
                if (str3 != null ? str3.equals(abstractC6939d.mo2981d()) : abstractC6939d.mo2981d() == null) {
                    AbstractC6943f abstractC6943f = this.f35789d;
                    if (abstractC6943f != null ? abstractC6943f.equals(abstractC6939d.mo2983b()) : abstractC6939d.mo2983b() == null) {
                        AbstractC6939d.EnumC6941b enumC6941b = this.f35790e;
                        if (enumC6941b == null) {
                            if (abstractC6939d.mo2980e() == null) {
                                return true;
                            }
                        } else if (enumC6941b.equals(abstractC6939d.mo2980e())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // p197u6.AbstractC6939d
    /* renamed from: f */
    public String mo2979f() {
        return this.f35786a;
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.f35786a + ", fid=" + this.f35787b + ", refreshToken=" + this.f35788c + ", authToken=" + this.f35789d + ", responseCode=" + this.f35790e + "}";
    }

    public C6932a(String str, String str2, String str3, AbstractC6943f abstractC6943f, AbstractC6939d.EnumC6941b enumC6941b) {
        this.f35786a = str;
        this.f35787b = str2;
        this.f35788c = str3;
        this.f35789d = abstractC6943f;
        this.f35790e = enumC6941b;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        String str = this.f35786a;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = (hashCode ^ 1000003) * 1000003;
        String str2 = this.f35787b;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i3 = (i2 ^ hashCode2) * 1000003;
        String str3 = this.f35788c;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i4 = (i3 ^ hashCode3) * 1000003;
        AbstractC6943f abstractC6943f = this.f35789d;
        if (abstractC6943f == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = abstractC6943f.hashCode();
        }
        int i5 = (i4 ^ hashCode4) * 1000003;
        AbstractC6939d.EnumC6941b enumC6941b = this.f35790e;
        if (enumC6941b != null) {
            i = enumC6941b.hashCode();
        }
        return i5 ^ i;
    }
}
