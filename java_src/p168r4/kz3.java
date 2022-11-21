package p168r4;

import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.kz3 */
/* loaded from: classes2.dex */
public final class kz3 {

    /* renamed from: a */
    public final List<byte[]> f26998a;

    /* renamed from: b */
    public final int f26999b;

    /* renamed from: c */
    public final int f27000c;

    /* renamed from: d */
    public final int f27001d;

    /* renamed from: e */
    public final float f27002e;

    /* renamed from: f */
    public final String f27003f;

    public kz3(List<byte[]> list, int i, int i2, int i3, float f, String str) {
        this.f26998a = list;
        this.f26999b = i;
        this.f27000c = i2;
        this.f27001d = i3;
        this.f27002e = f;
        this.f27003f = str;
    }

    /* renamed from: a */
    public static kz3 m9821a(C6423xb c6423xb) {
        String str;
        int i;
        int i2;
        float f;
        try {
            c6423xb.m5400s(4);
            int m5397v = (c6423xb.m5397v() & 3) + 1;
            if (m5397v != 3) {
                ArrayList arrayList = new ArrayList();
                int m5397v2 = c6423xb.m5397v() & 31;
                for (int i3 = 0; i3 < m5397v2; i3++) {
                    arrayList.add(m9820b(c6423xb));
                }
                int m5397v3 = c6423xb.m5397v();
                for (int i4 = 0; i4 < m5397v3; i4++) {
                    arrayList.add(m9820b(c6423xb));
                }
                if (m5397v2 > 0) {
                    C6015mb m9133b = C6053nb.m9133b((byte[]) arrayList.get(0), m5397v, ((byte[]) arrayList.get(0)).length);
                    int i5 = m9133b.f27565e;
                    int i6 = m9133b.f27566f;
                    float f2 = m9133b.f27567g;
                    str = C5977la.m9760a(m9133b.f27561a, m9133b.f27562b, m9133b.f27563c);
                    i = i5;
                    i2 = i6;
                    f = f2;
                } else {
                    str = null;
                    i = -1;
                    i2 = -1;
                    f = 1.0f;
                }
                return new kz3(arrayList, m5397v, i, i2, f, str);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw C5973l6.m9787b("Error parsing AVC config", e);
        }
    }

    /* renamed from: b */
    public static byte[] m9820b(C6423xb c6423xb) {
        int m5396w = c6423xb.m5396w();
        int m5404o = c6423xb.m5404o();
        c6423xb.m5400s(m5396w);
        return C5977la.m9758c(c6423xb.m5402q(), m5404o, m5396w);
    }
}
