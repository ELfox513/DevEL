package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.g */
/* loaded from: classes2.dex */
public final class C7823g extends AbstractC7762a0.AbstractC7772e {

    /* renamed from: a */
    public final String f38100a;

    /* renamed from: b */
    public final String f38101b;

    /* renamed from: c */
    public final long f38102c;

    /* renamed from: d */
    public final Long f38103d;

    /* renamed from: e */
    public final boolean f38104e;

    /* renamed from: f */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7773a f38105f;

    /* renamed from: g */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7801f f38106g;

    /* renamed from: h */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7799e f38107h;

    /* renamed from: i */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7777c f38108i;

    /* renamed from: j */
    public final C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d> f38109j;

    /* renamed from: k */
    public final int f38110k;

    /* renamed from: z5.g$b */
    /* loaded from: classes2.dex */
    public static final class C7825b extends AbstractC7762a0.AbstractC7772e.AbstractC7776b {

        /* renamed from: a */
        public String f38111a;

        /* renamed from: b */
        public String f38112b;

        /* renamed from: c */
        public Long f38113c;

        /* renamed from: d */
        public Long f38114d;

        /* renamed from: e */
        public Boolean f38115e;

        /* renamed from: f */
        public AbstractC7762a0.AbstractC7772e.AbstractC7773a f38116f;

        /* renamed from: g */
        public AbstractC7762a0.AbstractC7772e.AbstractC7801f f38117g;

        /* renamed from: h */
        public AbstractC7762a0.AbstractC7772e.AbstractC7799e f38118h;

        /* renamed from: i */
        public AbstractC7762a0.AbstractC7772e.AbstractC7777c f38119i;

        /* renamed from: j */
        public C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d> f38120j;

