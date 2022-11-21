package p218x1;
/* renamed from: x1.u */
/* loaded from: classes.dex */
public abstract class AbstractC7233u extends AbstractC7234v {

    /* renamed from: a */
    public final long f36615a;

    @Override // p218x1.AbstractC7234v
    /* renamed from: A */
    public final long mo2061A() {
        return this.f36615a;
    }

    public final boolean equals(Object obj) {
        return obj != null && getClass() == obj.getClass() && this.f36615a == ((AbstractC7233u) obj).f36615a;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: h */
    public final boolean mo2047h() {
        return true;
    }

    public final int hashCode() {
        long j = this.f36615a;
        return ((int) j) ^ ((int) (j >> 32));
    }

    @Override // p218x1.AbstractC7234v
    /* renamed from: x */
    public final boolean mo2058x() {
        long j = this.f36615a;
        return ((long) ((int) j)) == j;
    }

    @Override // p218x1.AbstractC7234v
    /* renamed from: z */
    public final int mo2057z() {
        return (int) this.f36615a;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: d */
    public int mo2048d(AbstractC7204a abstractC7204a) {
        long j = ((AbstractC7233u) abstractC7204a).f36615a;
        long j2 = this.f36615a;
        if (j2 < j) {
            return -1;
        }
        if (j2 > j) {
            return 1;
        }
        return 0;
    }

    public AbstractC7233u(long j) {
        this.f36615a = j;
    }
}
