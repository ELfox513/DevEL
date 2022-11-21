package p168r4;

import android.util.Log;
/* renamed from: r4.sz3 */
/* loaded from: classes2.dex */
public final class sz3 {
    /* renamed from: c */
    public static int m6943c(C6423xb c6423xb) {
        int i = 0;
        while (c6423xb.m5407l() != 0) {
            int m5397v = c6423xb.m5397v();
            i += m5397v;
            if (m5397v != 255) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static void m6945a(long j, C6423xb c6423xb, d14[] d14VarArr) {
        int i;
        boolean z;
        while (true) {
            boolean z2 = true;
            if (c6423xb.m5407l() > 1) {
                int m6943c = m6943c(c6423xb);
                int m6943c2 = m6943c(c6423xb);
                int m5404o = c6423xb.m5404o() + m6943c2;
                if (m6943c2 != -1 && m6943c2 <= c6423xb.m5407l()) {
                    if (m6943c == 4 && m6943c2 >= 8) {
                        int m5397v = c6423xb.m5397v();
                        int m5396w = c6423xb.m5396w();
                        if (m5396w == 49) {
                            i = c6423xb.m5423D();
                            m5396w = 49;
                        } else {
                            i = 0;
                        }
                        int m5397v2 = c6423xb.m5397v();
                        if (m5396w == 47) {
                            c6423xb.m5400s(1);
                            m5396w = 47;
                        }
                        if (m5397v == 181 && ((m5396w == 49 || m5396w == 47) && m5397v2 == 3)) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (m5396w == 49) {
                            if (i != 1195456820) {
                                z2 = false;
                            }
                            z &= z2;
                        }
                        if (z) {
                            m6944b(j, c6423xb, d14VarArr);
                        }
                    }
                } else {
                    Log.w("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                    m5404o = c6423xb.m5406m();
                }
                c6423xb.m5403p(m5404o);
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public static void m6944b(long j, C6423xb c6423xb, d14[] d14VarArr) {
        int m5397v = c6423xb.m5397v();
        if ((m5397v & 64) != 0) {
            c6423xb.m5400s(1);
            int i = (m5397v & 31) * 3;
            int m5404o = c6423xb.m5404o();
            for (d14 d14Var : d14VarArr) {
                c6423xb.m5403p(m5404o);
                d14Var.mo4009a(c6423xb, i);
                if (j != -9223372036854775807L) {
                    d14Var.mo4005e(j, 1, i, 0, null);
                }
            }
        }
    }
}
