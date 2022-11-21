package p218x1;
/* renamed from: x1.t */
/* loaded from: classes.dex */
public abstract class AbstractC7232t extends AbstractC7234v {

    /* renamed from: a */
    public final int f36614a;

    @Override // p218x1.AbstractC7234v
    /* renamed from: A */
    public final long mo2061A() {
        return this.f36614a;
    }

    public final boolean equals(Object obj) {
        return obj != null && getClass() == obj.getClass() && this.f36614a == ((AbstractC7232t) obj).f36614a;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: h */
    public final boolean mo2047h() {
        return false;
    }

    public final int hashCode() {
        return this.f36614a;
    }

    @Override // p218x1.AbstractC7234v
    /* renamed from: x */
    public final boolean mo2058x() {
        return true;
    }

    @Override // p218x1.AbstractC7234v
    /* renamed from: z */
    public final int mo2057z() {
        return this.f36614a;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: d */
    public int mo2048d(AbstractC7204a abstractC7204a) {
        int i = ((AbstractC7232t) abstractC7204a).f36614a;
        int i2 = this.f36614a;
        if (i2 < i) {
            return -1;
        }
        if (i2 > i) {
            return 1;
        }
        return 0;
    }

    public AbstractC7232t(int i) {
        this.f36614a = i;
    }
}
