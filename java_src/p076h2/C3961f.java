package p076h2;

import java.util.Arrays;
import p076h2.AbstractC3975l;
/* renamed from: h2.f */
/* loaded from: classes.dex */
public final class C3961f extends AbstractC3975l {

    /* renamed from: a */
    public final long f17322a;

    /* renamed from: b */
    public final Integer f17323b;

    /* renamed from: c */
    public final long f17324c;

    /* renamed from: d */
    public final byte[] f17325d;

    /* renamed from: e */
    public final String f17326e;

    /* renamed from: f */
    public final long f17327f;

    /* renamed from: g */
    public final AbstractC3980o f17328g;

    /* renamed from: h2.f$b */
    /* loaded from: classes.dex */
    public static final class C3963b extends AbstractC3975l.AbstractC3976a {

        /* renamed from: a */
        public Long f17329a;

        /* renamed from: b */
        public Integer f17330b;

        /* renamed from: c */
        public Long f17331c;

        /* renamed from: d */
        public byte[] f17332d;

        /* renamed from: e */
        public String f17333e;

        /* renamed from: f */
        public Long f17334f;

        /* renamed from: g */
        public AbstractC3980o f17335g;

        @Override // p076h2.AbstractC3975l.AbstractC3976a
        /* renamed from: b */
        public AbstractC3975l.AbstractC3976a mo17638b(Integer num) {
            this.f17330b = num;
            return this;
        }

        @Override // p076h2.AbstractC3975l.AbstractC3976a
        /* renamed from: c */
        public AbstractC3975l.AbstractC3976a mo17637c(long j) {
            this.f17329a = Long.valueOf(j);
            return this;
        }

        @Override // p076h2.AbstractC3975l.AbstractC3976a
        /* renamed from: d */
        public AbstractC3975l.AbstractC3976a mo17636d(long j) {
            this.f17331c = Long.valueOf(j);
            return this;
        }

        @Override // p076h2.AbstractC3975l.AbstractC3976a
        /* renamed from: e */
        public AbstractC3975l.AbstractC3976a mo17635e(AbstractC3980o abstractC3980o) {
            this.f17335g = abstractC3980o;
            return this;
        }

        @Override // p076h2.AbstractC3975l.AbstractC3976a
        /* renamed from: f */
        public AbstractC3975l.AbstractC3976a mo17634f(byte[] bArr) {
            this.f17332d = bArr;
            return this;
        }

        @Override // p076h2.AbstractC3975l.AbstractC3976a
        /* renamed from: g */
        public AbstractC3975l.AbstractC3976a mo17633g(String str) {
            this.f17333e = str;
            return this;
        }

        @Override // p076h2.AbstractC3975l.AbstractC3976a
        /* renamed from: h */
        public AbstractC3975l.AbstractC3976a mo17632h(long j) {
            this.f17334f = Long.valueOf(j);
            return this;
        }

        @Override // p076h2.AbstractC3975l.AbstractC3976a
        /* renamed from: a */
        public AbstractC3975l mo17639a() {
            String str = "";
            if (this.f17329a == null) {
                str = " eventTimeMs";
            }
            if (this.f17331c == null) {
                str = str + " eventUptimeMs";
            }
            if (this.f17334f == null) {
                str = str + " timezoneOffsetSeconds";
            }
            if (str.isEmpty()) {
                return new C3961f(this.f17329a.longValue(), this.f17330b, this.f17331c.longValue(), this.f17332d, this.f17333e, this.f17334f.longValue(), this.f17335g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // p076h2.AbstractC3975l
    /* renamed from: b */
    public Integer mo17648b() {
        return this.f17323b;
    }

    @Override // p076h2.AbstractC3975l
    /* renamed from: c */
    public long mo17647c() {
        return this.f17322a;
    }

    @Override // p076h2.AbstractC3975l
    /* renamed from: d */
    public long mo17646d() {
        return this.f17324c;
    }

    @Override // p076h2.AbstractC3975l
    /* renamed from: e */
    public AbstractC3980o mo17645e() {
        return this.f17328g;
    }

    public boolean equals(Object obj) {
        Integer num;
        byte[] mo17644f;
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3975l)) {
            return false;
        }
        AbstractC3975l abstractC3975l = (AbstractC3975l) obj;
        if (this.f17322a == abstractC3975l.mo17647c() && ((num = this.f17323b) != null ? num.equals(abstractC3975l.mo17648b()) : abstractC3975l.mo17648b() == null) && this.f17324c == abstractC3975l.mo17646d()) {
            byte[] bArr = this.f17325d;
            if (abstractC3975l instanceof C3961f) {
                mo17644f = ((C3961f) abstractC3975l).f17325d;
            } else {
                mo17644f = abstractC3975l.mo17644f();
            }
            if (Arrays.equals(bArr, mo17644f) && ((str = this.f17326e) != null ? str.equals(abstractC3975l.mo17643g()) : abstractC3975l.mo17643g() == null) && this.f17327f == abstractC3975l.mo17642h()) {
                AbstractC3980o abstractC3980o = this.f17328g;
                if (abstractC3980o == null) {
                    if (abstractC3975l.mo17645e() == null) {
                        return true;
                    }
                } else if (abstractC3980o.equals(abstractC3975l.mo17645e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // p076h2.AbstractC3975l
    /* renamed from: f */
    public byte[] mo17644f() {
        return this.f17325d;
    }

    @Override // p076h2.AbstractC3975l
    /* renamed from: g */
    public String mo17643g() {
        return this.f17326e;
    }

    @Override // p076h2.AbstractC3975l
    /* renamed from: h */
    public long mo17642h() {
        return this.f17327f;
    }

    public C3961f(long j, Integer num, long j2, byte[] bArr, String str, long j3, AbstractC3980o abstractC3980o) {
        this.f17322a = j;
        this.f17323b = num;
        this.f17324c = j2;
        this.f17325d = bArr;
        this.f17326e = str;
        this.f17327f = j3;
        this.f17328g = abstractC3980o;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        long j = this.f17322a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f17323b;
        int i2 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        long j2 = this.f17324c;
        int hashCode3 = (((((i ^ hashCode) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f17325d)) * 1000003;
        String str = this.f17326e;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        long j3 = this.f17327f;
        int i3 = (((hashCode3 ^ hashCode2) * 1000003) ^ ((int) ((j3 >>> 32) ^ j3))) * 1000003;
        AbstractC3980o abstractC3980o = this.f17328g;
        if (abstractC3980o != null) {
            i2 = abstractC3980o.hashCode();
        }
        return i3 ^ i2;
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f17322a + ", eventCode=" + this.f17323b + ", eventUptimeMs=" + this.f17324c + ", sourceExtension=" + Arrays.toString(this.f17325d) + ", sourceExtensionJsonProto3=" + this.f17326e + ", timezoneOffsetSeconds=" + this.f17327f + ", networkConnectionInfo=" + this.f17328g + "}";
    }
}