        /* renamed from: k */
        public Integer f38121k;

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7776b
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7772e.AbstractC7776b mo268c(boolean z) {
            this.f38115e = Boolean.valueOf(z);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7776b
        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7776b mo267d(AbstractC7762a0.AbstractC7772e.AbstractC7777c abstractC7777c) {
            this.f38119i = abstractC7777c;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7776b
        /* renamed from: e */
        public AbstractC7762a0.AbstractC7772e.AbstractC7776b mo266e(Long l) {
            this.f38114d = l;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7776b
        /* renamed from: f */
        public AbstractC7762a0.AbstractC7772e.AbstractC7776b mo265f(C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d> c7806b0) {
            this.f38120j = c7806b0;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7776b
        /* renamed from: h */
        public AbstractC7762a0.AbstractC7772e.AbstractC7776b mo263h(int i) {
            this.f38121k = Integer.valueOf(i);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7776b
        /* renamed from: k */
        public AbstractC7762a0.AbstractC7772e.AbstractC7776b mo261k(AbstractC7762a0.AbstractC7772e.AbstractC7799e abstractC7799e) {
            this.f38118h = abstractC7799e;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7776b
        /* renamed from: l */
        public AbstractC7762a0.AbstractC7772e.AbstractC7776b mo260l(long j) {
            this.f38113c = Long.valueOf(j);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7776b
        /* renamed from: m */
        public AbstractC7762a0.AbstractC7772e.AbstractC7776b mo259m(AbstractC7762a0.AbstractC7772e.AbstractC7801f abstractC7801f) {
            this.f38117g = abstractC7801f;
            return this;
        }

        public C7825b() {
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7776b
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7772e mo270a() {
            String str = "";
            if (this.f38111a == null) {
                str = " generator";
            }
            if (this.f38112b == null) {
                str = str + " identifier";
            }
            if (this.f38113c == null) {
                str = str + " startedAt";
            }
            if (this.f38115e == null) {
                str = str + " crashed";
            }
            if (this.f38116f == null) {
                str = str + " app";
            }
            if (this.f38121k == null) {
                str = str + " generatorType";
            }
            if (str.isEmpty()) {
                return new C7823g(this.f38111a, this.f38112b, this.f38113c.longValue(), this.f38114d, this.f38115e.booleanValue(), this.f38116f, this.f38117g, this.f38118h, this.f38119i, this.f38120j, this.f38121k.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7776b
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7772e.AbstractC7776b mo269b(AbstractC7762a0.AbstractC7772e.AbstractC7773a abstractC7773a) {
            if (abstractC7773a != null) {
                this.f38116f = abstractC7773a;
                return this;
            }
            throw new NullPointerException("Null app");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7776b
        /* renamed from: g */
        public AbstractC7762a0.AbstractC7772e.AbstractC7776b mo264g(String str) {
            if (str != null) {
                this.f38111a = str;
                return this;
            }
            throw new NullPointerException("Null generator");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7776b
        /* renamed from: i */
        public AbstractC7762a0.AbstractC7772e.AbstractC7776b mo262i(String str) {
            if (str != null) {
                this.f38112b = str;
                return this;
            }
            throw new NullPointerException("Null identifier");
        }

        public C7825b(AbstractC7762a0.AbstractC7772e abstractC7772e) {
            this.f38111a = abstractC7772e.mo278f();
            this.f38112b = abstractC7772e.mo276h();
            this.f38113c = Long.valueOf(abstractC7772e.mo274k());
            this.f38114d = abstractC7772e.mo280d();
            this.f38115e = Boolean.valueOf(abstractC7772e.mo272m());
            this.f38116f = abstractC7772e.mo282b();
            this.f38117g = abstractC7772e.mo273l();
            this.f38118h = abstractC7772e.mo275j();
            this.f38119i = abstractC7772e.mo281c();
            this.f38120j = abstractC7772e.mo279e();
            this.f38121k = Integer.valueOf(abstractC7772e.mo277g());
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e
    /* renamed from: b */
    public AbstractC7762a0.AbstractC7772e.AbstractC7773a mo282b() {
        return this.f38105f;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e
    /* renamed from: c */
    public AbstractC7762a0.AbstractC7772e.AbstractC7777c mo281c() {
        return this.f38108i;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e
    /* renamed from: d */
    public Long mo280d() {
        return this.f38103d;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e
    /* renamed from: e */
    public C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d> mo279e() {
        return this.f38109j;
    }

    public boolean equals(Object obj) {
        Long l;
        AbstractC7762a0.AbstractC7772e.AbstractC7801f abstractC7801f;
        AbstractC7762a0.AbstractC7772e.AbstractC7799e abstractC7799e;
        AbstractC7762a0.AbstractC7772e.AbstractC7777c abstractC7777c;
        C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d> c7806b0;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7772e)) {
            return false;
        }
        AbstractC7762a0.AbstractC7772e abstractC7772e = (AbstractC7762a0.AbstractC7772e) obj;
        return this.f38100a.equals(abstractC7772e.mo278f()) && this.f38101b.equals(abstractC7772e.mo276h()) && this.f38102c == abstractC7772e.mo274k() && ((l = this.f38103d) != null ? l.equals(abstractC7772e.mo280d()) : abstractC7772e.mo280d() == null) && this.f38104e == abstractC7772e.mo272m() && this.f38105f.equals(abstractC7772e.mo282b()) && ((abstractC7801f = this.f38106g) != null ? abstractC7801f.equals(abstractC7772e.mo273l()) : abstractC7772e.mo273l() == null) && ((abstractC7799e = this.f38107h) != null ? abstractC7799e.equals(abstractC7772e.mo275j()) : abstractC7772e.mo275j() == null) && ((abstractC7777c = this.f38108i) != null ? abstractC7777c.equals(abstractC7772e.mo281c()) : abstractC7772e.mo281c() == null) && ((c7806b0 = this.f38109j) != null ? c7806b0.equals(abstractC7772e.mo279e()) : abstractC7772e.mo279e() == null) && this.f38110k == abstractC7772e.mo277g();
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e
    /* renamed from: f */
    public String mo278f() {
        return this.f38100a;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e
    /* renamed from: g */
    public int mo277g() {
        return this.f38110k;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e
    /* renamed from: h */
    public String mo276h() {
        return this.f38101b;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e
    /* renamed from: j */
    public AbstractC7762a0.AbstractC7772e.AbstractC7799e mo275j() {
        return this.f38107h;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e
    /* renamed from: k */
    public long mo274k() {
        return this.f38102c;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e
    /* renamed from: l */
    public AbstractC7762a0.AbstractC7772e.AbstractC7801f mo273l() {
        return this.f38106g;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e
    /* renamed from: m */
    public boolean mo272m() {
        return this.f38104e;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e
    /* renamed from: n */
    public AbstractC7762a0.AbstractC7772e.AbstractC7776b mo271n() {
        return new C7825b(this);
    }

    public String toString() {
        return "Session{generator=" + this.f38100a + ", identifier=" + this.f38101b + ", startedAt=" + this.f38102c + ", endedAt=" + this.f38103d + ", crashed=" + this.f38104e + ", app=" + this.f38105f + ", user=" + this.f38106g + ", os=" + this.f38107h + ", device=" + this.f38108i + ", events=" + this.f38109j + ", generatorType=" + this.f38110k + "}";
    }

    public C7823g(String str, String str2, long j, Long l, boolean z, AbstractC7762a0.AbstractC7772e.AbstractC7773a abstractC7773a, AbstractC7762a0.AbstractC7772e.AbstractC7801f abstractC7801f, AbstractC7762a0.AbstractC7772e.AbstractC7799e abstractC7799e, AbstractC7762a0.AbstractC7772e.AbstractC7777c abstractC7777c, C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d> c7806b0, int i) {
        this.f38100a = str;
        this.f38101b = str2;
        this.f38102c = j;
        this.f38103d = l;
        this.f38104e = z;
        this.f38105f = abstractC7773a;
        this.f38106g = abstractC7801f;
        this.f38107h = abstractC7799e;
        this.f38108i = abstractC7777c;
        this.f38109j = c7806b0;
        this.f38110k = i;
    }

    public int hashCode() {
        int hashCode;
        int i;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        long j = this.f38102c;
        int hashCode5 = (((((this.f38100a.hashCode() ^ 1000003) * 1000003) ^ this.f38101b.hashCode()) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        Long l = this.f38103d;
        int i2 = 0;
        if (l == null) {
            hashCode = 0;
        } else {
            hashCode = l.hashCode();
        }
        int i3 = (hashCode5 ^ hashCode) * 1000003;
        if (this.f38104e) {
            i = 1231;
        } else {
            i = 1237;
        }
        int hashCode6 = (((i3 ^ i) * 1000003) ^ this.f38105f.hashCode()) * 1000003;
        AbstractC7762a0.AbstractC7772e.AbstractC7801f abstractC7801f = this.f38106g;
        if (abstractC7801f == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = abstractC7801f.hashCode();
        }
        int i4 = (hashCode6 ^ hashCode2) * 1000003;
        AbstractC7762a0.AbstractC7772e.AbstractC7799e abstractC7799e = this.f38107h;
        if (abstractC7799e == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = abstractC7799e.hashCode();
        }
        int i5 = (i4 ^ hashCode3) * 1000003;
        AbstractC7762a0.AbstractC7772e.AbstractC7777c abstractC7777c = this.f38108i;
        if (abstractC7777c == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = abstractC7777c.hashCode();
        }
        int i6 = (i5 ^ hashCode4) * 1000003;
        C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d> c7806b0 = this.f38109j;
        if (c7806b0 != null) {
            i2 = c7806b0.hashCode();
        }
        return ((i6 ^ i2) * 1000003) ^ this.f38110k;
    }
}
