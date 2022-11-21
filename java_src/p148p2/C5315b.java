package p148p2;

import p085i2.AbstractC4104h;
import p085i2.AbstractC4113m;
/* renamed from: p2.b */
/* loaded from: classes.dex */
public final class C5315b extends AbstractC5338i {

    /* renamed from: a */
    public final long f19916a;

    /* renamed from: b */
    public final AbstractC4113m f19917b;

    /* renamed from: c */
    public final AbstractC4104h f19918c;

    @Override // p148p2.AbstractC5338i
    /* renamed from: b */
    public AbstractC4104h mo13422b() {
        return this.f19918c;
    }

    @Override // p148p2.AbstractC5338i
    /* renamed from: c */
    public long mo13421c() {
        return this.f19916a;
    }

    @Override // p148p2.AbstractC5338i
    /* renamed from: d */
    public AbstractC4113m mo13420d() {
        return this.f19917b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC5338i)) {
            return false;
        }
        AbstractC5338i abstractC5338i = (AbstractC5338i) obj;
        return this.f19916a == abstractC5338i.mo13421c() && this.f19917b.equals(abstractC5338i.mo13420d()) && this.f19918c.equals(abstractC5338i.mo13422b());
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f19916a + ", transportContext=" + this.f19917b + ", event=" + this.f19918c + "}";
    }

    public int hashCode() {
        long j = this.f19916a;
        return this.f19918c.hashCode() ^ ((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f19917b.hashCode()) * 1000003);
    }

    public C5315b(long j, AbstractC4113m abstractC4113m, AbstractC4104h abstractC4104h) {
        this.f19916a = j;
        if (abstractC4113m != null) {
            this.f19917b = abstractC4113m;
            if (abstractC4104h != null) {
                this.f19918c = abstractC4104h;
                return;
            }
            throw new NullPointerException("Null event");
        }
        throw new NullPointerException("Null transportContext");
    }
}
