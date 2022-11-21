package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.j */
/* loaded from: classes2.dex */
public final class C7830j extends AbstractC7762a0.AbstractC7772e.AbstractC7777c {

    /* renamed from: a */
    public final int f38137a;

    /* renamed from: b */
    public final String f38138b;

    /* renamed from: c */
    public final int f38139c;

    /* renamed from: d */
    public final long f38140d;

    /* renamed from: e */
    public final long f38141e;

    /* renamed from: f */
    public final boolean f38142f;

    /* renamed from: g */
    public final int f38143g;

    /* renamed from: h */
    public final String f38144h;

    /* renamed from: i */
    public final String f38145i;

    /* renamed from: z5.j$b */
    /* loaded from: classes2.dex */
    public static final class C7832b extends AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a {

        /* renamed from: a */
        public Integer f38146a;

        /* renamed from: b */
        public String f38147b;

        /* renamed from: c */
        public Integer f38148c;

        /* renamed from: d */
        public Long f38149d;

        /* renamed from: e */
        public Long f38150e;

        /* renamed from: f */
        public Boolean f38151f;

        /* renamed from: g */
        public Integer f38152g;

        /* renamed from: h */
        public String f38153h;

        /* renamed from: i */
        public String f38154i;

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a mo233b(int i) {
            this.f38146a = Integer.valueOf(i);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a mo232c(int i) {
            this.f38148c = Integer.valueOf(i);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a
        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a mo231d(long j) {
            this.f38150e = Long.valueOf(j);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a
        /* renamed from: h */
        public AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a mo227h(long j) {
            this.f38149d = Long.valueOf(j);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a
        /* renamed from: i */
        public AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a mo226i(boolean z) {
            this.f38151f = Boolean.valueOf(z);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a
        /* renamed from: j */
        public AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a mo225j(int i) {
            this.f38152g = Integer.valueOf(i);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7772e.AbstractC7777c mo234a() {
            String str = "";
            if (this.f38146a == null) {
                str = " arch";
            }
            if (this.f38147b == null) {
                str = str + " model";
            }
            if (this.f38148c == null) {
                str = str + " cores";
            }
            if (this.f38149d == null) {
                str = str + " ram";
            }
            if (this.f38150e == null) {
                str = str + " diskSpace";
            }
            if (this.f38151f == null) {
                str = str + " simulator";
            }
            if (this.f38152g == null) {
                str = str + " state";
            }
            if (this.f38153h == null) {
                str = str + " manufacturer";
            }
            if (this.f38154i == null) {
                str = str + " modelClass";
            }
            if (str.isEmpty()) {
                return new C7830j(this.f38146a.intValue(), this.f38147b, this.f38148c.intValue(), this.f38149d.longValue(), this.f38150e.longValue(), this.f38151f.booleanValue(), this.f38152g.intValue(), this.f38153h, this.f38154i);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a
        /* renamed from: e */
        public AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a mo230e(String str) {
            if (str != null) {
                this.f38153h = str;
                return this;
            }
            throw new NullPointerException("Null manufacturer");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a
        /* renamed from: f */
        public AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a mo229f(String str) {
            if (str != null) {
                this.f38147b = str;
                return this;
            }
            throw new NullPointerException("Null model");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a
        /* renamed from: g */
        public AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a mo228g(String str) {
            if (str != null) {
                this.f38154i = str;
                return this;
            }
            throw new NullPointerException("Null modelClass");
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c
    /* renamed from: b */
    public int mo243b() {
        return this.f38137a;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c
    /* renamed from: c */
    public int mo242c() {
        return this.f38139c;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c
    /* renamed from: d */
    public long mo241d() {
        return this.f38141e;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c
    /* renamed from: e */
    public String mo240e() {
        return this.f38144h;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7772e.AbstractC7777c)) {
            return false;
        }
        AbstractC7762a0.AbstractC7772e.AbstractC7777c abstractC7777c = (AbstractC7762a0.AbstractC7772e.AbstractC7777c) obj;
        return this.f38137a == abstractC7777c.mo243b() && this.f38138b.equals(abstractC7777c.mo239f()) && this.f38139c == abstractC7777c.mo242c() && this.f38140d == abstractC7777c.mo237h() && this.f38141e == abstractC7777c.mo241d() && this.f38142f == abstractC7777c.mo235j() && this.f38143g == abstractC7777c.mo236i() && this.f38144h.equals(abstractC7777c.mo240e()) && this.f38145i.equals(abstractC7777c.mo238g());
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c
    /* renamed from: f */
    public String mo239f() {
        return this.f38138b;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c
    /* renamed from: g */
    public String mo238g() {
        return this.f38145i;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c
    /* renamed from: h */
    public long mo237h() {
        return this.f38140d;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c
    /* renamed from: i */
    public int mo236i() {
        return this.f38143g;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7777c
    /* renamed from: j */
    public boolean mo235j() {
        return this.f38142f;
    }

    public String toString() {
        return "Device{arch=" + this.f38137a + ", model=" + this.f38138b + ", cores=" + this.f38139c + ", ram=" + this.f38140d + ", diskSpace=" + this.f38141e + ", simulator=" + this.f38142f + ", state=" + this.f38143g + ", manufacturer=" + this.f38144h + ", modelClass=" + this.f38145i + "}";
    }

    public C7830j(int i, String str, int i2, long j, long j2, boolean z, int i3, String str2, String str3) {
        this.f38137a = i;
        this.f38138b = str;
        this.f38139c = i2;
        this.f38140d = j;
        this.f38141e = j2;
        this.f38142f = z;
        this.f38143g = i3;
        this.f38144h = str2;
        this.f38145i = str3;
    }

    public int hashCode() {
        int i;
        long j = this.f38140d;
        long j2 = this.f38141e;
        int hashCode = (((((((((this.f38137a ^ 1000003) * 1000003) ^ this.f38138b.hashCode()) * 1000003) ^ this.f38139c) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        if (this.f38142f) {
            i = 1231;
        } else {
            i = 1237;
        }
        return ((((((hashCode ^ i) * 1000003) ^ this.f38143g) * 1000003) ^ this.f38144h.hashCode()) * 1000003) ^ this.f38145i.hashCode();
    }
}
