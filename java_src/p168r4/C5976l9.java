package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.util.Arrays;
import java.util.Locale;
/* renamed from: r4.l9 */
/* loaded from: classes2.dex */
public final class C5976l9 {

    /* renamed from: a */
    public static final InterfaceC5902j9 f27133a = C5866i9.f25013a;

    /* renamed from: e */
    public static String m9774e(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "ISO-8859-1" : "UTF-8" : "UTF-16BE" : "UTF-16";
    }

    /* renamed from: f */
    public static String m9773f(int i, int i2, int i3, int i4, int i5) {
        if (i == 2) {
            return String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
        }
        return String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    /* renamed from: h */
    public static int m9771h(byte[] bArr, int i) {
        while (true) {
            int length = bArr.length;
            if (i < length) {
                if (bArr[i] == 0) {
                    return i;
                }
                i++;
            } else {
                return length;
            }
        }
    }

    /* renamed from: i */
    public static int m9770i(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    /* renamed from: k */
    public static String m9768k(byte[] bArr, int i, int i2, String str) {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00bd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00be  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final p168r4.C5901j8 m9778a(byte[] r11, int r12, p168r4.InterfaceC5902j9 r13, p168r4.C5975l8 r14) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C5976l9.m9778a(byte[], int, r4.j9, r4.l8):r4.j8");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0085, code lost:
        if ((r10 & 128) != 0) goto L31;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m9777b(p168r4.C6423xb r19, int r20, int r21, boolean r22) {
        /*
            r1 = r19
            r0 = r20
            int r2 = r19.m5404o()
        L8:
            int r3 = r19.m5407l()     // Catch: java.lang.Throwable -> Lae
            r4 = 1
            r5 = r21
            if (r3 < r5) goto Laa
            r3 = 3
            r6 = 0
            if (r0 < r3) goto L22
            int r7 = r19.m5423D()     // Catch: java.lang.Throwable -> Lae
            long r8 = r19.m5425B()     // Catch: java.lang.Throwable -> Lae
            int r10 = r19.m5396w()     // Catch: java.lang.Throwable -> Lae
            goto L2c
        L22:
            int r7 = r19.m5393z()     // Catch: java.lang.Throwable -> Lae
            int r8 = r19.m5393z()     // Catch: java.lang.Throwable -> Lae
            long r8 = (long) r8
            r10 = 0
        L2c:
            r11 = 0
            if (r7 != 0) goto L3b
            int r7 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r7 != 0) goto L3b
            if (r10 == 0) goto L37
            goto L3b
        L37:
            r1.m5403p(r2)
            return r4
        L3b:
            r7 = 4
            if (r0 != r7) goto L6a
            if (r22 != 0) goto L6a
            r13 = 8421504(0x808080, double:4.160776E-317)
            long r13 = r13 & r8
            int r15 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r15 == 0) goto L4c
            r1.m5403p(r2)
            return r6
        L4c:
            r11 = 255(0xff, double:1.26E-321)
            long r13 = r8 & r11
            r15 = 8
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 7
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 16
            long r15 = r8 >> r15
            long r11 = r11 & r15
            r15 = 14
            long r11 = r11 << r15
            long r11 = r11 | r13
            r13 = 24
            long r8 = r8 >> r13
            r13 = 21
            long r8 = r8 << r13
            long r8 = r8 | r11
        L6a:
            if (r0 != r7) goto L7a
            r3 = r10 & 64
            if (r3 == 0) goto L71
            goto L72
        L71:
            r4 = 0
        L72:
            r3 = r10 & 1
            r18 = r4
            r4 = r3
            r3 = r18
            goto L8a
        L7a:
            if (r0 != r3) goto L88
            r3 = r10 & 32
            if (r3 == 0) goto L82
            r3 = 1
            goto L83
        L82:
            r3 = 0
        L83:
            r7 = r10 & 128(0x80, float:1.794E-43)
            if (r7 == 0) goto L89
            goto L8a
        L88:
            r3 = 0
        L89:
            r4 = 0
        L8a:
            if (r4 == 0) goto L8e
            int r3 = r3 + 4
        L8e:
            long r3 = (long) r3
            int r7 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r7 >= 0) goto L97
            r1.m5403p(r2)
            return r6
        L97:
            int r3 = r19.m5407l()     // Catch: java.lang.Throwable -> Lae
            long r3 = (long) r3
            int r7 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r7 >= 0) goto La4
            r1.m5403p(r2)
            return r6
        La4:
            int r3 = (int) r8
            r1.m5400s(r3)     // Catch: java.lang.Throwable -> Lae
            goto L8
        Laa:
            r1.m5403p(r2)
            return r4
        Lae:
            r0 = move-exception
            r1.m5403p(r2)
            goto Lb4
        Lb3:
            throw r0
        Lb4:
            goto Lb3
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C5976l9.m9777b(r4.xb, int, int, boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:140:0x0273, code lost:
        if (r9 == 67) goto L121;
     */
    /* JADX WARN: Not initialized variable reg: 22, insn: 0x0565: MOVE  (r2 I:??[OBJECT, ARRAY]) = (r22 I:??[OBJECT, ARRAY]), block:B:247:0x0563 */
    /* JADX WARN: Removed duplicated region for block: B:221:0x049f  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x050d  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p168r4.AbstractC6013m9 m9776c(int r34, p168r4.C6423xb r35, boolean r36, int r37, p168r4.InterfaceC5902j9 r38) {
        /*
            Method dump skipped, instructions count: 1413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C5976l9.m9776c(int, r4.xb, boolean, int, r4.j9):r4.m9");
    }

    /* renamed from: j */
    public static byte[] m9769j(byte[] bArr, int i, int i2) {
        if (i2 <= i) {
            return C5979lc.f27169f;
        }
        return Arrays.copyOfRange(bArr, i, i2);
    }

    /* renamed from: d */
    public static int m9775d(C6423xb c6423xb, int i) {
        byte[] m5402q = c6423xb.m5402q();
        int m5404o = c6423xb.m5404o();
        int i2 = m5404o;
        while (true) {
            int i3 = i2 + 1;
            if (i3 < m5404o + i) {
                if ((m5402q[i2] & DefaultClassResolver.NAME) == 255 && m5402q[i3] == 0) {
                    System.arraycopy(m5402q, i2 + 2, m5402q, i3, (i - (i2 - m5404o)) - 2);
                    i--;
                }
                i2 = i3;
            } else {
                return i;
            }
        }
    }

    /* renamed from: g */
    public static int m9772g(byte[] bArr, int i, int i2) {
        int m9771h = m9771h(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return m9771h;
        }
        while (true) {
            int length = bArr.length;
            if (m9771h < length - 1) {
                if ((m9771h - i) % 2 == 0 && bArr[m9771h + 1] == 0) {
                    return m9771h;
                }
                m9771h = m9771h(bArr, m9771h + 1);
            } else {
                return length;
            }
        }
    }
}
