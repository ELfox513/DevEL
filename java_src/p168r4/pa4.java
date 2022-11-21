package p168r4;
/* renamed from: r4.pa4 */
/* loaded from: classes2.dex */
public final class pa4 {

    /* renamed from: e */
    public static final pa4 f29409e = new pa4(0, 0, 0, 1.0f);

    /* renamed from: f */
    public static final InterfaceC5674d3<pa4> f29410f = o94.f28938a;

    /* renamed from: a */
    public final int f29411a;

    /* renamed from: b */
    public final int f29412b;

    /* renamed from: c */
    public final int f29413c;

    /* renamed from: d */
    public final float f29414d;

    public pa4(int i, int i2, int i3, float f) {
        this.f29411a = i;
        this.f29412b = i2;
        this.f29413c = i3;
        this.f29414d = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof pa4) {
            pa4 pa4Var = (pa4) obj;
            if (this.f29411a == pa4Var.f29411a && this.f29412b == pa4Var.f29412b && this.f29413c == pa4Var.f29413c && this.f29414d == pa4Var.f29414d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.f29411a + 217) * 31) + this.f29412b) * 31) + this.f29413c) * 31) + Float.floatToRawIntBits(this.f29414d);
    }
}
