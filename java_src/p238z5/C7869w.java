package p238z5;

import p238z5.AbstractC7810c0;
/* renamed from: z5.w */
/* loaded from: classes2.dex */
public final class C7869w extends AbstractC7810c0 {

    /* renamed from: a */
    public final AbstractC7810c0.AbstractC7811a f38249a;

    /* renamed from: b */
    public final AbstractC7810c0.AbstractC7813c f38250b;

    /* renamed from: c */
    public final AbstractC7810c0.AbstractC7812b f38251c;

    @Override // p238z5.AbstractC7810c0
    /* renamed from: a */
    public AbstractC7810c0.AbstractC7811a mo116a() {
        return this.f38249a;
    }

    @Override // p238z5.AbstractC7810c0
    /* renamed from: c */
    public AbstractC7810c0.AbstractC7812b mo115c() {
        return this.f38251c;
    }

    @Override // p238z5.AbstractC7810c0
    /* renamed from: d */
    public AbstractC7810c0.AbstractC7813c mo114d() {
        return this.f38250b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7810c0)) {
            return false;
        }
        AbstractC7810c0 abstractC7810c0 = (AbstractC7810c0) obj;
        return this.f38249a.equals(abstractC7810c0.mo116a()) && this.f38250b.equals(abstractC7810c0.mo114d()) && this.f38251c.equals(abstractC7810c0.mo115c());
    }

    public String toString() {
        return "StaticSessionData{appData=" + this.f38249a + ", osData=" + this.f38250b + ", deviceData=" + this.f38251c + "}";
    }

    public int hashCode() {
        return ((((this.f38249a.hashCode() ^ 1000003) * 1000003) ^ this.f38250b.hashCode()) * 1000003) ^ this.f38251c.hashCode();
    }

    public C7869w(AbstractC7810c0.AbstractC7811a abstractC7811a, AbstractC7810c0.AbstractC7813c abstractC7813c, AbstractC7810c0.AbstractC7812b abstractC7812b) {
        if (abstractC7811a != null) {
            this.f38249a = abstractC7811a;
            if (abstractC7813c != null) {
                this.f38250b = abstractC7813c;
                if (abstractC7812b != null) {
                    this.f38251c = abstractC7812b;
                    return;
                }
                throw new NullPointerException("Null deviceData");
            }
            throw new NullPointerException("Null osData");
        }
        throw new NullPointerException("Null appData");
    }
}
