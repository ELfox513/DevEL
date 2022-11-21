package p168r4;
/* renamed from: r4.u5 */
/* loaded from: classes2.dex */
public final class C6306u5 {

    /* renamed from: f */
    public static final C6306u5 f32173f = new C5972l5().m9791c();

    /* renamed from: g */
    public static final InterfaceC5674d3<C6306u5> f32174g = C5862i5.f24968a;

    /* renamed from: a */
    public final String f32175a;

    /* renamed from: b */
    public final C6269t5 f32176b;

    /* renamed from: c */
    public final C6195r5 f32177c;

    /* renamed from: d */
    public final C6454y5 f32178d;

    /* renamed from: e */
    public final C6046n5 f32179e;

    public /* synthetic */ C6306u5(String str, C6046n5 c6046n5, C6269t5 c6269t5, C6195r5 c6195r5, C6454y5 c6454y5, C6232s5 c6232s5) {
        this.f32175a = str;
        this.f32176b = c6269t5;
        this.f32177c = c6195r5;
        this.f32178d = c6454y5;
        this.f32179e = c6046n5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6306u5)) {
            return false;
        }
        C6306u5 c6306u5 = (C6306u5) obj;
        return C5979lc.m9729H(this.f32175a, c6306u5.f32175a) && this.f32179e.equals(c6306u5.f32179e) && C5979lc.m9729H(this.f32176b, c6306u5.f32176b) && C5979lc.m9729H(this.f32177c, c6306u5.f32177c) && C5979lc.m9729H(this.f32178d, c6306u5.f32178d);
    }

    public final int hashCode() {
        int i;
        int hashCode = this.f32175a.hashCode() * 31;
        C6269t5 c6269t5 = this.f32176b;
        if (c6269t5 != null) {
            i = c6269t5.hashCode();
        } else {
            i = 0;
        }
        return ((((((hashCode + i) * 31) + this.f32177c.hashCode()) * 31) + this.f32179e.hashCode()) * 31) + this.f32178d.hashCode();
    }
}
