package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.c */
/* loaded from: classes2.dex */
public final class C7807c extends AbstractC7762a0.AbstractC7763a {

    /* renamed from: a */
    public final int f38072a;

    /* renamed from: b */
    public final String f38073b;

    /* renamed from: c */
    public final int f38074c;

    /* renamed from: d */
    public final int f38075d;

    /* renamed from: e */
    public final long f38076e;

    /* renamed from: f */
    public final long f38077f;

    /* renamed from: g */
    public final long f38078g;

    /* renamed from: h */
    public final String f38079h;

    /* renamed from: z5.c$b */
    /* loaded from: classes2.dex */
    public static final class C7809b extends AbstractC7762a0.AbstractC7763a.AbstractC7764a {

        /* renamed from: a */
        public Integer f38080a;

        /* renamed from: b */
        public String f38081b;

        /* renamed from: c */
        public Integer f38082c;

        /* renamed from: d */
        public Integer f38083d;

        /* renamed from: e */
        public Long f38084e;

        /* renamed from: f */
        public Long f38085f;

        /* renamed from: g */
        public Long f38086g;

        /* renamed from: h */
        public String f38087h;

        @Override // p238z5.AbstractC7762a0.AbstractC7763a.AbstractC7764a
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7763a.AbstractC7764a mo309b(int i) {
            this.f38083d = Integer.valueOf(i);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7763a.AbstractC7764a
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7763a.AbstractC7764a mo308c(int i) {
            this.f38080a = Integer.valueOf(i);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7763a.AbstractC7764a
        /* renamed from: e */
        public AbstractC7762a0.AbstractC7763a.AbstractC7764a mo306e(long j) {
            this.f38084e = Long.valueOf(j);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7763a.AbstractC7764a
        /* renamed from: f */
        public AbstractC7762a0.AbstractC7763a.AbstractC7764a mo305f(int i) {
            this.f38082c = Integer.valueOf(i);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7763a.AbstractC7764a
        /* renamed from: g */
        public AbstractC7762a0.AbstractC7763a.AbstractC7764a mo304g(long j) {
            this.f38085f = Long.valueOf(j);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7763a.AbstractC7764a
        /* renamed from: h */
        public AbstractC7762a0.AbstractC7763a.AbstractC7764a mo303h(long j) {
            this.f38086g = Long.valueOf(j);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7763a.AbstractC7764a
        /* renamed from: i */
        public AbstractC7762a0.AbstractC7763a.AbstractC7764a mo302i(String str) {
            this.f38087h = str;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7763a.AbstractC7764a
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7763a mo310a() {
            String str = "";
            if (this.f38080a == null) {
                str = " pid";
            }
            if (this.f38081b == null) {
                str = str + " processName";
            }
            if (this.f38082c == null) {
                str = str + " reasonCode";
            }
            if (this.f38083d == null) {
                str = str + " importance";
            }
            if (this.f38084e == null) {
                str = str + " pss";
            }
            if (this.f38085f == null) {
                str = str + " rss";
            }
            if (this.f38086g == null) {
                str = str + " timestamp";
            }
            if (str.isEmpty()) {
                return new C7807c(this.f38080a.intValue(), this.f38081b, this.f38082c.intValue(), this.f38083d.intValue(), this.f38084e.longValue(), this.f38085f.longValue(), this.f38086g.longValue(), this.f38087h);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7763a.AbstractC7764a
        /* renamed from: d */
        public AbstractC7762a0.AbstractC7763a.AbstractC7764a mo307d(String str) {
            if (str != null) {
                this.f38081b = str;
                return this;
            }
            throw new NullPointerException("Null processName");
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7763a
    /* renamed from: b */
    public int mo318b() {
        return this.f38075d;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7763a
    /* renamed from: c */
    public int mo317c() {
        return this.f38072a;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7763a
    /* renamed from: d */
    public String mo316d() {
        return this.f38073b;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7763a
    /* renamed from: e */
    public long mo315e() {
        return this.f38076e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7763a)) {
            return false;
        }
        AbstractC7762a0.AbstractC7763a abstractC7763a = (AbstractC7762a0.AbstractC7763a) obj;
        if (this.f38072a == abstractC7763a.mo317c() && this.f38073b.equals(abstractC7763a.mo316d()) && this.f38074c == abstractC7763a.mo314f() && this.f38075d == abstractC7763a.mo318b() && this.f38076e == abstractC7763a.mo315e() && this.f38077f == abstractC7763a.mo313g() && this.f38078g == abstractC7763a.mo312h()) {
            String str = this.f38079h;
            if (str == null) {
                if (abstractC7763a.mo311i() == null) {
                    return true;
                }
            } else if (str.equals(abstractC7763a.mo311i())) {
                return true;
            }
        }
        return false;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7763a
    /* renamed from: f */
    public int mo314f() {
        return this.f38074c;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7763a
    /* renamed from: g */
    public long mo313g() {
        return this.f38077f;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7763a
    /* renamed from: h */
    public long mo312h() {
        return this.f38078g;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7763a
    /* renamed from: i */
    public String mo311i() {
        return this.f38079h;
    }

    public String toString() {
        return "ApplicationExitInfo{pid=" + this.f38072a + ", processName=" + this.f38073b + ", reasonCode=" + this.f38074c + ", importance=" + this.f38075d + ", pss=" + this.f38076e + ", rss=" + this.f38077f + ", timestamp=" + this.f38078g + ", traceFile=" + this.f38079h + "}";
    }

    public C7807c(int i, String str, int i2, int i3, long j, long j2, long j3, String str2) {
        this.f38072a = i;
        this.f38073b = str;
        this.f38074c = i2;
        this.f38075d = i3;
        this.f38076e = j;
        this.f38077f = j2;
        this.f38078g = j3;
        this.f38079h = str2;
    }

    public int hashCode() {
        int hashCode;
        long j = this.f38076e;
        long j2 = this.f38077f;
        long j3 = this.f38078g;
        int hashCode2 = (((((((((((((this.f38072a ^ 1000003) * 1000003) ^ this.f38073b.hashCode()) * 1000003) ^ this.f38074c) * 1000003) ^ this.f38075d) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        String str = this.f38079h;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 ^ hashCode;
    }
}
