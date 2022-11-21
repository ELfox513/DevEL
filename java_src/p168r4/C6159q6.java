package p168r4;
/* renamed from: r4.q6 */
/* loaded from: classes2.dex */
public final class C6159q6 {

    /* renamed from: d */
    public static final C6159q6 f29990d = new C6159q6(1.0f, 1.0f);

    /* renamed from: e */
    public static final InterfaceC5674d3<C6159q6> f29991e = C6122p6.f29355a;

    /* renamed from: a */
    public final float f29992a;

    /* renamed from: b */
    public final float f29993b;

    /* renamed from: c */
    public final int f29994c;

    /* renamed from: a */
    public final long m8019a(long j) {
        return j * this.f29994c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6159q6.class == obj.getClass()) {
            C6159q6 c6159q6 = (C6159q6) obj;
            if (this.f29992a == c6159q6.f29992a && this.f29993b == c6159q6.f29993b) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        return C5979lc.m9709a0("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f29992a), Float.valueOf(this.f29993b));
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.f29992a) + 527) * 31) + Float.floatToRawIntBits(this.f29993b);
    }

    public C6159q6(float f, float f2) {
        boolean z;
        if (f > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10374a(z);
        C5903ja.m10374a(f2 > 0.0f);
        this.f29992a = f;
        this.f29993b = f2;
        this.f29994c = Math.round(f * 1000.0f);
    }
}
