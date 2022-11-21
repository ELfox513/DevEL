package p237z4;
/* renamed from: z4.j3 */
/* loaded from: classes2.dex */
public final class C7661j3 extends AbstractC7646g3 {
    /* renamed from: d */
    public static int m674d(byte[] bArr, int i, long j, int i2) {
        int m781c;
        int m773k;
        int m779e;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    m779e = C7641f3.m779e(i, C7627d3.m852a(bArr, j), C7627d3.m852a(bArr, j + 1));
                    return m779e;
                }
                throw new AssertionError();
            }
            m773k = C7641f3.m773k(i, C7627d3.m852a(bArr, j));
            return m773k;
        }
        m781c = C7641f3.m781c(i);
        return m781c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0061, code lost:
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00b6, code lost:
        return -1;
     */
    @Override // p237z4.AbstractC7646g3
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo676a(int r16, byte[] r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p237z4.C7661j3.mo676a(int, byte[], int, int):int");
    }

    @Override // p237z4.AbstractC7646g3
    /* renamed from: b */
    public final int mo675b(CharSequence charSequence, byte[] bArr, int i, int i2) {
        char c;
        long j;
        long j2;
        long j3;
        int i3;
        char charAt;
        long j4 = i;
        long j5 = i2 + j4;
        int length = charSequence.length();
        if (length <= i2 && bArr.length - i2 >= i) {
            int i4 = 0;
            while (true) {
                c = 128;
                j = 1;
                if (i4 >= length || (charAt = charSequence.charAt(i4)) >= 128) {
                    break;
                }
                C7627d3.m844i(bArr, j4, (byte) charAt);
                i4++;
                j4 = 1 + j4;
            }
            if (i4 == length) {
                return (int) j4;
            }
            while (i4 < length) {
                char charAt2 = charSequence.charAt(i4);
                if (charAt2 < c && j4 < j5) {
                    long j6 = j4 + j;
                    C7627d3.m844i(bArr, j4, (byte) charAt2);
                    j3 = j;
                    j2 = j6;
                } else {
                    if (charAt2 < 2048 && j4 <= j5 - 2) {
                        long j7 = j4 + j;
                        C7627d3.m844i(bArr, j4, (byte) ((charAt2 >>> 6) | 960));
                        C7627d3.m844i(bArr, j7, (byte) ((charAt2 & '?') | 128));
                        j2 = j7 + j;
                        j3 = j;
                    } else if ((charAt2 < 55296 || 57343 < charAt2) && j4 <= j5 - 3) {
                        long j8 = j4 + j;
                        C7627d3.m844i(bArr, j4, (byte) ((charAt2 >>> '\f') | 480));
                        long j9 = j8 + j;
                        C7627d3.m844i(bArr, j8, (byte) (((charAt2 >>> 6) & 63) | 128));
                        C7627d3.m844i(bArr, j9, (byte) ((charAt2 & '?') | 128));
                        j2 = j9 + 1;
                        j3 = 1;
                    } else if (j4 <= j5 - 4) {
                        int i5 = i4 + 1;
                        if (i5 != length) {
                            char charAt3 = charSequence.charAt(i5);
                            if (Character.isSurrogatePair(charAt2, charAt3)) {
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                long j10 = j4 + 1;
                                C7627d3.m844i(bArr, j4, (byte) ((codePoint >>> 18) | 240));
                                long j11 = j10 + 1;
                                C7627d3.m844i(bArr, j10, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j12 = j11 + 1;
                                C7627d3.m844i(bArr, j11, (byte) (((codePoint >>> 6) & 63) | 128));
                                j3 = 1;
                                j2 = j12 + 1;
                                C7627d3.m844i(bArr, j12, (byte) ((codePoint & 63) | 128));
                                i4 = i5;
                            } else {
                                i4 = i5;
                            }
                        }
                        throw new C7656i3(i4 - 1, length);
                    } else if (55296 <= charAt2 && charAt2 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                        throw new C7656i3(i4, length);
                    } else {
                        StringBuilder sb = new StringBuilder(46);
                        sb.append("Failed writing ");
                        sb.append(charAt2);
                        sb.append(" at index ");
                        sb.append(j4);
                        throw new ArrayIndexOutOfBoundsException(sb.toString());
                    }
                    i4++;
                    c = 128;
                    long j13 = j3;
                    j4 = j2;
                    j = j13;
                }
                i4++;
                c = 128;
                long j132 = j3;
                j4 = j2;
                j = j132;
            }
            return (int) j4;
        }
        char charAt4 = charSequence.charAt(length - 1);
        StringBuilder sb2 = new StringBuilder(37);
        sb2.append("Failed writing ");
        sb2.append(charAt4);
        sb2.append(" at index ");
        sb2.append(i + i2);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }
}
