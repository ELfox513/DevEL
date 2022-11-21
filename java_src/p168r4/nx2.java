package p168r4;
/* renamed from: r4.nx2 */
/* loaded from: classes2.dex */
public final class nx2 extends jx2 {

    /* renamed from: a */
    public final String f28708a;

    /* renamed from: b */
    public final boolean f28709b;

    /* renamed from: c */
    public final boolean f28710c;

    public /* synthetic */ nx2(String str, boolean z, boolean z2, mx2 mx2Var) {
        this.f28708a = str;
        this.f28709b = z;
        this.f28710c = z2;
    }

    @Override // p168r4.jx2
    /* renamed from: a */
    public final String mo8979a() {
        return this.f28708a;
    }

    @Override // p168r4.jx2
    /* renamed from: b */
    public final boolean mo8978b() {
        return this.f28709b;
    }

    @Override // p168r4.jx2
    /* renamed from: c */
    public final boolean mo8977c() {
        return this.f28710c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof jx2) {
            jx2 jx2Var = (jx2) obj;
            if (this.f28708a.equals(jx2Var.mo8979a()) && this.f28709b == jx2Var.mo8978b() && this.f28710c == jx2Var.mo8977c()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f28708a.hashCode() ^ 1000003) * 1000003) ^ (true != this.f28709b ? 1237 : 1231)) * 1000003) ^ (true == this.f28710c ? 1231 : 1237);
    }

    public final String toString() {
        String str = this.f28708a;
        boolean z = this.f28709b;
        boolean z2 = this.f28710c;
        StringBuilder sb = new StringBuilder(str.length() + 99);
        sb.append("AdShield2Options{clientVersion=");
        sb.append(str);
        sb.append(", shouldGetAdvertisingId=");
        sb.append(z);
        sb.append(", isGooglePlayServicesAvailable=");
        sb.append(z2);
        sb.append("}");
        return sb.toString();
    }
}
