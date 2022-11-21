package p168r4;

import java.util.Arrays;
/* renamed from: r4.k04 */
/* loaded from: classes2.dex */
public final class k04 {
    /* renamed from: a */
    public static C5901j8 m10119a(b04 b04Var, boolean z) {
        InterfaceC5902j9 interfaceC5902j9;
        if (z) {
            interfaceC5902j9 = null;
        } else {
            interfaceC5902j9 = C5976l9.f27133a;
        }
        C5901j8 m7628a = new r04().m7628a(b04Var, interfaceC5902j9);
        if (m7628a == null || m7628a.m10388a() == 0) {
            return null;
        }
        return m7628a;
    }

    /* renamed from: b */
    public static m04 m10118b(C6423xb c6423xb) {
        c6423xb.m5400s(1);
        int m5393z = c6423xb.m5393z();
        long m5404o = c6423xb.m5404o() + m5393z;
        int i = m5393z / 18;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            long m5421F = c6423xb.m5421F();
            if (m5421F == -1) {
                jArr = Arrays.copyOf(jArr, i2);
                jArr2 = Arrays.copyOf(jArr2, i2);
                break;
            }
            jArr[i2] = m5421F;
            jArr2[i2] = c6423xb.m5421F();
            c6423xb.m5400s(2);
            i2++;
        }
        c6423xb.m5400s((int) (m5404o - c6423xb.m5404o()));
        return new m04(jArr, jArr2);
    }
}
