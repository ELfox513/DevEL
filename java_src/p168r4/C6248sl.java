package p168r4;

import java.util.Collections;
import java.util.List;
/* renamed from: r4.sl */
/* loaded from: classes2.dex */
public final class C6248sl {

    /* renamed from: a */
    public final List<byte[]> f31391a;

    /* renamed from: b */
    public final int f31392b;

    public C6248sl(List<byte[]> list, int i) {
        this.f31391a = list;
        this.f31392b = i;
    }

    /* renamed from: a */
    public static C6248sl m7146a(C5692dl c5692dl) {
        List singletonList;
        try {
            c5692dl.m12113j(21);
            int m12111l = c5692dl.m12111l() & 3;
            int m12111l2 = c5692dl.m12111l();
            int m12116g = c5692dl.m12116g();
            int i = 0;
            for (int i2 = 0; i2 < m12111l2; i2++) {
                c5692dl.m12113j(1);
                int m12110m = c5692dl.m12110m();
                for (int i3 = 0; i3 < m12110m; i3++) {
                    int m12110m2 = c5692dl.m12110m();
                    i += m12110m2 + 4;
                    c5692dl.m12113j(m12110m2);
                }
            }
            c5692dl.m12114i(m12116g);
            byte[] bArr = new byte[i];
            int i4 = 0;
            for (int i5 = 0; i5 < m12111l2; i5++) {
                c5692dl.m12113j(1);
                int m12110m3 = c5692dl.m12110m();
                for (int i6 = 0; i6 < m12110m3; i6++) {
                    int m12110m4 = c5692dl.m12110m();
                    System.arraycopy(C5619bl.f21092a, 0, bArr, i4, 4);
                    int i7 = i4 + 4;
                    System.arraycopy(c5692dl.f22312a, c5692dl.m12116g(), bArr, i7, m12110m4);
                    i4 = i7 + m12110m4;
                    c5692dl.m12113j(m12110m4);
                }
            }
            if (i == 0) {
                singletonList = null;
            } else {
                singletonList = Collections.singletonList(bArr);
            }
            return new C6248sl(singletonList, m12111l + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new C5980ld("Error parsing HEVC config", e);
        }
    }
}
