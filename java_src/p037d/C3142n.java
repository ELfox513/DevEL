package p037d;
/* renamed from: d.n */
/* loaded from: classes.dex */
public class C3142n {

    /* renamed from: d */
    public static C3142n f15430d;

    /* renamed from: a */
    public long f15431a;

    /* renamed from: b */
    public long f15432b;

    /* renamed from: c */
    public int f15433c;

    /* renamed from: a */
    public void m19535a(long j, double d, double d2) {
        float f;
        float f2 = ((float) (j - 946728000000L)) / 8.64E7f;
        double d3 = (0.01720197f * f2) + 6.24006f;
        Double.isNaN(d3);
        double sin = (Math.sin(d3) * 0.03341960161924362d) + d3 + (Math.sin(2.0f * f) * 3.4906598739326E-4d) + (Math.sin(f * 3.0f) * 5.236000106378924E-6d) + 1.796593063d + 3.141592653589793d;
        double d4 = (-d2) / 360.0d;
        double d5 = f2 - 9.0E-4f;
        Double.isNaN(d5);
        double round = ((float) Math.round(d5 - d4)) + 9.0E-4f;
        Double.isNaN(round);
        double sin2 = round + d4 + (Math.sin(d3) * 0.0053d) + (Math.sin(2.0d * sin) * (-0.0069d));
        double asin = Math.asin(Math.sin(sin) * Math.sin(0.4092797040939331d));
        double d6 = 0.01745329238474369d * d;
        double sin3 = (Math.sin(-0.10471975803375244d) - (Math.sin(d6) * Math.sin(asin))) / (Math.cos(d6) * Math.cos(asin));
        if (sin3 >= 1.0d) {
            this.f15433c = 1;
            this.f15431a = -1L;
            this.f15432b = -1L;
        } else if (sin3 <= -1.0d) {
            this.f15433c = 0;
            this.f15431a = -1L;
            this.f15432b = -1L;
        } else {
            double acos = (float) (Math.acos(sin3) / 6.283185307179586d);
            Double.isNaN(acos);
            this.f15431a = Math.round((sin2 + acos) * 8.64E7d) + 946728000000L;
            Double.isNaN(acos);
            long round2 = Math.round((sin2 - acos) * 8.64E7d) + 946728000000L;
            this.f15432b = round2;
            if (round2 < j && this.f15431a > j) {
                this.f15433c = 0;
            } else {
                this.f15433c = 1;
            }
        }
    }

    /* renamed from: b */
    public static C3142n m19534b() {
        if (f15430d == null) {
            f15430d = new C3142n();
        }
        return f15430d;
    }
}
