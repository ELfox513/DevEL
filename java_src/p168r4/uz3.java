package p168r4;
/* renamed from: r4.uz3 */
/* loaded from: classes2.dex */
public class uz3 implements z04 {

    /* renamed from: a */
    public final long f32508a;

    /* renamed from: b */
    public final long f32509b;

    /* renamed from: c */
    public final int f32510c;

    /* renamed from: d */
    public final long f32511d;

    /* renamed from: e */
    public final int f32512e;

    /* renamed from: f */
    public final long f32513f;

    public uz3(long j, long j2, int i, int i2, boolean z) {
        long m6286f;
        this.f32508a = j;
        this.f32509b = j2;
        this.f32510c = i2 == -1 ? 1 : i2;
        this.f32512e = i;
        if (j == -1) {
            this.f32511d = -1L;
            m6286f = -9223372036854775807L;
        } else {
            this.f32511d = j - j2;
            m6286f = m6286f(j, j2, i);
        }
        this.f32513f = m6286f;
    }

    /* renamed from: f */
    public static long m6286f(long j, long j2, int i) {
        return (Math.max(0L, j - j2) * 8000000) / i;
    }

    @Override // p168r4.z04
    /* renamed from: c */
    public final boolean mo4487c() {
        return this.f32511d != -1;
    }

    /* renamed from: e */
    public final long m6287e(long j) {
        return m6286f(j, this.f32509b, this.f32512e);
    }

    @Override // p168r4.z04
    /* renamed from: g */
    public final long mo4486g() {
        return this.f32513f;
    }

    @Override // p168r4.z04
    /* renamed from: a */
    public final x04 mo4488a(long j) {
        long j2 = this.f32511d;
        if (j2 != -1) {
            int i = this.f32512e;
            long j3 = this.f32510c;
            long j4 = (((i * j) / 8000000) / j3) * j3;
            if (j2 != -1) {
                j4 = Math.min(j4, j2 - j3);
            }
            long max = this.f32509b + Math.max(j4, 0L);
            long m6287e = m6287e(max);
            a14 a14Var = new a14(m6287e, max);
            if (this.f32511d != -1 && m6287e < j) {
                long j5 = max + this.f32510c;
                if (j5 < this.f32508a) {
                    return new x04(a14Var, new a14(m6287e(j5), j5));
                }
            }
            return new x04(a14Var, a14Var);
        }
        a14 a14Var2 = new a14(0L, this.f32509b);
        return new x04(a14Var2, a14Var2);
    }
}
