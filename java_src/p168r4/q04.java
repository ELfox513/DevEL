package p168r4;

import java.util.Collections;
import java.util.List;
/* renamed from: r4.q04 */
/* loaded from: classes2.dex */
public final class q04 {

    /* renamed from: a */
    public final List<byte[]> f29878a;

    /* renamed from: b */
    public final int f29879b;

    /* renamed from: c */
    public final String f29880c;

    public q04(List<byte[]> list, int i, String str) {
        this.f29878a = list;
        this.f29879b = i;
        this.f29880c = str;
    }

    /* renamed from: a */
    public static q04 m8077a(C6423xb c6423xb) {
        List singletonList;
        try {
            c6423xb.m5400s(21);
            int m5397v = c6423xb.m5397v() & 3;
            int m5397v2 = c6423xb.m5397v();
            int m5404o = c6423xb.m5404o();
            int i = 0;
            for (int i2 = 0; i2 < m5397v2; i2++) {
                c6423xb.m5400s(1);
                int m5396w = c6423xb.m5396w();
                for (int i3 = 0; i3 < m5396w; i3++) {
                    int m5396w2 = c6423xb.m5396w();
                    i += m5396w2 + 4;
                    c6423xb.m5400s(m5396w2);
                }
            }
            c6423xb.m5403p(m5404o);
            byte[] bArr = new byte[i];
            String str = null;
            int i4 = 0;
            for (int i5 = 0; i5 < m5397v2; i5++) {
                int m5397v3 = c6423xb.m5397v() & 127;
                int m5396w3 = c6423xb.m5396w();
                int i6 = 0;
                while (i6 < m5396w3) {
                    int m5396w4 = c6423xb.m5396w();
                    System.arraycopy(C6053nb.f28240a, 0, bArr, i4, 4);
                    int i7 = i4 + 4;
                    System.arraycopy(c6423xb.m5402q(), c6423xb.m5404o(), bArr, i7, m5396w4);
                    if (m5397v3 == 33 && i6 == 0) {
                        str = C5977la.m9759b(new C6460yb(bArr, i7, i7 + m5396w4));
                        i6 = 0;
                    }
                    i4 = i7 + m5396w4;
                    c6423xb.m5400s(m5396w4);
                    i6++;
                }
            }
            if (i == 0) {
                singletonList = null;
            } else {
                singletonList = Collections.singletonList(bArr);
            }
            return new q04(singletonList, m5397v + 1, str);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw C5973l6.m9787b("Error parsing HEVC config", e);
        }
    }
}
