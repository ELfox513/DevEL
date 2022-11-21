package p076h2;

import p076h2.AbstractC3980o;
/* renamed from: h2.i */
/* loaded from: classes.dex */
public final class C3968i extends AbstractC3980o {

    /* renamed from: a */
    public final AbstractC3980o.EnumC3983c f17351a;

    /* renamed from: b */
    public final AbstractC3980o.EnumC3982b f17352b;

    /* renamed from: h2.i$b */
    /* loaded from: classes.dex */
    public static final class C3970b extends AbstractC3980o.AbstractC3981a {

        /* renamed from: a */
        public AbstractC3980o.EnumC3983c f17353a;

        /* renamed from: b */
        public AbstractC3980o.EnumC3982b f17354b;

        @Override // p076h2.AbstractC3980o.AbstractC3981a
        /* renamed from: a */
        public AbstractC3980o mo17607a() {
            return new C3968i(this.f17353a, this.f17354b);
        }

        @Override // p076h2.AbstractC3980o.AbstractC3981a
        /* renamed from: b */
        public AbstractC3980o.AbstractC3981a mo17606b(AbstractC3980o.EnumC3982b enumC3982b) {
            this.f17354b = enumC3982b;
            return this;
        }

        @Override // p076h2.AbstractC3980o.AbstractC3981a
        /* renamed from: c */
        public AbstractC3980o.AbstractC3981a mo17605c(AbstractC3980o.EnumC3983c enumC3983c) {
            this.f17353a = enumC3983c;
            return this;
        }
    }

    @Override // p076h2.AbstractC3980o
    /* renamed from: b */
    public AbstractC3980o.EnumC3982b mo17609b() {
        return this.f17352b;
    }

    @Override // p076h2.AbstractC3980o
    /* renamed from: c */
    public AbstractC3980o.EnumC3983c mo17608c() {
        return this.f17351a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3980o)) {
            return false;
        }
        AbstractC3980o abstractC3980o = (AbstractC3980o) obj;
        AbstractC3980o.EnumC3983c enumC3983c = this.f17351a;
        if (enumC3983c != null ? enumC3983c.equals(abstractC3980o.mo17608c()) : abstractC3980o.mo17608c() == null) {
            AbstractC3980o.EnumC3982b enumC3982b = this.f17352b;
            if (enumC3982b == null) {
                if (abstractC3980o.mo17609b() == null) {
                    return true;
                }
            } else if (enumC3982b.equals(abstractC3980o.mo17609b())) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f17351a + ", mobileSubtype=" + this.f17352b + "}";
    }

    public C3968i(AbstractC3980o.EnumC3983c enumC3983c, AbstractC3980o.EnumC3982b enumC3982b) {
        this.f17351a = enumC3983c;
        this.f17352b = enumC3982b;
    }

    public int hashCode() {
        int hashCode;
        AbstractC3980o.EnumC3983c enumC3983c = this.f17351a;
        int i = 0;
        if (enumC3983c == null) {
            hashCode = 0;
        } else {
            hashCode = enumC3983c.hashCode();
        }
        int i2 = (hashCode ^ 1000003) * 1000003;
        AbstractC3980o.EnumC3982b enumC3982b = this.f17352b;
        if (enumC3982b != null) {
            i = enumC3982b.hashCode();
        }
        return i2 ^ i;
    }
}
