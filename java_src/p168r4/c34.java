package p168r4;

import android.util.Log;
/* renamed from: r4.c34 */
/* loaded from: classes2.dex */
public final class c34 implements a34 {

    /* renamed from: a */
    public final long f21342a;

    /* renamed from: b */
    public final int f21343b;

    /* renamed from: c */
    public final long f21344c;

    /* renamed from: d */
    public final long f21345d;

    /* renamed from: e */
    public final long f21346e;

    /* renamed from: f */
    public final long[] f21347f;

    public c34(long j, int i, long j2, long j3, long[] jArr) {
        this.f21342a = j;
        this.f21343b = i;
        this.f21344c = j2;
        this.f21347f = jArr;
        this.f21345d = j3;
        this.f21346e = j3 != -1 ? j + j3 : -1L;
    }

    @Override // p168r4.a34
    /* renamed from: b */
    public final long mo4464b() {
        return this.f21346e;
    }

    @Override // p168r4.z04
    /* renamed from: c */
    public final boolean mo4487c() {
        return this.f21347f != null;
    }

    /* renamed from: f */
    public final long m12633f(int i) {
        return (this.f21344c * i) / 100;
    }

    @Override // p168r4.z04
    /* renamed from: g */
    public final long mo4486g() {
        return this.f21344c;
    }

    /* renamed from: e */
    public static c34 m12634e(long j, long j2, t04 t04Var, C6423xb c6423xb) {
        int m5417b;
        int i = t04Var.f31612g;
        int i2 = t04Var.f31609d;
        int m5423D = c6423xb.m5423D();
        if ((m5423D & 1) == 1 && (m5417b = c6423xb.m5417b()) != 0) {
            long m9698h = C5979lc.m9698h(m5417b, i * 1000000, i2);
            if ((m5423D & 6) != 6) {
                return new c34(j2, t04Var.f31608c, m9698h, -1L, null);
            }
            long m5425B = c6423xb.m5425B();
            long[] jArr = new long[100];
            for (int i3 = 0; i3 < 100; i3++) {
                jArr[i3] = c6423xb.m5397v();
            }
            if (j != -1) {
                long j3 = j2 + m5425B;
                if (j != j3) {
                    StringBuilder sb = new StringBuilder(67);
                    sb.append("XING data size mismatch: ");
                    sb.append(j);
                    sb.append(", ");
                    sb.append(j3);
                    Log.w("XingSeeker", sb.toString());
                }
            }
            return new c34(j2, t04Var.f31608c, m9698h, m5425B, jArr);
        }
        return null;
    }

    @Override // p168r4.a34
    /* renamed from: d */
    public final long mo4463d(long j) {
        long j2;
        double d;
        long j3 = j - this.f21342a;
        if (mo4487c() && j3 > this.f21343b) {
            long[] jArr = (long[]) C5903ja.m10370e(this.f21347f);
            double d2 = j3;
            Double.isNaN(d2);
            double d3 = this.f21345d;
            Double.isNaN(d3);
            double d4 = (d2 * 256.0d) / d3;
            int m9704d = C5979lc.m9704d(jArr, (long) d4, true, true);
            long m12633f = m12633f(m9704d);
            long j4 = jArr[m9704d];
            int i = m9704d + 1;
            long m12633f2 = m12633f(i);
            if (m9704d == 99) {
                j2 = 256;
            } else {
                j2 = jArr[i];
            }
            if (j4 == j2) {
                d = 0.0d;
            } else {
                double d5 = j4;
                Double.isNaN(d5);
                double d6 = j2 - j4;
                Double.isNaN(d6);
                d = (d4 - d5) / d6;
            }
            double d7 = m12633f2 - m12633f;
            Double.isNaN(d7);
            return m12633f + Math.round(d * d7);
        }
        return 0L;
    }

    @Override // p168r4.z04
    /* renamed from: a */
    public final x04 mo4488a(long j) {
        double d;
        if (!mo4487c()) {
            a14 a14Var = new a14(0L, this.f21342a + this.f21343b);
            return new x04(a14Var, a14Var);
        }
        long m9703d0 = C5979lc.m9703d0(j, 0L, this.f21344c);
        double d2 = m9703d0;
        Double.isNaN(d2);
        double d3 = this.f21344c;
        Double.isNaN(d3);
        double d4 = (d2 * 100.0d) / d3;
        double d5 = 0.0d;
        if (d4 > 0.0d) {
            if (d4 >= 100.0d) {
                d5 = 256.0d;
            } else {
                int i = (int) d4;
                long[] jArr = (long[]) C5903ja.m10370e(this.f21347f);
                double d6 = jArr[i];
                if (i == 99) {
                    d = 256.0d;
                } else {
                    d = jArr[i + 1];
                }
                double d7 = i;
                Double.isNaN(d7);
                Double.isNaN(d6);
                Double.isNaN(d6);
                d5 = d6 + ((d4 - d7) * (d - d6));
            }
        }
        double d8 = this.f21345d;
        Double.isNaN(d8);
        a14 a14Var2 = new a14(m9703d0, this.f21342a + C5979lc.m9703d0(Math.round((d5 / 256.0d) * d8), this.f21343b, this.f21345d - 1));
        return new x04(a14Var2, a14Var2);
    }
}
