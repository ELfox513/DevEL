package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.tp3 */
/* loaded from: classes2.dex */
public abstract class tp3 {
    /* renamed from: a */
    public final boolean m6762a(byte[] bArr, int i, int i2) {
        return mo6393b(0, bArr, i, i2) == 0;
    }

    /* renamed from: b */
    public abstract int mo6393b(int i, byte[] bArr, int i2, int i3);

    /* renamed from: c */
    public abstract String mo6392c(byte[] bArr, int i, int i2);

    /* renamed from: d */
    public static final String m6761d(ByteBuffer byteBuffer, int i, int i2) {
        if ((i | i2 | ((byteBuffer.limit() - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = byteBuffer.get(i);
                if (!sp3.m7067a(b)) {
                    break;
                }
                i++;
                cArr[i4] = (char) b;
                i4++;
            }
            int i5 = i4;
            while (i < i3) {
                int i6 = i + 1;
                byte b2 = byteBuffer.get(i);
                if (sp3.m7067a(b2)) {
                    int i7 = i5 + 1;
                    cArr[i5] = (char) b2;
                    i = i6;
                    while (true) {
                        i5 = i7;
                        if (i < i3) {
                            byte b3 = byteBuffer.get(i);
                            if (!sp3.m7067a(b3)) {
                                break;
                            }
                            i++;
                            i7 = i5 + 1;
                            cArr[i5] = (char) b3;
                        }
                    }
                } else if (sp3.m7066b(b2)) {
                    if (i6 < i3) {
                        sp3.m7064d(b2, byteBuffer.get(i6), cArr, i5);
                        i = i6 + 1;
                        i5++;
                    } else {
                        throw bn3.m12732l();
                    }
                } else if (sp3.m7065c(b2)) {
                    if (i6 < i3 - 1) {
                        int i8 = i6 + 1;
                        sp3.m7063e(b2, byteBuffer.get(i6), byteBuffer.get(i8), cArr, i5);
                        i = i8 + 1;
                        i5++;
                    } else {
                        throw bn3.m12732l();
                    }
                } else if (i6 < i3 - 2) {
                    int i9 = i6 + 1;
                    int i10 = i9 + 1;
                    sp3.m7062f(b2, byteBuffer.get(i6), byteBuffer.get(i9), byteBuffer.get(i10), cArr, i5);
                    i5 += 2;
                    i = i10 + 1;
                } else {
                    throw bn3.m12732l();
                }
            }
            return new String(cArr, 0, i5);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
    }
}
