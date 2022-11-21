package p076h2;

import java.util.List;
/* renamed from: h2.d */
/* loaded from: classes.dex */
public final class C3957d extends AbstractC3971j {

    /* renamed from: a */
    public final List<AbstractC3977m> f17317a;

    @Override // p076h2.AbstractC3971j
    /* renamed from: c */
    public List<AbstractC3977m> mo17656c() {
        return this.f17317a;
    }

    public int hashCode() {
        return this.f17317a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f17317a + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC3971j) {
            return this.f17317a.equals(((AbstractC3971j) obj).mo17656c());
        }
        return false;
    }

    public C3957d(List<AbstractC3977m> list) {
        if (list != null) {
            this.f17317a = list;
            return;
        }
        throw new NullPointerException("Null logRequests");
    }
}
