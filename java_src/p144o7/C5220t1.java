package p144o7;
/* renamed from: o7.t1 */
/* loaded from: classes2.dex */
public final class C5220t1 {

    /* renamed from: a */
    public static final AbstractC5222b f19564a;

    /* renamed from: o7.t1$a */
    /* loaded from: classes2.dex */
    public static class C5221a {
        /* renamed from: i */
        public static void m13996i(byte b, char[] cArr, int i) {
            cArr[i] = (char) b;
        }

        /* renamed from: l */
        public static char m13993l(int i) {
            return (char) ((i >>> 10) + 55232);
        }

        /* renamed from: m */
        public static boolean m13992m(byte b) {
            return b > -65;
        }

        /* renamed from: n */
        public static boolean m13991n(byte b) {
            return b >= 0;
        }

        /* renamed from: o */
        public static boolean m13990o(byte b) {
            return b < -16;
        }

        /* renamed from: p */
        public static boolean m13989p(byte b) {
            return b < -32;
        }

        /* renamed from: q */
        public static char m13988q(int i) {
            return (char) ((i & 1023) + 56320);
        }

        /* renamed from: r */
        public static int m13987r(byte b) {
            return b & 63;
        }

        /* renamed from: k */
        public static void m13994k(byte b, byte b2, char[] cArr, int i) {
            if (b >= -62 && !m13992m(b2)) {
                cArr[i] = (char) (((b & 31) << 6) | m13987r(b2));
                return;
            }
            throw C5117c0.m14636c();
        }

        /* renamed from: h */
        public static void m13997h(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
            if (!m13992m(b2) && (((b << 28) + (b2 + 112)) >> 30) == 0 && !m13992m(b3) && !m13992m(b4)) {
                int m13987r = ((b & 7) << 18) | (m13987r(b2) << 12) | (m13987r(b3) << 6) | m13987r(b4);
                cArr[i] = m13993l(m13987r);
                cArr[i + 1] = m13988q(m13987r);
                return;
            }
            throw C5117c0.m14636c();
        }

        /* renamed from: j */
        public static void m13995j(byte b, byte b2, byte b3, char[] cArr, int i) {
            if (!m13992m(b2) && ((b != -32 || b2 >= -96) && ((b != -19 || b2 < -96) && !m13992m(b3)))) {
                cArr[i] = (char) (((b & 15) << 12) | (m13987r(b2) << 6) | m13987r(b3));
                return;
            }
            throw C5117c0.m14636c();
        }
    }

    /* renamed from: o7.t1$b */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC5222b {
        /* renamed from: a */
        public abstract String mo13983a(byte[] bArr, int i, int i2);

        /* renamed from: b */
        public abstract int mo13982b(CharSequence charSequence, byte[] bArr, int i, int i2);

        /* renamed from: c */
        public final boolean m13986c(byte[] bArr, int i, int i2) {
            return mo13981d(0, bArr, i, i2) == 0;
        }

        /* renamed from: d */
        public abstract int mo13981d(int i, byte[] bArr, int i2, int i3);
    }

    /* renamed from: o7.t1$c */
    /* loaded from: classes2.dex */
    public static final class C5223c extends AbstractC5222b {
        /* renamed from: e */
        public static int m13985e(byte[] bArr, int i, int i2) {
            while (i < i2 && bArr[i] >= 0) {
                i++;
            }
            if (i >= i2) {
                return 0;
            }
            return m13984f(bArr, i, i2);
        }

