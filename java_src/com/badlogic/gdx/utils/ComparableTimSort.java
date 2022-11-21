package com.badlogic.gdx.utils;
/* loaded from: classes.dex */
class ComparableTimSort {

    /* renamed from: a */
    public Object[] f6430a;

    /* renamed from: d */
    public int f6433d;

    /* renamed from: b */
    public int f6431b = 7;

    /* renamed from: e */
    public int f6434e = 0;

    /* renamed from: c */
    public Object[] f6432c = new Object[256];

    /* renamed from: f */
    public final int[] f6435f = new int[40];

    /* renamed from: g */
    public final int[] f6436g = new int[40];

    /* renamed from: k */
    public static int m23669k(int i) {
        int i2 = 0;
        while (i >= 32) {
            i2 |= i & 1;
            i >>= 1;
        }
        return i + i2;
    }

    public void doSort(Object[] objArr, int i, int i2) {
        int i3;
        this.f6434e = 0;
        m23667m(objArr.length, i, i2);
        int i4 = i2 - i;
        if (i4 < 2) {
            return;
        }
        if (i4 < 32) {
            m23679a(objArr, i, i2, m23678b(objArr, i, i2) + i);
            return;
        }
        this.f6430a = objArr;
        this.f6433d = 0;
        int m23669k = m23669k(i4);
        do {
            int m23678b = m23678b(objArr, i, i2);
            if (m23678b < m23669k) {
                if (i4 <= m23669k) {
                    i3 = i4;
                } else {
                    i3 = m23669k;
                }
                m23679a(objArr, i, i + i3, m23678b + i);
                m23678b = i3;
            }
            m23668l(i, m23678b);
            m23673g();
            i += m23678b;
            i4 -= m23678b;
        } while (i4 != 0);
        m23672h();
        this.f6430a = null;
        Object[] objArr2 = this.f6432c;
        int i5 = this.f6433d;
        for (int i6 = 0; i6 < i5; i6++) {
            objArr2[i6] = null;
        }
    }

    /* renamed from: a */
    public static void m23679a(Object[] objArr, int i, int i2, int i3) {
        if (i3 == i) {
            i3++;
        }
        while (i3 < i2) {
            Comparable comparable = (Comparable) objArr[i3];
            int i4 = i;
            int i5 = i3;
            while (i4 < i5) {
                int i6 = (i4 + i5) >>> 1;
                if (comparable.compareTo(objArr[i6]) < 0) {
                    i5 = i6;
                } else {
                    i4 = i6 + 1;
                }
            }
            int i7 = i3 - i4;
            if (i7 != 1) {
                if (i7 != 2) {
                    System.arraycopy(objArr, i4, objArr, i4 + 1, i7);
                    objArr[i4] = comparable;
                    i3++;
                } else {
                    objArr[i4 + 2] = objArr[i4 + 1];
                }
            }
            objArr[i4 + 1] = objArr[i4];
            objArr[i4] = comparable;
            i3++;
        }
    }

    /* renamed from: b */
    public static int m23678b(Object[] objArr, int i, int i2) {
        int i3 = i + 1;
        if (i3 == i2) {
            return 1;
        }
        int i4 = i3 + 1;
        if (((Comparable) objArr[i3]).compareTo(objArr[i]) < 0) {
            while (i4 < i2 && ((Comparable) objArr[i4]).compareTo(objArr[i4 - 1]) < 0) {
                i4++;
            }
            m23666n(objArr, i, i4);
        } else {
            while (i4 < i2 && ((Comparable) objArr[i4]).compareTo(objArr[i4 - 1]) >= 0) {
                i4++;
            }
        }
        return i4 - i;
    }

    /* renamed from: d */
    public static int m23676d(Comparable<Object> comparable, Object[] objArr, int i, int i2, int i3) {
        int i4;
        int i5;
        int i6 = i + i3;
        if (comparable.compareTo(objArr[i6]) > 0) {
            int i7 = i2 - i3;
            int i8 = 0;
            int i9 = 1;
            while (i9 < i7 && comparable.compareTo(objArr[i6 + i9]) > 0) {
                int i10 = (i9 << 1) + 1;
                if (i10 <= 0) {
                    i8 = i9;
                    i9 = i7;
                } else {
                    int i11 = i9;
                    i9 = i10;
                    i8 = i11;
                }
            }
            if (i9 <= i7) {
                i7 = i9;
            }
            i4 = i8 + i3;
            i5 = i7 + i3;
        } else {
            int i12 = i3 + 1;
            int i13 = 0;
            int i14 = 1;
            while (i14 < i12 && comparable.compareTo(objArr[i6 - i14]) <= 0) {
                int i15 = (i14 << 1) + 1;
                if (i15 <= 0) {
                    i13 = i14;
                    i14 = i12;
                } else {
                    int i16 = i14;
                    i14 = i15;
                    i13 = i16;
                }
            }
            if (i14 <= i12) {
                i12 = i14;
            }
            int i17 = i3 - i12;
            int i18 = i3 - i13;
            i4 = i17;
            i5 = i18;
        }
        int i19 = i4 + 1;
        while (i19 < i5) {
            int i20 = ((i5 - i19) >>> 1) + i19;
            if (comparable.compareTo(objArr[i + i20]) > 0) {
                i19 = i20 + 1;
            } else {
                i5 = i20;
            }
        }
        return i5;
    }

