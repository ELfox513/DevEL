package p076h2;

import java.util.List;
import p076h2.AbstractC3977m;
/* renamed from: h2.g */
/* loaded from: classes.dex */
public final class C3964g extends AbstractC3977m {

    /* renamed from: a */
    public final long f17336a;

    /* renamed from: b */
    public final long f17337b;

    /* renamed from: c */
    public final AbstractC3972k f17338c;

    /* renamed from: d */
    public final Integer f17339d;

    /* renamed from: e */
    public final String f17340e;

    /* renamed from: f */
    public final List<AbstractC3975l> f17341f;

    /* renamed from: g */
    public final EnumC3984p f17342g;

    /* renamed from: h2.g$b */
    /* loaded from: classes.dex */
    public static final class C3966b extends AbstractC3977m.AbstractC3978a {

        /* renamed from: a */
        public Long f17343a;

        /* renamed from: b */
        public Long f17344b;

        /* renamed from: c */
        public AbstractC3972k f17345c;

        /* renamed from: d */
        public Integer f17346d;

        /* renamed from: e */
        public String f17347e;

        /* renamed from: f */
        public List<AbstractC3975l> f17348f;

        /* renamed from: g */
        public EnumC3984p f17349g;

        @Override // p076h2.AbstractC3977m.AbstractC3978a
        /* renamed from: b */
        public AbstractC3977m.AbstractC3978a mo17622b(AbstractC3972k abstractC3972k) {
            this.f17345c = abstractC3972k;
            return this;
        }

        @Override // p076h2.AbstractC3977m.AbstractC3978a
        /* renamed from: c */
        public AbstractC3977m.AbstractC3978a mo17621c(List<AbstractC3975l> list) {
            this.f17348f = list;
            return this;
        }

        @Override // p076h2.AbstractC3977m.AbstractC3978a
        /* renamed from: d */
        public AbstractC3977m.AbstractC3978a mo17620d(Integer num) {
            this.f17346d = num;
            return this;
        }

        @Override // p076h2.AbstractC3977m.AbstractC3978a
        /* renamed from: e */
        public AbstractC3977m.AbstractC3978a mo17619e(String str) {
            this.f17347e = str;
            return this;
        }

        @Override // p076h2.AbstractC3977m.AbstractC3978a
        /* renamed from: f */
        public AbstractC3977m.AbstractC3978a mo17618f(EnumC3984p enumC3984p) {
            this.f17349g = enumC3984p;
            return this;
        }

        @Override // p076h2.AbstractC3977m.AbstractC3978a
        /* renamed from: g */
        public AbstractC3977m.AbstractC3978a mo17617g(long j) {
            this.f17343a = Long.valueOf(j);
            return this;
        }

        @Override // p076h2.AbstractC3977m.AbstractC3978a
        /* renamed from: h */
        public AbstractC3977m.AbstractC3978a mo17616h(long j) {
            this.f17344b = Long.valueOf(j);
            return this;
        }

        @Override // p076h2.AbstractC3977m.AbstractC3978a
        /* renamed from: a */
        public AbstractC3977m mo17623a() {
            String str = "";
            if (this.f17343a == null) {
                str = " requestTimeMs";
            }
            if (this.f17344b == null) {
                str = str + " requestUptimeMs";
            }
            if (str.isEmpty()) {
                return new C3964g(this.f17343a.longValue(), this.f17344b.longValue(), this.f17345c, this.f17346d, this.f17347e, this.f17348f, this.f17349g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // p076h2.AbstractC3977m
    /* renamed from: b */
    public AbstractC3972k mo17630b() {
        return this.f17338c;
    }

    @Override // p076h2.AbstractC3977m
    /* renamed from: c */
    public List<AbstractC3975l> mo17629c() {
        return this.f17341f;
    }

    @Override // p076h2.AbstractC3977m
    /* renamed from: d */
    public Integer mo17628d() {
        return this.f17339d;
    }

    @Override // p076h2.AbstractC3977m
    /* renamed from: e */
    public String mo17627e() {
        return this.f17340e;
    }

    public boolean equals(Object obj) {
        AbstractC3972k abstractC3972k;
        Integer num;
        String str;
        List<AbstractC3975l> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3977m)) {
            return false;
        }
        AbstractC3977m abstractC3977m = (AbstractC3977m) obj;
        if (this.f17336a == abstractC3977m.mo17625g() && this.f17337b == abstractC3977m.mo17624h() && ((abstractC3972k = this.f17338c) != null ? abstractC3972k.equals(abstractC3977m.mo17630b()) : abstractC3977m.mo17630b() == null) && ((num = this.f17339d) != null ? num.equals(abstractC3977m.mo17628d()) : abstractC3977m.mo17628d() == null) && ((str = this.f17340e) != null ? str.equals(abstractC3977m.mo17627e()) : abstractC3977m.mo17627e() == null) && ((list = this.f17341f) != null ? list.equals(abstractC3977m.mo17629c()) : abstractC3977m.mo17629c() == null)) {
            EnumC3984p enumC3984p = this.f17342g;
            if (enumC3984p == null) {
                if (abstractC3977m.mo17626f() == null) {
                    return true;
                }
            } else if (enumC3984p.equals(abstractC3977m.mo17626f())) {
                return true;
            }
        }
        return false;
    }

    @Override // p076h2.AbstractC3977m
    /* renamed from: f */
    public EnumC3984p mo17626f() {
        return this.f17342g;
    }

    @Override // p076h2.AbstractC3977m
    /* renamed from: g */
    public long mo17625g() {
        return this.f17336a;
    }

    @Override // p076h2.AbstractC3977m
    /* renamed from: h */
    public long mo17624h() {
        return this.f17337b;
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f17336a + ", requestUptimeMs=" + this.f17337b + ", clientInfo=" + this.f17338c + ", logSource=" + this.f17339d + ", logSourceName=" + this.f17340e + ", logEvents=" + this.f17341f + ", qosTier=" + this.f17342g + "}";
    }

    public C3964g(long j, long j2, AbstractC3972k abstractC3972k, Integer num, String str, List<AbstractC3975l> list, EnumC3984p enumC3984p) {
        this.f17336a = j;
        this.f17337b = j2;
        this.f17338c = abstractC3972k;
        this.f17339d = num;
        this.f17340e = str;
        this.f17341f = list;
        this.f17342g = enumC3984p;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        long j = this.f17336a;
        long j2 = this.f17337b;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        AbstractC3972k abstractC3972k = this.f17338c;
        int i2 = 0;
        if (abstractC3972k == null) {
            hashCode = 0;
        } else {
            hashCode = abstractC3972k.hashCode();
        }
        int i3 = (i ^ hashCode) * 1000003;
        Integer num = this.f17339d;
        if (num == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num.hashCode();
        }
        int i4 = (i3 ^ hashCode2) * 1000003;
        String str = this.f17340e;
        if (str == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str.hashCode();
        }
        int i5 = (i4 ^ hashCode3) * 1000003;
        List<AbstractC3975l> list = this.f17341f;
        if (list == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = list.hashCode();
        }
        int i6 = (i5 ^ hashCode4) * 1000003;
        EnumC3984p enumC3984p = this.f17342g;
        if (enumC3984p != null) {
            i2 = enumC3984p.hashCode();
        }
        return i6 ^ i2;
    }
}
