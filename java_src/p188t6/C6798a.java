package p188t6;

import p188t6.AbstractC6804d;
import p188t6.C6802c;
/* renamed from: t6.a */
/* loaded from: classes2.dex */
public final class C6798a extends AbstractC6804d {

    /* renamed from: b */
    public final String f35485b;

    /* renamed from: c */
    public final C6802c.EnumC6803a f35486c;

    /* renamed from: d */
    public final String f35487d;

    /* renamed from: e */
    public final String f35488e;

    /* renamed from: f */
    public final long f35489f;

    /* renamed from: g */
    public final long f35490g;

    /* renamed from: h */
    public final String f35491h;

    /* renamed from: t6.a$b */
    /* loaded from: classes2.dex */
    public static final class C6800b extends AbstractC6804d.AbstractC6805a {

        /* renamed from: a */
        public String f35492a;

        /* renamed from: b */
        public C6802c.EnumC6803a f35493b;

        /* renamed from: c */
        public String f35494c;

        /* renamed from: d */
        public String f35495d;

        /* renamed from: e */
        public Long f35496e;

        /* renamed from: f */
        public Long f35497f;

        /* renamed from: g */
        public String f35498g;

        @Override // p188t6.AbstractC6804d.AbstractC6805a
        /* renamed from: b */
        public AbstractC6804d.AbstractC6805a mo3385b(String str) {
            this.f35494c = str;
            return this;
        }

        @Override // p188t6.AbstractC6804d.AbstractC6805a
        /* renamed from: c */
        public AbstractC6804d.AbstractC6805a mo3384c(long j) {
            this.f35496e = Long.valueOf(j);
            return this;
        }

        @Override // p188t6.AbstractC6804d.AbstractC6805a
        /* renamed from: d */
        public AbstractC6804d.AbstractC6805a mo3383d(String str) {
            this.f35492a = str;
            return this;
        }

        @Override // p188t6.AbstractC6804d.AbstractC6805a
        /* renamed from: e */
        public AbstractC6804d.AbstractC6805a mo3382e(String str) {
            this.f35498g = str;
            return this;
        }

        @Override // p188t6.AbstractC6804d.AbstractC6805a
        /* renamed from: f */
        public AbstractC6804d.AbstractC6805a mo3381f(String str) {
            this.f35495d = str;
            return this;
        }

        @Override // p188t6.AbstractC6804d.AbstractC6805a
        /* renamed from: h */
        public AbstractC6804d.AbstractC6805a mo3379h(long j) {
            this.f35497f = Long.valueOf(j);
            return this;
        }

        public C6800b() {
        }

        @Override // p188t6.AbstractC6804d.AbstractC6805a
        /* renamed from: a */
        public AbstractC6804d mo3386a() {
            String str = "";
            if (this.f35493b == null) {
                str = " registrationStatus";
            }
            if (this.f35496e == null) {
                str = str + " expiresInSecs";
            }
            if (this.f35497f == null) {
                str = str + " tokenCreationEpochInSecs";
            }
            if (str.isEmpty()) {
                return new C6798a(this.f35492a, this.f35493b, this.f35494c, this.f35495d, this.f35496e.longValue(), this.f35497f.longValue(), this.f35498g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p188t6.AbstractC6804d.AbstractC6805a
        /* renamed from: g */
        public AbstractC6804d.AbstractC6805a mo3380g(C6802c.EnumC6803a enumC6803a) {
            if (enumC6803a != null) {
                this.f35493b = enumC6803a;
                return this;
            }
            throw new NullPointerException("Null registrationStatus");
        }

        public C6800b(AbstractC6804d abstractC6804d) {
            this.f35492a = abstractC6804d.mo3403d();
            this.f35493b = abstractC6804d.mo3400g();
            this.f35494c = abstractC6804d.mo3405b();
            this.f35495d = abstractC6804d.mo3401f();
            this.f35496e = Long.valueOf(abstractC6804d.mo3404c());
            this.f35497f = Long.valueOf(abstractC6804d.mo3399h());
            this.f35498g = abstractC6804d.mo3402e();
        }
    }

    @Override // p188t6.AbstractC6804d
    /* renamed from: b */
    public String mo3405b() {
        return this.f35487d;
    }

    @Override // p188t6.AbstractC6804d
    /* renamed from: c */
    public long mo3404c() {
        return this.f35489f;
    }

    @Override // p188t6.AbstractC6804d
    /* renamed from: d */
    public String mo3403d() {
        return this.f35485b;
    }

    @Override // p188t6.AbstractC6804d
    /* renamed from: e */
    public String mo3402e() {
        return this.f35491h;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6804d)) {
            return false;
        }
        AbstractC6804d abstractC6804d = (AbstractC6804d) obj;
        String str3 = this.f35485b;
        if (str3 != null ? str3.equals(abstractC6804d.mo3403d()) : abstractC6804d.mo3403d() == null) {
            if (this.f35486c.equals(abstractC6804d.mo3400g()) && ((str = this.f35487d) != null ? str.equals(abstractC6804d.mo3405b()) : abstractC6804d.mo3405b() == null) && ((str2 = this.f35488e) != null ? str2.equals(abstractC6804d.mo3401f()) : abstractC6804d.mo3401f() == null) && this.f35489f == abstractC6804d.mo3404c() && this.f35490g == abstractC6804d.mo3399h()) {
                String str4 = this.f35491h;
                if (str4 == null) {
                    if (abstractC6804d.mo3402e() == null) {
                        return true;
                    }
                } else if (str4.equals(abstractC6804d.mo3402e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // p188t6.AbstractC6804d
    /* renamed from: f */
    public String mo3401f() {
        return this.f35488e;
    }

    @Override // p188t6.AbstractC6804d
    /* renamed from: g */
    public C6802c.EnumC6803a mo3400g() {
        return this.f35486c;
    }

    @Override // p188t6.AbstractC6804d
    /* renamed from: h */
    public long mo3399h() {
        return this.f35490g;
    }

    @Override // p188t6.AbstractC6804d
    /* renamed from: n */
    public AbstractC6804d.AbstractC6805a mo3393n() {
        return new C6800b(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.f35485b + ", registrationStatus=" + this.f35486c + ", authToken=" + this.f35487d + ", refreshToken=" + this.f35488e + ", expiresInSecs=" + this.f35489f + ", tokenCreationEpochInSecs=" + this.f35490g + ", fisError=" + this.f35491h + "}";
    }

    public C6798a(String str, C6802c.EnumC6803a enumC6803a, String str2, String str3, long j, long j2, String str4) {
        this.f35485b = str;
        this.f35486c = enumC6803a;
        this.f35487d = str2;
        this.f35488e = str3;
        this.f35489f = j;
        this.f35490g = j2;
        this.f35491h = str4;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        String str = this.f35485b;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode4 = (((hashCode ^ 1000003) * 1000003) ^ this.f35486c.hashCode()) * 1000003;
        String str2 = this.f35487d;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i2 = (hashCode4 ^ hashCode2) * 1000003;
        String str3 = this.f35488e;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        long j = this.f35489f;
        long j2 = this.f35490g;
        int i3 = (((((i2 ^ hashCode3) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        String str4 = this.f35491h;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return i3 ^ i;
    }
}
