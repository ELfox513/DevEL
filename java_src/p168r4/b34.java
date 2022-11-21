package p168r4;

import android.util.Log;
/* renamed from: r4.b34 */
/* loaded from: classes2.dex */
public final class b34 implements a34 {

    /* renamed from: a */
    public final long[] f20827a;

    /* renamed from: b */
    public final long[] f20828b;

    /* renamed from: c */
    public final long f20829c;

    /* renamed from: d */
    public final long f20830d;

    public b34(long[] jArr, long[] jArr2, long j, long j2) {
        this.f20827a = jArr;
        this.f20828b = jArr2;
        this.f20829c = j;
        this.f20830d = j2;
    }

    @Override // p168r4.a34
    /* renamed from: b */
    public final long mo4464b() {
        return this.f20830d;
    }

    @Override // p168r4.z04
    /* renamed from: c */
    public final boolean mo4487c() {
        return true;
    }

    @Override // p168r4.a34
    /* renamed from: d */
    public final long mo4463d(long j) {
        return this.f20827a[C5979lc.m9704d(this.f20828b, j, true, true)];
    }

    @Override // p168r4.z04
    /* renamed from: g */
    public final long mo4486g() {
        return this.f20829c;
    }

    /* renamed from: e */
    public static b34 m12870e(long j, long j2, t04 t04Var, C6423xb c6423xb) {
        int i;
        int m5397v;
        c6423xb.m5400s(10);
        int m5423D = c6423xb.m5423D();
        if (m5423D <= 0) {
            return null;
        }
        int i2 = t04Var.f31609d;
        long j3 = m5423D;
        if (i2 >= 32000) {
            i = 1152;
        } else {
            i = 576;
        }
        long m9698h = C5979lc.m9698h(j3, i * 1000000, i2);
        int m5396w = c6423xb.m5396w();
        int m5396w2 = c6423xb.m5396w();
        int m5396w3 = c6423xb.m5396w();
        c6423xb.m5400s(2);
        long j4 = j2 + t04Var.f31608c;
        long[] jArr = new long[m5396w];
        long[] jArr2 = new long[m5396w];
        int i3 = 0;
        long j5 = j2;
        while (i3 < m5396w) {
            int i4 = m5396w2;
            long j6 = j4;
            jArr[i3] = (i3 * m9698h) / m5396w;
            jArr2[i3] = Math.max(j5, j6);
            if (m5396w3 != 1) {
                if (m5396w3 != 2) {
                    if (m5396w3 != 3) {
                        if (m5396w3 != 4) {
                            return null;
                        }
                        m5397v = c6423xb.m5417b();
                    } else {
                        m5397v = c6423xb.m5393z();
                    }
                } else {
                    m5397v = c6423xb.m5396w();
                }
            } else {
                m5397v = c6423xb.m5397v();
            }
            j5 += m5397v * i4;
            i3++;
            j4 = j6;
            m5396w2 = i4;
        }
        if (j != -1 && j != j5) {
            StringBuilder sb = new StringBuilder(67);
            sb.append("VBRI data size mismatch: ");
            sb.append(j);
            sb.append(", ");
            sb.append(j5);
            Log.w("VbriSeeker", sb.toString());
        }
        return new b34(jArr, jArr2, m9698h, j5);
    }

    @Override // p168r4.z04
    /* renamed from: a */
    public final x04 mo4488a(long j) {
        int m9704d = C5979lc.m9704d(this.f20827a, j, true, true);
        a14 a14Var = new a14(this.f20827a[m9704d], this.f20828b[m9704d]);
        if (a14Var.f20342a < j) {
            long[] jArr = this.f20827a;
            if (m9704d != jArr.length - 1) {
                int i = m9704d + 1;
                return new x04(a14Var, new a14(jArr[i], this.f20828b[i]));
            }
        }
        return new x04(a14Var, a14Var);
    }
}
