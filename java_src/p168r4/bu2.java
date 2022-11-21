package p168r4;
/* renamed from: r4.bu2 */
/* loaded from: classes2.dex */
public final class bu2 {

    /* renamed from: a */
    public final String f21224a;

    /* renamed from: b */
    public final String f21225b;

    public bu2(String str, String str2) {
        this.f21224a = str;
        this.f21225b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bu2)) {
            return false;
        }
        bu2 bu2Var = (bu2) obj;
        return this.f21224a.equals(bu2Var.f21224a) && this.f21225b.equals(bu2Var.f21225b);
    }

    public final int hashCode() {
        String valueOf = String.valueOf(this.f21224a);
        String valueOf2 = String.valueOf(this.f21225b);
        return (valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)).hashCode();
    }
}
