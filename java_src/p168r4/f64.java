package p168r4;
/* renamed from: r4.f64 */
/* loaded from: classes2.dex */
public final class f64 implements qz3 {

    /* renamed from: a */
    public final C5758fc f23400a;

    /* renamed from: b */
    public final C6423xb f23401b = new C6423xb();

    public /* synthetic */ f64(C5758fc c5758fc, e64 e64Var) {
        this.f23400a = c5758fc;
    }

    @Override // p168r4.qz3
    /* renamed from: a */
    public final void mo7637a() {
        C6423xb c6423xb = this.f23401b;
        byte[] bArr = C5979lc.f27169f;
        int length = bArr.length;
        c6423xb.m5409j(bArr, 0);
    }

    @Override // p168r4.qz3
    /* renamed from: b */
    public final pz3 mo7636b(b04 b04Var, long j) {
        int m11274h;
        long j2;
        long mo5954p = b04Var.mo5954p();
        int min = (int) Math.min(20000L, b04Var.mo5953q() - mo5954p);
        this.f23401b.m5410i(min);
        ((vz3) b04Var).mo5960i(this.f23401b.m5402q(), 0, min, false);
        C6423xb c6423xb = this.f23401b;
        int i = -1;
        long j3 = -9223372036854775807L;
        int i2 = -1;
        while (c6423xb.m5407l() >= 4) {
            if (g64.m11274h(c6423xb.m5402q(), c6423xb.m5404o()) != 442) {
                c6423xb.m5400s(1);
            } else {
                c6423xb.m5400s(4);
                long m10968e = h64.m10968e(c6423xb);
                if (m10968e != -9223372036854775807L) {
                    long m11580e = this.f23400a.m11580e(m10968e);
                    if (m11580e > j) {
                        if (j3 == -9223372036854775807L) {
                            return pz3.m8089d(m11580e, mo5954p);
                        }
                        j2 = i2;
                    } else if (100000 + m11580e > j) {
                        j2 = c6423xb.m5404o();
                    } else {
                        i2 = c6423xb.m5404o();
                        j3 = m11580e;
                    }
                    return pz3.m8087f(mo5954p + j2);
                }
                int m5406m = c6423xb.m5406m();
                if (c6423xb.m5407l() < 10) {
                    c6423xb.m5403p(m5406m);
                } else {
                    c6423xb.m5400s(9);
                    int m5397v = c6423xb.m5397v() & 7;
                    if (c6423xb.m5407l() < m5397v) {
                        c6423xb.m5403p(m5406m);
                    } else {
                        c6423xb.m5400s(m5397v);
                        if (c6423xb.m5407l() < 4) {
                            c6423xb.m5403p(m5406m);
                        } else {
                            if (g64.m11274h(c6423xb.m5402q(), c6423xb.m5404o()) == 443) {
                                c6423xb.m5400s(4);
                                int m5396w = c6423xb.m5396w();
                                if (c6423xb.m5407l() < m5396w) {
                                    c6423xb.m5403p(m5406m);
                                } else {
                                    c6423xb.m5400s(m5396w);
                                }
                            }
                            while (true) {
                                if (c6423xb.m5407l() < 4 || (m11274h = g64.m11274h(c6423xb.m5402q(), c6423xb.m5404o())) == 442 || m11274h == 441 || (m11274h >>> 8) != 1) {
                                    break;
                                }
                                c6423xb.m5400s(4);
                                if (c6423xb.m5407l() < 2) {
                                    c6423xb.m5403p(m5406m);
                                    break;
                                }
                                c6423xb.m5403p(Math.min(c6423xb.m5406m(), c6423xb.m5404o() + c6423xb.m5396w()));
                            }
                        }
                    }
                }
                i = c6423xb.m5404o();
            }
        }
        if (j3 != -9223372036854775807L) {
            return pz3.m8088e(j3, mo5954p + i);
        }
        return pz3.f29866d;
    }
}
