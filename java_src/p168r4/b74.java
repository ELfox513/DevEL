package p168r4;
/* renamed from: r4.b74 */
/* loaded from: classes2.dex */
public final class b74 {
    /* renamed from: a */
    public static int m12859a(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    /* renamed from: b */
    public static long m12858b(C6423xb c6423xb, int i, int i2) {
        c6423xb.m5403p(i);
        if (c6423xb.m5407l() < 5) {
            return -9223372036854775807L;
        }
        int m5423D = c6423xb.m5423D();
        if ((8388608 & m5423D) != 0 || ((m5423D >> 8) & 8191) != i2 || (m5423D & 32) == 0 || c6423xb.m5397v() < 7 || c6423xb.m5407l() < 7 || (c6423xb.m5397v() & 16) != 16) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        c6423xb.m5398u(bArr, 0, 6);
        byte b = bArr[0];
        byte b2 = bArr[1];
        byte b3 = bArr[2];
        long j = bArr[3] & 255;
        return ((b2 & 255) << 17) | ((b & 255) << 25) | ((b3 & 255) << 9) | (j + j) | ((bArr[4] & 255) >> 7);
    }
}
