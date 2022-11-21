package p168r4;

import java.util.Arrays;
/* renamed from: r4.d51 */
/* loaded from: classes2.dex */
public final class d51 {

    /* renamed from: a */
    public final long f22088a;

    /* renamed from: b */
    public final AbstractC5717e8 f22089b;

    /* renamed from: c */
    public final int f22090c;

    /* renamed from: d */
    public final ft3 f22091d;

    /* renamed from: e */
    public final long f22092e;

    /* renamed from: f */
    public final AbstractC5717e8 f22093f;

    /* renamed from: g */
    public final int f22094g;

    /* renamed from: h */
    public final ft3 f22095h;

    /* renamed from: i */
    public final long f22096i;

    /* renamed from: j */
    public final long f22097j;

    public d51(long j, AbstractC5717e8 abstractC5717e8, int i, ft3 ft3Var, long j2, AbstractC5717e8 abstractC5717e82, int i2, ft3 ft3Var2, long j3, long j4) {
        this.f22088a = j;
        this.f22089b = abstractC5717e8;
        this.f22090c = i;
        this.f22091d = ft3Var;
        this.f22092e = j2;
        this.f22093f = abstractC5717e82;
        this.f22094g = i2;
        this.f22095h = ft3Var2;
        this.f22096i = j3;
        this.f22097j = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && d51.class == obj.getClass()) {
            d51 d51Var = (d51) obj;
            if (this.f22088a == d51Var.f22088a && this.f22090c == d51Var.f22090c && this.f22092e == d51Var.f22092e && this.f22094g == d51Var.f22094g && this.f22096i == d51Var.f22096i && this.f22097j == d51Var.f22097j && v03.m6257a(this.f22089b, d51Var.f22089b) && v03.m6257a(this.f22091d, d51Var.f22091d) && v03.m6257a(this.f22093f, d51Var.f22093f) && v03.m6257a(this.f22095h, d51Var.f22095h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f22088a), this.f22089b, Integer.valueOf(this.f22090c), this.f22091d, Long.valueOf(this.f22092e), this.f22093f, Integer.valueOf(this.f22094g), this.f22095h, Long.valueOf(this.f22096i), Long.valueOf(this.f22097j)});
    }
}
