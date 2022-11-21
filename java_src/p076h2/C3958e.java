package p076h2;

import p076h2.AbstractC3972k;
/* renamed from: h2.e */
/* loaded from: classes.dex */
public final class C3958e extends AbstractC3972k {

    /* renamed from: a */
    public final AbstractC3972k.EnumC3974b f17318a;

    /* renamed from: b */
    public final AbstractC3945a f17319b;

    /* renamed from: h2.e$b */
    /* loaded from: classes.dex */
    public static final class C3960b extends AbstractC3972k.AbstractC3973a {

        /* renamed from: a */
        public AbstractC3972k.EnumC3974b f17320a;

        /* renamed from: b */
        public AbstractC3945a f17321b;

        @Override // p076h2.AbstractC3972k.AbstractC3973a
        /* renamed from: a */
        public AbstractC3972k mo17652a() {
            return new C3958e(this.f17320a, this.f17321b);
        }

        @Override // p076h2.AbstractC3972k.AbstractC3973a
        /* renamed from: b */
        public AbstractC3972k.AbstractC3973a mo17651b(AbstractC3945a abstractC3945a) {
            this.f17321b = abstractC3945a;
            return this;
        }

        @Override // p076h2.AbstractC3972k.AbstractC3973a
        /* renamed from: c */
        public AbstractC3972k.AbstractC3973a mo17650c(AbstractC3972k.EnumC3974b enumC3974b) {
            this.f17320a = enumC3974b;
            return this;
        }
    }

    @Override // p076h2.AbstractC3972k
    /* renamed from: b */
    public AbstractC3945a mo17654b() {
        return this.f17319b;
    }

    @Override // p076h2.AbstractC3972k
    /* renamed from: c */
    public AbstractC3972k.EnumC3974b mo17653c() {
        return this.f17318a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3972k)) {
            return false;
        }
        AbstractC3972k abstractC3972k = (AbstractC3972k) obj;
        AbstractC3972k.EnumC3974b enumC3974b = this.f17318a;
        if (enumC3974b != null ? enumC3974b.equals(abstractC3972k.mo17653c()) : abstractC3972k.mo17653c() == null) {
            AbstractC3945a abstractC3945a = this.f17319b;
            if (abstractC3945a == null) {
                if (abstractC3972k.mo17654b() == null) {
                    return true;
                }
            } else if (abstractC3945a.equals(abstractC3972k.mo17654b())) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.f17318a + ", androidClientInfo=" + this.f17319b + "}";
    }

    public C3958e(AbstractC3972k.EnumC3974b enumC3974b, AbstractC3945a abstractC3945a) {
        this.f17318a = enumC3974b;
        this.f17319b = abstractC3945a;
    }

    public int hashCode() {
        int hashCode;
        AbstractC3972k.EnumC3974b enumC3974b = this.f17318a;
        int i = 0;
        if (enumC3974b == null) {
            hashCode = 0;
        } else {
            hashCode = enumC3974b.hashCode();
        }
        int i2 = (hashCode ^ 1000003) * 1000003;
        AbstractC3945a abstractC3945a = this.f17319b;
        if (abstractC3945a != null) {
            i = abstractC3945a.hashCode();
        }
        return i2 ^ i;
    }
}
