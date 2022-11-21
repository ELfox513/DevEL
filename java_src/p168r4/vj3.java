package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.util.Arrays;
/* renamed from: r4.vj3 */
/* loaded from: classes2.dex */
public final class vj3 {
    /* renamed from: b */
    public static long m6143b(byte[] bArr, int i) {
        return (((bArr[i + 3] & DefaultClassResolver.NAME) << 24) | (bArr[i] & DefaultClassResolver.NAME) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 8) | ((bArr[i + 2] & DefaultClassResolver.NAME) << 16)) & 4294967295L;
    }

    /* renamed from: c */
    public static long m6142c(byte[] bArr, int i, int i2) {
        return (m6143b(bArr, i) >> i2) & 67108863;
    }

    /* renamed from: d */
    public static void m6141d(byte[] bArr, long j, int i) {
        int i2 = 0;
        while (i2 < 4) {
            bArr[i + i2] = (byte) (255 & j);
            i2++;
            j >>= 8;
        }
    }

    /* renamed from: a */
    public static byte[] m6144a(byte[] bArr, byte[] bArr2) {
        long m6142c = m6142c(bArr, 0, 0);
        long m6142c2 = m6142c(bArr, 3, 2) & 67108611;
        long m6142c3 = m6142c(bArr, 6, 4) & 67092735;
        long m6142c4 = m6142c(bArr, 9, 6) & 66076671;
        long m6142c5 = m6142c(bArr, 12, 8) & 1048575;
        long j = m6142c2 * 5;
        long j2 = m6142c3 * 5;
        long j3 = m6142c4 * 5;
        long j4 = m6142c5 * 5;
        int i = 17;
        byte[] bArr3 = new byte[17];
        long j5 = 0;
        long j6 = 0;
        long j7 = 0;
        long j8 = 0;
        long j9 = 0;
        int i2 = 0;
        while (true) {
            int length = bArr2.length;
            if (i2 < length) {
                int min = Math.min(16, length - i2);
                System.arraycopy(bArr2, i2, bArr3, 0, min);
                bArr3[min] = 1;
                if (min != 16) {
                    Arrays.fill(bArr3, min + 1, i, (byte) 0);
                }
                long m6142c6 = j9 + m6142c(bArr3, 0, 0);
                long m6142c7 = j6 + m6142c(bArr3, 3, 2);
                long m6142c8 = j5 + m6142c(bArr3, 6, 4);
                long m6142c9 = j7 + m6142c(bArr3, 9, 6);
                long m6142c10 = j8 + (m6142c(bArr3, 12, 8) | (bArr3[16] << 24));
                long j10 = (m6142c6 * m6142c) + (m6142c7 * j4) + (m6142c8 * j3) + (m6142c9 * j2) + (m6142c10 * j);
                long j11 = (m6142c6 * m6142c2) + (m6142c7 * m6142c) + (m6142c8 * j4) + (m6142c9 * j3) + (m6142c10 * j2) + (j10 >> 26);
                long j12 = (m6142c6 * m6142c3) + (m6142c7 * m6142c2) + (m6142c8 * m6142c) + (m6142c9 * j4) + (m6142c10 * j3) + (j11 >> 26);
                long j13 = (m6142c6 * m6142c4) + (m6142c7 * m6142c3) + (m6142c8 * m6142c2) + (m6142c9 * m6142c) + (m6142c10 * j4) + (j12 >> 26);
                long j14 = (m6142c6 * m6142c5) + (m6142c7 * m6142c4) + (m6142c8 * m6142c3) + (m6142c9 * m6142c2) + (m6142c10 * m6142c) + (j13 >> 26);
                j8 = j14 & 67108863;
                long j15 = (j10 & 67108863) + ((j14 >> 26) * 5);
                j9 = j15 & 67108863;
                j6 = (j11 & 67108863) + (j15 >> 26);
                i2 += 16;
                j7 = j13 & 67108863;
                j5 = j12 & 67108863;
                i = 17;
            } else {
                long j16 = j5 + (j6 >> 26);
                long j17 = j16 & 67108863;
                long j18 = j7 + (j16 >> 26);
                long j19 = j18 & 67108863;
                long j20 = j8 + (j18 >> 26);
                long j21 = j20 & 67108863;
                long j22 = j9 + ((j20 >> 26) * 5);
                long j23 = j22 & 67108863;
                long j24 = (j6 & 67108863) + (j22 >> 26);
                long j25 = j23 + 5;
                long j26 = (j25 >> 26) + j24;
                long j27 = j17 + (j26 >> 26);
                long j28 = j19 + (j27 >> 26);
                long j29 = (j21 + (j28 >> 26)) - 67108864;
                long j30 = j29 >> 63;
                long j31 = j30 ^ (-1);
                long j32 = (j24 & j30) | (j26 & 67108863 & j31);
                long j33 = (j17 & j30) | (j27 & 67108863 & j31);
                long j34 = (j19 & j30) | (j28 & 67108863 & j31);
                long m6143b = (((j23 & j30) | (j25 & 67108863 & j31) | (j32 << 26)) & 4294967295L) + m6143b(bArr, 16);
                long m6143b2 = (((j32 >> 6) | (j33 << 20)) & 4294967295L) + m6143b(bArr, 20) + (m6143b >> 32);
                long m6143b3 = (((j33 >> 12) | (j34 << 14)) & 4294967295L) + m6143b(bArr, 24) + (m6143b2 >> 32);
                long m6143b4 = m6143b(bArr, 28);
                byte[] bArr4 = new byte[16];
                m6141d(bArr4, m6143b & 4294967295L, 0);
                m6141d(bArr4, m6143b2 & 4294967295L, 4);
                m6141d(bArr4, m6143b3 & 4294967295L, 8);
                m6141d(bArr4, ((((j34 >> 18) | (((j21 & j30) | (j29 & j31)) << 8)) & 4294967295L) + m6143b4 + (m6143b3 >> 32)) & 4294967295L, 12);
                return bArr4;
            }
        }
    }
}
