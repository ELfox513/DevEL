package p168r4;

import android.os.SystemClock;
/* renamed from: r4.g3 */
/* loaded from: classes2.dex */
public final class C5786g3 {

    /* renamed from: a */
    public final long f23844a;

    /* renamed from: b */
    public final long f23845b;

    /* renamed from: c */
    public long f23846c = -9223372036854775807L;

    /* renamed from: d */
    public long f23847d = -9223372036854775807L;

    /* renamed from: f */
    public long f23849f = -9223372036854775807L;

    /* renamed from: g */
    public long f23850g = -9223372036854775807L;

    /* renamed from: j */
    public float f23853j = 0.97f;

    /* renamed from: i */
    public float f23852i = 1.03f;

    /* renamed from: k */
    public float f23854k = 1.0f;

    /* renamed from: l */
    public long f23855l = -9223372036854775807L;

    /* renamed from: e */
    public long f23848e = -9223372036854775807L;

    /* renamed from: h */
    public long f23851h = -9223372036854775807L;

    /* renamed from: m */
    public long f23856m = -9223372036854775807L;

    /* renamed from: n */
    public long f23857n = -9223372036854775807L;

    public /* synthetic */ C5786g3(float f, float f2, long j, float f3, long j2, long j3, float f4, C5749f3 c5749f3) {
        this.f23844a = j2;
        this.f23845b = j3;
    }

    /* renamed from: g */
    public static long m11301g(long j, long j2, float f) {
        return (((float) j) * 0.999f) + (((float) j2) * 9.999871E-4f);
    }

    /* renamed from: b */
    public final void m11306b(long j) {
        this.f23847d = j;
        m11302f();
    }

    /* renamed from: c */
    public final void m11305c() {
        long j = this.f23851h;
        if (j == -9223372036854775807L) {
            return;
        }
        long j2 = j + this.f23845b;
        this.f23851h = j2;
        long j3 = this.f23850g;
        if (j3 != -9223372036854775807L && j2 > j3) {
            this.f23851h = j3;
        }
        this.f23855l = -9223372036854775807L;
    }

    /* renamed from: e */
    public final long m11303e() {
        return this.f23851h;
    }

    /* renamed from: f */
    public final void m11302f() {
        long j = this.f23846c;
        if (j != -9223372036854775807L) {
            long j2 = this.f23847d;
            if (j2 != -9223372036854775807L) {
                j = j2;
            }
            long j3 = this.f23849f;
            if (j3 != -9223372036854775807L && j < j3) {
                j = j3;
            }
            long j4 = this.f23850g;
            if (j4 != -9223372036854775807L && j > j4) {
                j = j4;
            }
        } else {
            j = -9223372036854775807L;
        }
        if (this.f23848e == j) {
            return;
        }
        this.f23848e = j;
        this.f23851h = j;
        this.f23856m = -9223372036854775807L;
        this.f23857n = -9223372036854775807L;
        this.f23855l = -9223372036854775807L;
    }

    /* renamed from: a */
    public final void m11307a(C6195r5 c6195r5) {
        long j = c6195r5.f30449a;
        this.f23846c = C5711e3.m11871b(-9223372036854775807L);
        this.f23849f = C5711e3.m11871b(-9223372036854775807L);
        this.f23850g = C5711e3.m11871b(-9223372036854775807L);
        this.f23853j = 0.97f;
        this.f23852i = 1.03f;
        m11302f();
    }

    /* renamed from: d */
    public final float m11304d(long j, long j2) {
        if (this.f23846c != -9223372036854775807L) {
            long j3 = j - j2;
            long j4 = this.f23856m;
            if (j4 == -9223372036854775807L) {
                this.f23856m = j3;
                this.f23857n = 0L;
            } else {
                long max = Math.max(j3, m11301g(j4, j3, 0.999f));
                this.f23856m = max;
                this.f23857n = m11301g(this.f23857n, Math.abs(j3 - max), 0.999f);
            }
            if (this.f23855l != -9223372036854775807L && SystemClock.elapsedRealtime() - this.f23855l < 1000) {
                return this.f23854k;
            }
            this.f23855l = SystemClock.elapsedRealtime();
            long j5 = this.f23856m + (this.f23857n * 3);
            if (this.f23851h > j5) {
                float m11871b = (float) C5711e3.m11871b(1000L);
                long[] jArr = {j5, this.f23848e, this.f23851h - (((this.f23854k - 1.0f) * m11871b) + ((this.f23852i - 1.0f) * m11871b))};
                for (int i = 1; i < 3; i++) {
                    long j6 = jArr[i];
                    if (j6 > j5) {
                        j5 = j6;
                    }
                }
                this.f23851h = j5;
            } else {
                j5 = C5979lc.m9703d0(j - (Math.max(0.0f, this.f23854k - 1.0f) / 1.0E-7f), this.f23851h, j5);
                this.f23851h = j5;
                long j7 = this.f23850g;
                if (j7 != -9223372036854775807L && j5 > j7) {
                    this.f23851h = j7;
                    j5 = j7;
                }
            }
            long j8 = j - j5;
            if (Math.abs(j8) < this.f23844a) {
                this.f23854k = 1.0f;
                return 1.0f;
            }
            float m9701e0 = C5979lc.m9701e0((((float) j8) * 1.0E-7f) + 1.0f, this.f23853j, this.f23852i);
            this.f23854k = m9701e0;
            return m9701e0;
        }
        return 1.0f;
    }
}
