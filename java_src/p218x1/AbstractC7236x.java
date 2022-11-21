package p218x1;

import net.bytebuddy.pool.TypePool;
/* renamed from: x1.x */
/* loaded from: classes.dex */
public abstract class AbstractC7236x extends AbstractC7218g0 {

    /* renamed from: a */
    public final C7214e0 f36618a;

    /* renamed from: b */
    public final C7205a0 f36619b;

    public final boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AbstractC7236x abstractC7236x = (AbstractC7236x) obj;
        return this.f36618a.equals(abstractC7236x.f36618a) && this.f36619b.equals(abstractC7236x.f36619b);
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: h */
    public final boolean mo2047h() {
        return false;
    }

    public final int hashCode() {
        return (this.f36618a.hashCode() * 31) ^ this.f36619b.hashCode();
    }

    /* renamed from: n */
    public final C7214e0 m2054n() {
        return this.f36618a;
    }

    @Override // p015b2.InterfaceC0450r
    public final String toHuman() {
        return this.f36618a.toHuman() + TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH + this.f36619b.toHuman();
    }

    public final String toString() {
        return mo2042j() + '{' + toHuman() + '}';
    }

    /* renamed from: u */
    public final C7205a0 m2053u() {
        return this.f36619b;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: d */
    public int mo2048d(AbstractC7204a abstractC7204a) {
        AbstractC7236x abstractC7236x = (AbstractC7236x) abstractC7204a;
        int compareTo = this.f36618a.compareTo(abstractC7236x.f36618a);
        if (compareTo != 0) {
            return compareTo;
        }
        return this.f36619b.m2128x().compareTo(abstractC7236x.f36619b.m2128x());
    }

    public AbstractC7236x(C7214e0 c7214e0, C7205a0 c7205a0) {
        if (c7214e0 != null) {
            if (c7205a0 != null) {
                this.f36618a = c7214e0;
                this.f36619b = c7205a0;
                return;
            }
            throw new NullPointerException("nat == null");
        }
        throw new NullPointerException("definingClass == null");
    }
}
