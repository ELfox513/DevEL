package p168r4;

import android.util.Pair;
/* renamed from: r4.wk */
/* loaded from: classes2.dex */
public final class C6395wk {

    /* renamed from: a */
    public static final byte[] f33209a = {0, 0, 0, 1};

    /* renamed from: b */
    public static final int[] f33210b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: c */
    public static final int[] f33211c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* renamed from: c */
    public static int m5704c(C5655cl c5655cl) {
        int m12443a = c5655cl.m12443a(5);
        if (m12443a == 31) {
            return c5655cl.m12443a(6) + 32;
        }
        return m12443a;
    }

    /* renamed from: d */
    public static int m5703d(C5655cl c5655cl) {
        boolean z;
        int m12443a = c5655cl.m12443a(4);
        if (m12443a == 15) {
            return c5655cl.m12443a(24);
        }
        if (m12443a < 13) {
            z = true;
        } else {
            z = false;
        }
        C6358vk.m6140a(z);
        return f33210b[m12443a];
    }

    /* renamed from: a */
    public static Pair<Integer, Integer> m5706a(byte[] bArr) {
        boolean z;
        C5655cl c5655cl = new C5655cl(bArr, bArr.length);
        int m5704c = m5704c(c5655cl);
        int m5703d = m5703d(c5655cl);
        int m12443a = c5655cl.m12443a(4);
        if (m5704c == 5 || m5704c == 29) {
            m5703d = m5703d(c5655cl);
            if (m5704c(c5655cl) == 22) {
                m12443a = c5655cl.m12443a(4);
            }
        }
        int i = f33211c[m12443a];
        if (i != -1) {
            z = true;
        } else {
            z = false;
        }
        C6358vk.m6140a(z);
        return Pair.create(Integer.valueOf(m5703d), Integer.valueOf(i));
    }

    /* renamed from: b */
    public static byte[] m5705b(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2 + 4];
        System.arraycopy(f33209a, 0, bArr2, 0, 4);
        System.arraycopy(bArr, i, bArr2, 4, i2);
        return bArr2;
    }
}
