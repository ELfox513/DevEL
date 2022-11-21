package p168r4;
/* renamed from: r4.p64 */
/* loaded from: classes2.dex */
public final class p64 implements qz3 {

    /* renamed from: a */
    public final C5758fc f29374a;

    /* renamed from: b */
    public final C6423xb f29375b = new C6423xb();

    /* renamed from: c */
    public final int f29376c;

    public p64(int i, C5758fc c5758fc, int i2) {
        this.f29376c = i;
        this.f29374a = c5758fc;
    }

    @Override // p168r4.qz3
    /* renamed from: a */
    public final void mo7637a() {
        C6423xb c6423xb = this.f29375b;
        byte[] bArr = C5979lc.f27169f;
        int length = bArr.length;
        c6423xb.m5409j(bArr, 0);
    }

    @Override // p168r4.qz3
    /* renamed from: b */
    public final pz3 mo7636b(b04 b04Var, long j) {
        int m12859a;
        int m12859a2;
        long j2;
        long mo5954p = b04Var.mo5954p();
        int min = (int) Math.min(112800L, b04Var.mo5953q() - mo5954p);
        this.f29375b.m5410i(min);
        ((vz3) b04Var).mo5960i(this.f29375b.m5402q(), 0, min, false);
        C6423xb c6423xb = this.f29375b;
        int m5406m = c6423xb.m5406m();
        long j3 = -1;
        long j4 = -1;
        long j5 = -9223372036854775807L;
        while (c6423xb.m5407l() >= 188 && (m12859a2 = (m12859a = b74.m12859a(c6423xb.m5402q(), c6423xb.m5404o(), m5406m)) + 188) <= m5406m) {
            long m12858b = b74.m12858b(c6423xb, m12859a, this.f29376c);
            if (m12858b != -9223372036854775807L) {
                long m11580e = this.f29374a.m11580e(m12858b);
                if (m11580e > j) {
                    if (j5 == -9223372036854775807L) {
                        return pz3.m8089d(m11580e, mo5954p);
                    }
                    j2 = mo5954p + j4;
                } else if (100000 + m11580e > j) {
                    j2 = mo5954p + m12859a;
                } else {
                    j4 = m12859a;
                    j5 = m11580e;
                }
                return pz3.m8087f(j2);
            }
            c6423xb.m5403p(m12859a2);
            j3 = m12859a2;
        }
        if (j5 != -9223372036854775807L) {
            return pz3.m8088e(j5, mo5954p + j3);
        }
        return pz3.f29866d;
    }
}