    /* renamed from: e */
    public static int m23675e(Comparable<Object> comparable, Object[] objArr, int i, int i2, int i3) {
        int i4;
        int i5;
        int i6 = i + i3;
        if (comparable.compareTo(objArr[i6]) < 0) {
            int i7 = i3 + 1;
            int i8 = 0;
            int i9 = 1;
            while (i9 < i7 && comparable.compareTo(objArr[i6 - i9]) < 0) {
                int i10 = (i9 << 1) + 1;
                if (i10 <= 0) {
                    i8 = i9;
                    i9 = i7;
                } else {
                    int i11 = i9;
                    i9 = i10;
                    i8 = i11;
                }
            }
            if (i9 <= i7) {
                i7 = i9;
            }
            i5 = i3 - i7;
            i4 = i3 - i8;
        } else {
            int i12 = i2 - i3;
            int i13 = 0;
            int i14 = 1;
            while (i14 < i12 && comparable.compareTo(objArr[i6 + i14]) >= 0) {
                int i15 = (i14 << 1) + 1;
                if (i15 <= 0) {
                    i13 = i14;
                    i14 = i12;
                } else {
                    int i16 = i14;
                    i14 = i15;
                    i13 = i16;
                }
            }
            if (i14 <= i12) {
                i12 = i14;
            }
            int i17 = i13 + i3;
            i4 = i3 + i12;
            i5 = i17;
        }
        int i18 = i5 + 1;
        while (i18 < i4) {
            int i19 = ((i4 - i18) >>> 1) + i18;
            if (comparable.compareTo(objArr[i + i19]) < 0) {
                i4 = i19;
            } else {
                i18 = i19 + 1;
            }
        }
        return i4;
    }

    /* renamed from: m */
    public static void m23667m(int i, int i2, int i3) {
        if (i2 <= i3) {
            if (i2 >= 0) {
                if (i3 <= i) {
                    return;
                }
                throw new ArrayIndexOutOfBoundsException(i3);
            }
            throw new ArrayIndexOutOfBoundsException(i2);
        }
        throw new IllegalArgumentException("fromIndex(" + i2 + ") > toIndex(" + i3 + ")");
    }

    /* renamed from: n */
    public static void m23666n(Object[] objArr, int i, int i2) {
        int i3 = i2 - 1;
        while (i < i3) {
            Object obj = objArr[i];
            objArr[i] = objArr[i3];
            objArr[i3] = obj;
            i3--;
            i++;
        }
    }

    /* renamed from: c */
    public final Object[] m23677c(int i) {
        this.f6433d = Math.max(this.f6433d, i);
        if (this.f6432c.length < i) {
            int i2 = (i >> 1) | i;
            int i3 = i2 | (i2 >> 2);
            int i4 = i3 | (i3 >> 4);
            int i5 = i4 | (i4 >> 8);
            int i6 = (i5 | (i5 >> 16)) + 1;
            if (i6 >= 0) {
                i = Math.min(i6, this.f6430a.length >>> 1);
            }
            this.f6432c = new Object[i];
        }
        return this.f6432c;
    }

    /* renamed from: f */
    public final void m23674f(int i) {
        int[] iArr = this.f6435f;
        int i2 = iArr[i];
        int[] iArr2 = this.f6436g;
        int i3 = iArr2[i];
        int i4 = i + 1;
        int i5 = iArr[i4];
        int i6 = iArr2[i4];
        iArr2[i] = i3 + i6;
        int i7 = this.f6434e;
        if (i == i7 - 3) {
            int i8 = i + 2;
            iArr[i4] = iArr[i8];
            iArr2[i4] = iArr2[i8];
        }
        this.f6434e = i7 - 1;
        Object[] objArr = this.f6430a;
        int m23675e = m23675e((Comparable) objArr[i5], objArr, i2, i3, 0);
        int i9 = i2 + m23675e;
        int i10 = i3 - m23675e;
        if (i10 == 0) {
            return;
        }
        Object[] objArr2 = this.f6430a;
        int m23676d = m23676d((Comparable) objArr2[(i9 + i10) - 1], objArr2, i5, i6, i6 - 1);
        if (m23676d == 0) {
            return;
        }
        if (i10 <= m23676d) {
            m23670j(i9, i10, i5, m23676d);
        } else {
            m23671i(i9, i10, i5, m23676d);
        }
    }

