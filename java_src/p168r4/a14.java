package p168r4;
/* renamed from: r4.a14 */
/* loaded from: classes2.dex */
public final class a14 {

    /* renamed from: c */
    public static final a14 f20341c = new a14(0, 0);

    /* renamed from: a */
    public final long f20342a;

    /* renamed from: b */
    public final long f20343b;

    public a14(long j, long j2) {
        this.f20342a = j;
        this.f20343b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && a14.class == obj.getClass()) {
            a14 a14Var = (a14) obj;
            if (this.f20342a == a14Var.f20342a && this.f20343b == a14Var.f20343b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f20342a) * 31) + ((int) this.f20343b);
    }

    public final String toString() {
        long j = this.f20342a;
        long j2 = this.f20343b;
        StringBuilder sb = new StringBuilder(60);
        sb.append("[timeUs=");
        sb.append(j);
        sb.append(", position=");
        sb.append(j2);
        sb.append("]");
        return sb.toString();
    }
}
