package p168r4;
/* renamed from: r4.x04 */
/* loaded from: classes2.dex */
public final class x04 {

    /* renamed from: a */
    public final a14 f33405a;

    /* renamed from: b */
    public final a14 f33406b;

    public x04(a14 a14Var, a14 a14Var2) {
        this.f33405a = a14Var;
        this.f33406b = a14Var2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && x04.class == obj.getClass()) {
            x04 x04Var = (x04) obj;
            if (this.f33405a.equals(x04Var.f33405a) && this.f33406b.equals(x04Var.f33406b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f33405a.hashCode() * 31) + this.f33406b.hashCode();
    }

    public final String toString() {
        String obj = this.f33405a.toString();
        String concat = this.f33405a.equals(this.f33406b) ? "" : ", ".concat(this.f33406b.toString());
        StringBuilder sb = new StringBuilder(obj.length() + 2 + concat.length());
        sb.append("[");
        sb.append(obj);
        sb.append(concat);
        sb.append("]");
        return sb.toString();
    }
}