    /* renamed from: g */
    public final void m23673g() {
        while (true) {
            int i = this.f6434e;
            if (i > 1) {
                int i2 = i - 2;
                if (i2 > 0) {
                    int[] iArr = this.f6436g;
                    int i3 = iArr[i2 - 1];
                    int i4 = iArr[i2];
                    int i5 = iArr[i2 + 1];
                    if (i3 <= i4 + i5) {
                        if (i3 < i5) {
                            i2--;
                        }
                        m23674f(i2);
                    }
                }
                int[] iArr2 = this.f6436g;
                if (iArr2[i2] <= iArr2[i2 + 1]) {
                    m23674f(i2);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: h */
    public final void m23672h() {
        while (true) {
            int i = this.f6434e;
            if (i > 1) {
                int i2 = i - 2;
                if (i2 > 0) {
                    int[] iArr = this.f6436g;
                    if (iArr[i2 - 1] < iArr[i2 + 1]) {
                        i2--;
                    }
                }
                m23674f(i2);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0063, code lost:
        r3 = r8;
        r5 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006e, code lost:
        r3 = r13 - m23675e((java.lang.Comparable) r1[r5], r0, r12, r13, r13 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007a, code lost:
        if (r3 == 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007c, code lost:
        r6 = r6 - r3;
        r7 = r7 - r3;
        r13 = r13 - r3;
        java.lang.System.arraycopy(r0, r7 + 1, r0, r6 + 1, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0086, code lost:
        if (r13 != 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0088, code lost:
        r3 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008a, code lost:
        r8 = r6 - 1;
        r9 = r5 - 1;
        r0[r6] = r1[r5];
        r15 = r15 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0094, code lost:
        if (r15 != 1) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0097, code lost:
        r5 = r15 - m23676d((java.lang.Comparable) r0[r7], r1, 0, r15, r15 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a3, code lost:
        if (r5 == 0) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a5, code lost:
        r6 = r8 - r5;
        r8 = r9 - r5;
        r15 = r15 - r5;
        java.lang.System.arraycopy(r1, r8 + 1, r0, r6 + 1, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b1, code lost:
        if (r15 > 1) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b3, code lost:
        r3 = r6;
        r5 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b6, code lost:
        r6 = r8;
        r8 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b8, code lost:
        r9 = r6 - 1;
        r10 = r7 - 1;
        r0[r6] = r0[r7];
        r13 = r13 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c2, code lost:
        if (r13 != 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c4, code lost:
        r5 = r8;
        r3 = r9;
        r7 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ec, code lost:
        r14 = r14 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ef, code lost:
        if (r3 < 7) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00f1, code lost:
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f3, code lost:
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00f4, code lost:
        if (r5 < 7) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f6, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f8, code lost:
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00fa, code lost:
        if ((r3 | r5) != false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00fc, code lost:
        if (r14 >= 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00fe, code lost:
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0106, code lost:
        r5 = r8;
        r6 = r9;
        r7 = r10;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m23671i(int r12, int r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.ComparableTimSort.m23671i(int, int, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0044, code lost:
        r4 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0062, code lost:
        r6 = m23675e((java.lang.Comparable) r0[r4], r1, r5, r13, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006a, code lost:
        if (r6 == 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006c, code lost:
        java.lang.System.arraycopy(r1, r5, r0, r3, r6);
        r3 = r3 + r6;
        r5 = r5 + r6;
        r13 = r13 - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0072, code lost:
        if (r13 > 1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0074, code lost:
        r6 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0076, code lost:
        r7 = r3 + 1;
        r8 = r4 + 1;
        r0[r3] = r0[r4];
        r15 = r15 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0080, code lost:
        if (r15 != 0) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0082, code lost:
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0084, code lost:
        r3 = m23676d((java.lang.Comparable) r1[r5], r0, r8, r15, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
        if (r3 == 0) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008e, code lost:
        java.lang.System.arraycopy(r0, r8, r0, r7, r3);
        r4 = r7 + r3;
        r7 = r8 + r3;
        r15 = r15 - r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0096, code lost:
        if (r15 != 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0098, code lost:
        r6 = r4;
        r4 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009b, code lost:
        r7 = r4;
        r4 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009f, code lost:
        r4 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a0, code lost:
        r8 = r7 + 1;
        r9 = r5 + 1;
        r0[r7] = r1[r5];
        r13 = r13 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00aa, code lost:
        if (r13 != 1) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ac, code lost:
        r6 = r8;
        r5 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00cc, code lost:
        r14 = r14 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00cf, code lost:
        if (r6 < 7) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00d1, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00d3, code lost:
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d4, code lost:
        if (r3 < 7) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00d6, code lost:
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00d8, code lost:
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00da, code lost:
        if ((r3 | r6) != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00dc, code lost:
        if (r14 >= 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00de, code lost:
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00e5, code lost:
        r3 = r8;
        r5 = r9;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m23670j(int r12, int r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.ComparableTimSort.m23670j(int, int, int, int):void");
    }

    /* renamed from: l */
    public final void m23668l(int i, int i2) {
        int[] iArr = this.f6435f;
        int i3 = this.f6434e;
        iArr[i3] = i;
        this.f6436g[i3] = i2;
        this.f6434e = i3 + 1;
    }
}
