package p139o2;

import java.util.Set;
import p139o2.AbstractC5072g;
/* renamed from: o2.d */
/* loaded from: classes.dex */
public final class C5067d extends AbstractC5072g.AbstractC5074b {

    /* renamed from: a */
    public final long f19296a;

    /* renamed from: b */
    public final long f19297b;

    /* renamed from: c */
    public final Set<AbstractC5072g.EnumC5076c> f19298c;

    /* renamed from: o2.d$b */
    /* loaded from: classes.dex */
    public static final class C5069b extends AbstractC5072g.AbstractC5074b.AbstractC5075a {

        /* renamed from: a */
        public Long f19299a;

        /* renamed from: b */
        public Long f19300b;

        /* renamed from: c */
        public Set<AbstractC5072g.EnumC5076c> f19301c;

        @Override // p139o2.AbstractC5072g.AbstractC5074b.AbstractC5075a
        /* renamed from: b */
        public AbstractC5072g.AbstractC5074b.AbstractC5075a mo14705b(long j) {
            this.f19299a = Long.valueOf(j);
            return this;
        }

        @Override // p139o2.AbstractC5072g.AbstractC5074b.AbstractC5075a
        /* renamed from: d */
        public AbstractC5072g.AbstractC5074b.AbstractC5075a mo14703d(long j) {
            this.f19300b = Long.valueOf(j);
            return this;
        }

        @Override // p139o2.AbstractC5072g.AbstractC5074b.AbstractC5075a
        /* renamed from: a */
        public AbstractC5072g.AbstractC5074b mo14706a() {
            String str = "";
            if (this.f19299a == null) {
                str = " delta";
            }
            if (this.f19300b == null) {
                str = str + " maxAllowedDelay";
            }
            if (this.f19301c == null) {
                str = str + " flags";
            }
            if (str.isEmpty()) {
                return new C5067d(this.f19299a.longValue(), this.f19300b.longValue(), this.f19301c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p139o2.AbstractC5072g.AbstractC5074b.AbstractC5075a
        /* renamed from: c */
        public AbstractC5072g.AbstractC5074b.AbstractC5075a mo14704c(Set<AbstractC5072g.EnumC5076c> set) {
            if (set != null) {
                this.f19301c = set;
                return this;
            }
            throw new NullPointerException("Null flags");
        }
    }

    @Override // p139o2.AbstractC5072g.AbstractC5074b
    /* renamed from: b */
    public long mo14709b() {
        return this.f19296a;
    }

    @Override // p139o2.AbstractC5072g.AbstractC5074b
    /* renamed from: c */
    public Set<AbstractC5072g.EnumC5076c> mo14708c() {
        return this.f19298c;
    }

    @Override // p139o2.AbstractC5072g.AbstractC5074b
    /* renamed from: d */
    public long mo14707d() {
        return this.f19297b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC5072g.AbstractC5074b)) {
            return false;
        }
        AbstractC5072g.AbstractC5074b abstractC5074b = (AbstractC5072g.AbstractC5074b) obj;
        return this.f19296a == abstractC5074b.mo14709b() && this.f19297b == abstractC5074b.mo14707d() && this.f19298c.equals(abstractC5074b.mo14708c());
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f19296a + ", maxAllowedDelay=" + this.f19297b + ", flags=" + this.f19298c + "}";
    }

    public C5067d(long j, long j2, Set<AbstractC5072g.EnumC5076c> set) {
        this.f19296a = j;
        this.f19297b = j2;
        this.f19298c = set;
    }

    public int hashCode() {
        long j = this.f19296a;
        long j2 = this.f19297b;
        return this.f19298c.hashCode() ^ ((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003);
    }
}
