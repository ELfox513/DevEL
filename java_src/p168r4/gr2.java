package p168r4;
/* renamed from: r4.gr2 */
/* loaded from: classes2.dex */
public final class gr2 implements er2 {

    /* renamed from: a */
    public final String f24201a;

    public gr2(String str) {
        this.f24201a = str;
    }

    @Override // p168r4.er2
    public final int hashCode() {
        return this.f24201a.hashCode();
    }

    public final String toString() {
        return this.f24201a;
    }

    @Override // p168r4.er2
    public final boolean equals(Object obj) {
        if (!(obj instanceof gr2)) {
            return false;
        }
        return this.f24201a.equals(((gr2) obj).f24201a);
    }
}
