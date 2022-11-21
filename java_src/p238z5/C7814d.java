package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.d */
/* loaded from: classes2.dex */
public final class C7814d extends AbstractC7762a0.AbstractC7766c {

    /* renamed from: a */
    public final String f38088a;

    /* renamed from: b */
    public final String f38089b;

    /* renamed from: z5.d$b */
    /* loaded from: classes2.dex */
    public static final class C7816b extends AbstractC7762a0.AbstractC7766c.AbstractC7767a {

        /* renamed from: a */
        public String f38090a;

        /* renamed from: b */
        public String f38091b;

        @Override // p238z5.AbstractC7762a0.AbstractC7766c.AbstractC7767a
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7766c mo295a() {
            String str = "";
            if (this.f38090a == null) {
                str = " key";
            }
            if (this.f38091b == null) {
                str = str + " value";
            }
            if (str.isEmpty()) {
                return new C7814d(this.f38090a, this.f38091b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7766c.AbstractC7767a
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7766c.AbstractC7767a mo294b(String str) {
            if (str != null) {
                this.f38090a = str;
                return this;
            }
            throw new NullPointerException("Null key");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7766c.AbstractC7767a
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7766c.AbstractC7767a mo293c(String str) {
            if (str != null) {
                this.f38091b = str;
                return this;
            }
            throw new NullPointerException("Null value");
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7766c
    /* renamed from: b */
    public String mo297b() {
        return this.f38088a;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7766c
    /* renamed from: c */
    public String mo296c() {
        return this.f38089b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7766c)) {
            return false;
        }
        AbstractC7762a0.AbstractC7766c abstractC7766c = (AbstractC7762a0.AbstractC7766c) obj;
        return this.f38088a.equals(abstractC7766c.mo297b()) && this.f38089b.equals(abstractC7766c.mo296c());
    }

    public String toString() {
        return "CustomAttribute{key=" + this.f38088a + ", value=" + this.f38089b + "}";
    }

    public C7814d(String str, String str2) {
        this.f38088a = str;
        this.f38089b = str2;
    }

    public int hashCode() {
        return ((this.f38088a.hashCode() ^ 1000003) * 1000003) ^ this.f38089b.hashCode();
    }
}
