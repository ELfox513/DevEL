package p168r4;

import android.util.Pair;
/* renamed from: r4.v24 */
/* loaded from: classes2.dex */
public final class v24 implements a34 {

    /* renamed from: a */
    public final long[] f32557a;

    /* renamed from: b */
    public final long[] f32558b;

    /* renamed from: c */
    public final long f32559c;

    public v24(long[] jArr, long[] jArr2, long j) {
        this.f32557a = jArr;
        this.f32558b = jArr2;
        this.f32559c = j == -9223372036854775807L ? C5711e3.m11871b(jArr2[jArr2.length - 1]) : j;
    }

    /* renamed from: f */
    public static Pair<Long, Long> m6238f(long j, long[] jArr, long[] jArr2) {
        double d;
        int m9704d = C5979lc.m9704d(jArr, j, true, true);
        long j2 = jArr[m9704d];
        long j3 = jArr2[m9704d];
        int i = m9704d + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        long j5 = jArr2[i];
        if (j4 == j2) {
            d = 0.0d;
        } else {
            double d2 = j;
            double d3 = j2;
            Double.isNaN(d2);
            Double.isNaN(d3);
            double d4 = j4 - j2;
            Double.isNaN(d4);
            d = (d2 - d3) / d4;
        }
        Long valueOf = Long.valueOf(j);
        double d5 = j5 - j3;
        Double.isNaN(d5);
        return Pair.create(valueOf, Long.valueOf(((long) (d * d5)) + j3));
    }

    @Override // p168r4.a34
    /* renamed from: b */
    public final long mo4464b() {
        return -1L;
    }

    @Override // p168r4.z04
    /* renamed from: c */
    public final boolean mo4487c() {
        return true;
    }

    @Override // p168r4.z04
    /* renamed from: g */
    public final long mo4486g() {
        return this.f32559c;
    }

    /* renamed from: e */
    public static v24 m6239e(long j, C6199r9 c6199r9, long j2) {
        int length = c6199r9.f30505p.length;
        int i = length + 1;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        jArr[0] = j;
        long j3 = 0;
        jArr2[0] = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            int i3 = i2 - 1;
            j += c6199r9.f30503d + c6199r9.f30505p[i3];
            j3 += c6199r9.f30504k + c6199r9.f30506q[i3];
            jArr[i2] = j;
            jArr2[i2] = j3;
        }
        return new v24(jArr, jArr2, j2);
    }

    @Override // p168r4.z04
    /* renamed from: a */
    public final x04 mo4488a(long j) {
        Pair<Long, Long> m6238f = m6238f(C5711e3.m11872a(C5979lc.m9703d0(j, 0L, this.f32559c)), this.f32558b, this.f32557a);
        a14 a14Var = new a14(C5711e3.m11871b(((Long) m6238f.first).longValue()), ((Long) m6238f.second).longValue());
        return new x04(a14Var, a14Var);
    }

    @Override // p168r4.a34
    /* renamed from: d */
    public final long mo4463d(long j) {
        return C5711e3.m11871b(((Long) m6238f(j, this.f32557a, this.f32558b).second).longValue());
    }
}
