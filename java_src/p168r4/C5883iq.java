package p168r4;
/* renamed from: r4.iq */
/* loaded from: classes2.dex */
public final class C5883iq {

    /* renamed from: a */
    public final String f25246a;

    /* renamed from: b */
    public final C5713e5 f25247b;

    /* renamed from: c */
    public final C5713e5 f25248c;

    /* renamed from: d */
    public final int f25249d;

    /* renamed from: e */
    public final int f25250e;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5883iq.class == obj.getClass()) {
            C5883iq c5883iq = (C5883iq) obj;
            if (this.f25249d == c5883iq.f25249d && this.f25250e == c5883iq.f25250e && this.f25246a.equals(c5883iq.f25246a) && this.f25247b.equals(c5883iq.f25247b) && this.f25248c.equals(c5883iq.f25248c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((this.f25249d + 527) * 31) + this.f25250e) * 31) + this.f25246a.hashCode()) * 31) + this.f25247b.hashCode()) * 31) + this.f25248c.hashCode();
    }

    public C5883iq(String str, C5713e5 c5713e5, C5713e5 c5713e52, int i, int i2) {
        boolean z = false;
        if (i != 0) {
            i2 = i2 == 0 ? 0 : i2;
            C5903ja.m10374a(z);
            C5903ja.m10369f(str);
            this.f25246a = str;
            c5713e5.getClass();
            this.f25247b = c5713e5;
            c5713e52.getClass();
            this.f25248c = c5713e52;
            this.f25249d = i;
            this.f25250e = i2;
        }
        z = true;
        C5903ja.m10374a(z);
        C5903ja.m10369f(str);
        this.f25246a = str;
        c5713e5.getClass();
        this.f25247b = c5713e5;
        c5713e52.getClass();
        this.f25248c = c5713e52;
        this.f25249d = i;
        this.f25250e = i2;
    }
}
