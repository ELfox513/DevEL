package p203v3;
/* renamed from: v3.i */
/* loaded from: classes.dex */
public final class C7017i<L> {

    /* renamed from: a */
    public final L f35973a;

    /* renamed from: b */
    public final String f35974b;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7017i)) {
            return false;
        }
        C7017i c7017i = (C7017i) obj;
        return this.f35973a == c7017i.f35973a && this.f35974b.equals(c7017i.f35974b);
    }

    public int hashCode() {
        return (System.identityHashCode(this.f35973a) * 31) + this.f35974b.hashCode();
    }
}