        /* renamed from: f */
        public static int m13984f(byte[] bArr, int i, int i2) {
            while (i < i2) {
                int i3 = i + 1;
                byte b = bArr[i];
                if (b < 0) {
                    if (b < -32) {
                        if (i3 >= i2) {
                            return b;
                        }
                        if (b >= -62) {
                            i = i3 + 1;
                            if (bArr[i3] > -65) {
                            }
                        }
                        return -1;
                    } else if (b < -16) {
                        if (i3 >= i2 - 1) {
                            return C5220t1.m14007l(bArr, i3, i2);
                        }
                        int i4 = i3 + 1;
                        byte b2 = bArr[i3];
                        if (b2 <= -65 && ((b != -32 || b2 >= -96) && (b != -19 || b2 < -96))) {
                            i = i4 + 1;
                            if (bArr[i4] > -65) {
                            }
                        }
                        return -1;
                    } else if (i3 >= i2 - 2) {
                        return C5220t1.m14007l(bArr, i3, i2);
                    } else {
                        int i5 = i3 + 1;
                        byte b3 = bArr[i3];
                        if (b3 <= -65 && (((b << 28) + (b3 + 112)) >> 30) == 0) {
                            int i6 = i5 + 1;
                            if (bArr[i5] <= -65) {
                                i3 = i6 + 1;
                                if (bArr[i6] > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                }
                i = i3;
            }
            return 0;
        }

        @Override // p144o7.C5220t1.AbstractC5222b
        /* renamed from: a */
        public String mo13983a(byte[] bArr, int i, int i2) {
            if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte b = bArr[i];
                    if (!C5221a.m13991n(b)) {
                        break;
                    }
                    i++;
                    C5221a.m13996i(b, cArr, i4);
                    i4++;
                }
                int i5 = i4;
                while (i < i3) {
                    int i6 = i + 1;
                    byte b2 = bArr[i];
                    if (C5221a.m13991n(b2)) {
                        int i7 = i5 + 1;
                        C5221a.m13996i(b2, cArr, i5);
                        while (i6 < i3) {
                            byte b3 = bArr[i6];
                            if (!C5221a.m13991n(b3)) {
                                break;
                            }
                            i6++;
                            C5221a.m13996i(b3, cArr, i7);
                            i7++;
                        }
                        i = i6;
                        i5 = i7;
                    } else if (C5221a.m13989p(b2)) {
                        if (i6 < i3) {
                            C5221a.m13994k(b2, bArr[i6], cArr, i5);
                            i = i6 + 1;
                            i5++;
                        } else {
                            throw C5117c0.m14636c();
                        }
                    } else if (C5221a.m13990o(b2)) {
                        if (i6 < i3 - 1) {
                            int i8 = i6 + 1;
                            C5221a.m13995j(b2, bArr[i6], bArr[i8], cArr, i5);
                            i = i8 + 1;
                            i5++;
                        } else {
                            throw C5117c0.m14636c();
                        }
                    } else if (i6 < i3 - 2) {
                        int i9 = i6 + 1;
                        byte b4 = bArr[i6];
                        int i10 = i9 + 1;
                        C5221a.m13997h(b2, b4, bArr[i9], bArr[i10], cArr, i5);
                        i = i10 + 1;
                        i5 = i5 + 1 + 1;
                    } else {
                        throw C5117c0.m14636c();
                    }
                }
                return new String(cArr, 0, i5);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
            if (r8[r9] > (-65)) goto L12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0046, code lost:
            if (r8[r9] > (-65)) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x007f, code lost:
            if (r8[r9] > (-65)) goto L51;
         */
        @Override // p144o7.C5220t1.AbstractC5222b
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo13981d(int r7, byte[] r8, int r9, int r10) {
            /*
                r6 = this;
                if (r7 == 0) goto L82
                if (r9 < r10) goto L5
                return r7
            L5:
                byte r0 = (byte) r7
                r1 = -32
                r2 = -1
                r3 = -65
                if (r0 >= r1) goto L1c
                r7 = -62
                if (r0 < r7) goto L1b
                int r7 = r9 + 1
                r9 = r8[r9]
                if (r9 <= r3) goto L18
                goto L1b
            L18:
                r9 = r7
                goto L82
            L1b:
                return r2
            L1c:
                r4 = -16
                if (r0 >= r4) goto L49
                int r7 = r7 >> 8
                r7 = r7 ^ r2
                byte r7 = (byte) r7
                if (r7 != 0) goto L34
                int r7 = r9 + 1
                r9 = r8[r9]
                if (r7 < r10) goto L31
                int r7 = p144o7.C5220t1.m14018a(r0, r9)
                return r7
            L31:
                r5 = r9
                r9 = r7
                r7 = r5
            L34:
                if (r7 > r3) goto L48
                r4 = -96
                if (r0 != r1) goto L3c
                if (r7 < r4) goto L48
            L3c:
                r1 = -19
                if (r0 != r1) goto L42
                if (r7 >= r4) goto L48
            L42:
                int r7 = r9 + 1
                r9 = r8[r9]
                if (r9 <= r3) goto L18
            L48:
                return r2
            L49:
                int r1 = r7 >> 8
                r1 = r1 ^ r2
                byte r1 = (byte) r1
                r4 = 0
                if (r1 != 0) goto L5d
                int r7 = r9 + 1
                r1 = r8[r9]
                if (r7 < r10) goto L5b
                int r7 = p144o7.C5220t1.m14018a(r0, r1)
                return r7
            L5b:
                r9 = r7
                goto L60
            L5d:
                int r7 = r7 >> 16
                byte r4 = (byte) r7
            L60:
                if (r4 != 0) goto L6e
                int r7 = r9 + 1
                r4 = r8[r9]
                if (r7 < r10) goto L6d
                int r7 = p144o7.C5220t1.m14017b(r0, r1, r4)
                return r7
            L6d:
                r9 = r7
            L6e:
                if (r1 > r3) goto L81
                int r7 = r0 << 28
                int r1 = r1 + 112
                int r7 = r7 + r1
                int r7 = r7 >> 30
                if (r7 != 0) goto L81
                if (r4 > r3) goto L81
                int r7 = r9 + 1
                r9 = r8[r9]
                if (r9 <= r3) goto L18
            L81:
                return r2
            L82:
                int r7 = m13985e(r8, r9, r10)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: p144o7.C5220t1.C5223c.mo13981d(int, byte[], int, int):int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
            return r10 + r0;
         */
        @Override // p144o7.C5220t1.AbstractC5222b
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo13982b(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 254
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p144o7.C5220t1.C5223c.mo13982b(java.lang.CharSequence, byte[], int, int):int");
        }
    }

    /* renamed from: o7.t1$d */
    /* loaded from: classes2.dex */
    public static class C5224d extends IllegalArgumentException {
        public C5224d(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }

    /* renamed from: o7.t1$e */
    /* loaded from: classes2.dex */
    public static final class C5225e extends AbstractC5222b {
        /* renamed from: e */
        public static boolean m13980e() {
            return C5212s1.m14077C() && C5212s1.m14076D();
        }

        /* renamed from: g */
        public static int m13978g(byte[] bArr, long j, int i) {
            int i2 = 0;
            if (i < 16) {
                return 0;
            }
            while (i2 < i) {
                long j2 = 1 + j;
                if (C5212s1.m14044s(bArr, j) < 0) {
                    return i2;
                }
                i2++;
                j = j2;
            }
            return i;
        }

        /* renamed from: h */
        public static int m13977h(byte[] bArr, int i, long j, int i2) {
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        return C5220t1.m14008k(i, C5212s1.m14044s(bArr, j), C5212s1.m14044s(bArr, j + 1));
                    }
                    throw new AssertionError();
                }
                return C5220t1.m14009j(i, C5212s1.m14044s(bArr, j));
            }
            return C5220t1.m14010i(i);
        }

        @Override // p144o7.C5220t1.AbstractC5222b
        /* renamed from: a */
        public String mo13983a(byte[] bArr, int i, int i2) {
            if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte m14044s = C5212s1.m14044s(bArr, i);
                    if (!C5221a.m13991n(m14044s)) {
                        break;
                    }
                    i++;
                    C5221a.m13996i(m14044s, cArr, i4);
                    i4++;
                }
                int i5 = i4;
                while (i < i3) {
                    int i6 = i + 1;
                    byte m14044s2 = C5212s1.m14044s(bArr, i);
                    if (C5221a.m13991n(m14044s2)) {
                        int i7 = i5 + 1;
                        C5221a.m13996i(m14044s2, cArr, i5);
                        while (i6 < i3) {
                            byte m14044s3 = C5212s1.m14044s(bArr, i6);
                            if (!C5221a.m13991n(m14044s3)) {
                                break;
                            }
                            i6++;
                            C5221a.m13996i(m14044s3, cArr, i7);
                            i7++;
                        }
                        i = i6;
                        i5 = i7;
                    } else if (C5221a.m13989p(m14044s2)) {
                        if (i6 < i3) {
                            C5221a.m13994k(m14044s2, C5212s1.m14044s(bArr, i6), cArr, i5);
                            i = i6 + 1;
                            i5++;
                        } else {
                            throw C5117c0.m14636c();
                        }
                    } else if (C5221a.m13990o(m14044s2)) {
                        if (i6 < i3 - 1) {
                            int i8 = i6 + 1;
                            C5221a.m13995j(m14044s2, C5212s1.m14044s(bArr, i6), C5212s1.m14044s(bArr, i8), cArr, i5);
                            i = i8 + 1;
                            i5++;
                        } else {
                            throw C5117c0.m14636c();
                        }
                    } else if (i6 < i3 - 2) {
                        int i9 = i6 + 1;
                        int i10 = i9 + 1;
                        C5221a.m13997h(m14044s2, C5212s1.m14044s(bArr, i6), C5212s1.m14044s(bArr, i9), C5212s1.m14044s(bArr, i10), cArr, i5);
                        i = i10 + 1;
                        i5 = i5 + 1 + 1;
                    } else {
                        throw C5117c0.m14636c();
                    }
                }
                return new String(cArr, 0, i5);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }

        @Override // p144o7.C5220t1.AbstractC5222b
        /* renamed from: b */
        public int mo13982b(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
                    C5212s1.m14072H(bArr, j4, (byte) charAt);
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
                        C5212s1.m14072H(bArr, j4, (byte) charAt2);
                        j3 = j;
                        j2 = j6;
                    } else {
                        if (charAt2 < 2048 && j4 <= j5 - 2) {
                            long j7 = j4 + j;
                            C5212s1.m14072H(bArr, j4, (byte) ((charAt2 >>> 6) | 960));
                            C5212s1.m14072H(bArr, j7, (byte) ((charAt2 & '?') | 128));
                            j2 = j7 + j;
                            j3 = j;
                        } else if ((charAt2 < 55296 || 57343 < charAt2) && j4 <= j5 - 3) {
                            long j8 = j4 + j;
                            C5212s1.m14072H(bArr, j4, (byte) ((charAt2 >>> '\f') | 480));
                            long j9 = j8 + j;
                            C5212s1.m14072H(bArr, j8, (byte) (((charAt2 >>> 6) & 63) | 128));
                            C5212s1.m14072H(bArr, j9, (byte) ((charAt2 & '?') | 128));
                            j2 = j9 + 1;
                            j3 = 1;
                        } else if (j4 <= j5 - 4) {
                            int i5 = i4 + 1;
                            if (i5 != length) {
                                char charAt3 = charSequence.charAt(i5);
                                if (Character.isSurrogatePair(charAt2, charAt3)) {
                                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                                    long j10 = j4 + 1;
                                    C5212s1.m14072H(bArr, j4, (byte) ((codePoint >>> 18) | 240));
                                    long j11 = j10 + 1;
                                    C5212s1.m14072H(bArr, j10, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j12 = j11 + 1;
                                    C5212s1.m14072H(bArr, j11, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j3 = 1;
                                    j2 = j12 + 1;
                                    C5212s1.m14072H(bArr, j12, (byte) ((codePoint & 63) | 128));
                                    i4 = i5;
                                } else {
                                    i4 = i5;
                                }
                            }
                            throw new C5224d(i4 - 1, length);
                        } else if (55296 <= charAt2 && charAt2 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                            throw new C5224d(i4, length);
                        } else {
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + j4);
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
            throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + (i + i2));
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0059, code lost:
            if (p144o7.C5212s1.m14044s(r13, r2) > (-65)) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x009e, code lost:
            if (p144o7.C5212s1.m14044s(r13, r2) > (-65)) goto L56;
         */
        @Override // p144o7.C5220t1.AbstractC5222b
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo13981d(int r12, byte[] r13, int r14, int r15) {
            /*
                Method dump skipped, instructions count: 206
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p144o7.C5220t1.C5225e.mo13981d(int, byte[], int, int):int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0039, code lost:
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x008e, code lost:
            return -1;
         */
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m13979f(byte[] r8, long r9, int r11) {
            /*
                int r0 = m13978g(r8, r9, r11)
                int r11 = r11 - r0
                long r0 = (long) r0
                long r9 = r9 + r0
            L7:
                r0 = 0
                r1 = 0
            L9:
                r2 = 1
                if (r11 <= 0) goto L1a
                long r4 = r9 + r2
                byte r1 = p144o7.C5212s1.m14044s(r8, r9)
                if (r1 < 0) goto L19
                int r11 = r11 + (-1)
                r9 = r4
                goto L9
            L19:
                r9 = r4
            L1a:
                if (r11 != 0) goto L1d
                return r0
            L1d:
                int r11 = r11 + (-1)
                r0 = -32
                r4 = -65
                r5 = -1
                if (r1 >= r0) goto L3a
                if (r11 != 0) goto L29
                return r1
            L29:
                int r11 = r11 + (-1)
                r0 = -62
                if (r1 < r0) goto L39
                long r2 = r2 + r9
                byte r9 = p144o7.C5212s1.m14044s(r8, r9)
                if (r9 <= r4) goto L37
                goto L39
            L37:
                r9 = r2
                goto L7
            L39:
                return r5
            L3a:
                r6 = -16
                if (r1 >= r6) goto L64
                r6 = 2
                if (r11 >= r6) goto L46
                int r8 = m13977h(r8, r1, r9, r11)
                return r8
            L46:
                int r11 = r11 + (-2)
                long r6 = r9 + r2
                byte r9 = p144o7.C5212s1.m14044s(r8, r9)
                if (r9 > r4) goto L63
                r10 = -96
                if (r1 != r0) goto L56
                if (r9 < r10) goto L63
            L56:
                r0 = -19
                if (r1 != r0) goto L5c
                if (r9 >= r10) goto L63
            L5c:
                long r2 = r2 + r6
                byte r9 = p144o7.C5212s1.m14044s(r8, r6)
                if (r9 <= r4) goto L37
            L63:
                return r5
            L64:
                r0 = 3
                if (r11 >= r0) goto L6c
                int r8 = m13977h(r8, r1, r9, r11)
                return r8
            L6c:
                int r11 = r11 + (-3)
                long r6 = r9 + r2
                byte r9 = p144o7.C5212s1.m14044s(r8, r9)
                if (r9 > r4) goto L8e
                int r10 = r1 << 28
                int r9 = r9 + 112
                int r10 = r10 + r9
                int r9 = r10 >> 30
                if (r9 != 0) goto L8e
                long r9 = r6 + r2
                byte r0 = p144o7.C5212s1.m14044s(r8, r6)
                if (r0 > r4) goto L8e
                long r2 = r2 + r9
                byte r9 = p144o7.C5212s1.m14044s(r8, r9)
                if (r9 <= r4) goto L37
            L8e:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: p144o7.C5220t1.C5225e.m13979f(byte[], long, int):int");
        }
    }

    static {
        f19564a = (!C5225e.m13980e() || C5120d.m14626c()) ? new C5223c() : new C5225e();
    }

    /* renamed from: e */
    public static String m14014e(byte[] bArr, int i, int i2) {
        return f19564a.mo13983a(bArr, i, i2);
    }

    /* renamed from: f */
    public static int m14013f(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f19564a.mo13982b(charSequence, bArr, i, i2);
    }

    /* renamed from: i */
    public static int m14010i(int i) {
        if (i > -12) {
            return -1;
        }
        return i;
    }

    /* renamed from: j */
    public static int m14009j(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* renamed from: k */
    public static int m14008k(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* renamed from: m */
    public static boolean m14006m(byte[] bArr) {
        return f19564a.m13986c(bArr, 0, bArr.length);
    }

    /* renamed from: n */
    public static boolean m14005n(byte[] bArr, int i, int i2) {
        return f19564a.m13986c(bArr, i, i2);
    }

    /* renamed from: l */
    public static int m14007l(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 == 2) {
                    return m14008k(b, bArr[i], bArr[i + 1]);
                }
                throw new AssertionError();
            }
            return m14009j(b, bArr[i]);
        }
        return m14010i(b);
    }

    /* renamed from: g */
    public static int m14012g(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < 128) {
            i++;
        }
        int i2 = length;
        while (true) {
            if (i < length) {
                char charAt = charSequence.charAt(i);
                if (charAt < 2048) {
                    i2 += (127 - charAt) >>> 31;
                    i++;
                } else {
                    i2 += m14011h(charSequence, i);
                    break;
                }
            } else {
                break;
            }
        }
        if (i2 >= length) {
            return i2;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i2 + 4294967296L));
    }

    /* renamed from: h */
    public static int m14011h(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt < 2048) {
                i2 += (127 - charAt) >>> 31;
            } else {
                i2 += 2;
                if (55296 <= charAt && charAt <= 57343) {
                    if (Character.codePointAt(charSequence, i) >= 65536) {
                        i++;
                    } else {
                        throw new C5224d(i, length);
                    }
                }
            }
            i++;
        }
        return i2;
    }
}
