package p085i2;

import java.util.Map;
import p085i2.AbstractC4104h;
/* renamed from: i2.a */
/* loaded from: classes.dex */
public final class C4089a extends AbstractC4104h {

    /* renamed from: a */
    public final String f17671a;

    /* renamed from: b */
    public final Integer f17672b;

    /* renamed from: c */
    public final C4103g f17673c;

    /* renamed from: d */
    public final long f17674d;

    /* renamed from: e */
    public final long f17675e;

    /* renamed from: f */
    public final Map<String, String> f17676f;

    /* renamed from: i2.a$b */
    /* loaded from: classes.dex */
    public static final class C4091b extends AbstractC4104h.AbstractC4105a {

        /* renamed from: a */
        public String f17677a;

        /* renamed from: b */
        public Integer f17678b;

        /* renamed from: c */
        public C4103g f17679c;

        /* renamed from: d */
        public Long f17680d;

        /* renamed from: e */
        public Long f17681e;

        /* renamed from: f */
        public Map<String, String> f17682f;

        @Override // p085i2.AbstractC4104h.AbstractC4105a
        /* renamed from: g */
        public AbstractC4104h.AbstractC4105a mo17380g(Integer num) {
            this.f17678b = num;
            return this;
        }

        @Override // p085i2.AbstractC4104h.AbstractC4105a
        /* renamed from: i */
        public AbstractC4104h.AbstractC4105a mo17378i(long j) {
            this.f17680d = Long.valueOf(j);
            return this;
        }

        @Override // p085i2.AbstractC4104h.AbstractC4105a
        /* renamed from: k */
        public AbstractC4104h.AbstractC4105a mo17376k(long j) {
            this.f17681e = Long.valueOf(j);
            return this;
        }

        @Override // p085i2.AbstractC4104h.AbstractC4105a
        /* renamed from: d */
        public AbstractC4104h mo17383d() {
            String str = "";
            if (this.f17677a == null) {
                str = " transportName";
            }
            if (this.f17679c == null) {
                str = str + " encodedPayload";
            }
            if (this.f17680d == null) {
                str = str + " eventMillis";
            }
            if (this.f17681e == null) {
                str = str + " uptimeMillis";
            }
            if (this.f17682f == null) {
                str = str + " autoMetadata";
            }
            if (str.isEmpty()) {
                return new C4089a(this.f17677a, this.f17678b, this.f17679c, this.f17680d.longValue(), this.f17681e.longValue(), this.f17682f);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p085i2.AbstractC4104h.AbstractC4105a
        /* renamed from: e */
        public Map<String, String> mo17382e() {
            Map<String, String> map = this.f17682f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override // p085i2.AbstractC4104h.AbstractC4105a
        /* renamed from: f */
        public AbstractC4104h.AbstractC4105a mo17381f(Map<String, String> map) {
            if (map != null) {
                this.f17682f = map;
                return this;
            }
            throw new NullPointerException("Null autoMetadata");
        }

        @Override // p085i2.AbstractC4104h.AbstractC4105a
        /* renamed from: h */
        public AbstractC4104h.AbstractC4105a mo17379h(C4103g c4103g) {
            if (c4103g != null) {
                this.f17679c = c4103g;
                return this;
            }
            throw new NullPointerException("Null encodedPayload");
        }

        @Override // p085i2.AbstractC4104h.AbstractC4105a
        /* renamed from: j */
        public AbstractC4104h.AbstractC4105a mo17377j(String str) {
            if (str != null) {
                this.f17677a = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }
    }

    @Override // p085i2.AbstractC4104h
    /* renamed from: c */
    public Map<String, String> mo17396c() {
        return this.f17676f;
    }

    @Override // p085i2.AbstractC4104h
    /* renamed from: d */
    public Integer mo17395d() {
        return this.f17672b;
    }

    @Override // p085i2.AbstractC4104h
    /* renamed from: e */
    public C4103g mo17394e() {
        return this.f17673c;
    }

    public boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4104h)) {
            return false;
        }
        AbstractC4104h abstractC4104h = (AbstractC4104h) obj;
        return this.f17671a.equals(abstractC4104h.mo17389j()) && ((num = this.f17672b) != null ? num.equals(abstractC4104h.mo17395d()) : abstractC4104h.mo17395d() == null) && this.f17673c.equals(abstractC4104h.mo17394e()) && this.f17674d == abstractC4104h.mo17393f() && this.f17675e == abstractC4104h.mo17388k() && this.f17676f.equals(abstractC4104h.mo17396c());
    }

    @Override // p085i2.AbstractC4104h
    /* renamed from: f */
    public long mo17393f() {
        return this.f17674d;
    }

    @Override // p085i2.AbstractC4104h
    /* renamed from: j */
    public String mo17389j() {
        return this.f17671a;
    }

    @Override // p085i2.AbstractC4104h
    /* renamed from: k */
    public long mo17388k() {
        return this.f17675e;
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f17671a + ", code=" + this.f17672b + ", encodedPayload=" + this.f17673c + ", eventMillis=" + this.f17674d + ", uptimeMillis=" + this.f17675e + ", autoMetadata=" + this.f17676f + "}";
    }

    public C4089a(String str, Integer num, C4103g c4103g, long j, long j2, Map<String, String> map) {
        this.f17671a = str;
        this.f17672b = num;
        this.f17673c = c4103g;
        this.f17674d = j;
        this.f17675e = j2;
        this.f17676f = map;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = (this.f17671a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f17672b;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        long j = this.f17674d;
        long j2 = this.f17675e;
        return ((((((((hashCode2 ^ hashCode) * 1000003) ^ this.f17673c.hashCode()) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f17676f.hashCode();
    }
}
