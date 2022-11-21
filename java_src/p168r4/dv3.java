package p168r4;
/* renamed from: r4.dv3 */
/* loaded from: classes2.dex */
public final class dv3 {

    /* renamed from: a */
    public final long f22657a;

    /* renamed from: b */
    public final long f22658b;

    public dv3(long j, long j2) {
        this.f22657a = j;
        this.f22658b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dv3)) {
            return false;
        }
        dv3 dv3Var = (dv3) obj;
        return this.f22657a == dv3Var.f22657a && this.f22658b == dv3Var.f22658b;
    }

    public final int hashCode() {
        return (((int) this.f22657a) * 31) + ((int) this.f22658b);
    }
}
