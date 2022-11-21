package p168r4;
/* renamed from: r4.md */
/* loaded from: classes2.dex */
public final class C6017md {

    /* renamed from: d */
    public static final C6017md f27578d = new C6017md(1.0f, 1.0f);

    /* renamed from: a */
    public final float f27579a;

    /* renamed from: b */
    public final float f27580b = 1.0f;

    /* renamed from: c */
    public final int f27581c;

    public C6017md(float f, float f2) {
        this.f27579a = f;
        this.f27581c = Math.round(f * 1000.0f);
    }

    /* renamed from: a */
    public final long m9408a(long j) {
        return j * this.f27581c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C6017md.class == obj.getClass() && this.f27579a == ((C6017md) obj).f27579a;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.f27579a) + 527) * 31) + Float.floatToRawIntBits(1.0f);
    }
}
