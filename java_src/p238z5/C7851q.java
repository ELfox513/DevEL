package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.q */
/* loaded from: classes2.dex */
public final class C7851q extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e {

    /* renamed from: a */
    public final String f38209a;

    /* renamed from: b */
    public final int f38210b;

    /* renamed from: c */
    public final C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b> f38211c;

    /* renamed from: z5.q$b */
    /* loaded from: classes2.dex */
    public static final class C7853b extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7791a {

        /* renamed from: a */
        public String f38212a;

        /* renamed from: b */
        public Integer f38213b;

        /* renamed from: c */
        public C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b> f38214c;

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7791a
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7791a mo157c(int i) {
            this.f38213b = Integer.valueOf(i);
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7791a
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e mo159a() {
            String str = "";
            if (this.f38212a == null) {
                str = " name";
            }
            if (this.f38213b == null) {
                str = str + " importance";
            }
            if (this.f38214c == null) {
                str = str + " frames";
            }
            if (str.isEmpty()) {
                return new C7851q(this.f38212a, this.f38213b.intValue(), this.f38214c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7791a
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7791a mo158b(C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b> c7806b0) {
            if (c7806b0 != null) {
                this.f38214c = c7806b0;
                return this;
            }
            throw new NullPointerException("Null frames");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7791a
        /* renamed from: d */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7791a mo156d(String str) {
            if (str != null) {
                this.f38212a = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e
    /* renamed from: b */
    public C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b> mo162b() {
        return this.f38211c;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e
    /* renamed from: c */
    public int mo161c() {
        return this.f38210b;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e
    /* renamed from: d */
    public String mo160d() {
        return this.f38209a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e)) {
            return false;
        }
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e abstractC7790e = (AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e) obj;
        return this.f38209a.equals(abstractC7790e.mo160d()) && this.f38210b == abstractC7790e.mo161c() && this.f38211c.equals(abstractC7790e.mo162b());
    }

    public String toString() {
        return "Thread{name=" + this.f38209a + ", importance=" + this.f38210b + ", frames=" + this.f38211c + "}";
    }

    public C7851q(String str, int i, C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b> c7806b0) {
        this.f38209a = str;
        this.f38210b = i;
        this.f38211c = c7806b0;
    }

    public int hashCode() {
        return ((((this.f38209a.hashCode() ^ 1000003) * 1000003) ^ this.f38210b) * 1000003) ^ this.f38211c.hashCode();
    }
}
