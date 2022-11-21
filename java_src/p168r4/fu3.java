package p168r4;
/* renamed from: r4.fu3 */
/* loaded from: classes2.dex */
public final class fu3 {

    /* renamed from: a */
    public final int f23674a;

    /* renamed from: b */
    public final boolean f23675b;

    public fu3(int i, boolean z) {
        this.f23674a = i;
        this.f23675b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && fu3.class == obj.getClass()) {
            fu3 fu3Var = (fu3) obj;
            if (this.f23674a == fu3Var.f23674a && this.f23675b == fu3Var.f23675b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f23674a * 31) + (this.f23675b ? 1 : 0);
    }
}
