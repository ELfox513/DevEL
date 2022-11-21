package p168r4;
/* renamed from: r4.lx2 */
/* loaded from: classes2.dex */
public final class lx2 extends ix2 {

    /* renamed from: a */
    public String f27413a;

    /* renamed from: b */
    public Boolean f27414b;

    /* renamed from: c */
    public Boolean f27415c;

    @Override // p168r4.ix2
    /* renamed from: a */
    public final ix2 mo9541a(String str) {
        if (str != null) {
            this.f27413a = str;
            return this;
        }
        throw new NullPointerException("Null clientVersion");
    }

    @Override // p168r4.ix2
    /* renamed from: b */
    public final ix2 mo9540b(boolean z) {
        this.f27414b = Boolean.valueOf(z);
        return this;
    }

    @Override // p168r4.ix2
    /* renamed from: c */
    public final ix2 mo9539c(boolean z) {
        this.f27415c = Boolean.TRUE;
        return this;
    }

    @Override // p168r4.ix2
    /* renamed from: d */
    public final jx2 mo9538d() {
        Boolean bool;
        String str = this.f27413a;
        if (str != null && (bool = this.f27414b) != null && this.f27415c != null) {
            return new nx2(str, bool.booleanValue(), this.f27415c.booleanValue(), null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f27413a == null) {
            sb.append(" clientVersion");
        }
        if (this.f27414b == null) {
            sb.append(" shouldGetAdvertisingId");
        }
        if (this.f27415c == null) {
            sb.append(" isGooglePlayServicesAvailable");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
