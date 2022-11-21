package com.badlogic.gdx.utils;

import java.util.Comparator;
/* loaded from: classes.dex */
class TimSort<T> {

    /* renamed from: a */
    public T[] f6755a;

    /* renamed from: b */
    public Comparator<? super T> f6756b;

    /* renamed from: e */
    public int f6759e;

    /* renamed from: c */
    public int f6757c = 7;

    /* renamed from: f */
    public int f6760f = 0;

    /* renamed from: d */
    public T[] f6758d = (T[]) new Object[256];

    /* renamed from: g */
    public final int[] f6761g = new int[40];

    /* renamed from: h */
    public final int[] f6762h = new int[40];

    /* renamed from: k */
    public static int m23499k(int i) {
        int i2 = 0;
        while (i >= 32) {
            i2 |= i & 1;
            i >>= 1;
        }
        return i + i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void doSort(T[] tArr, Comparator<T> comparator, int i, int i2) {
        int i3;
        this.f6760f = 0;
        m23497m(tArr.length, i, i2);
        int i4 = i2 - i;
        if (i4 < 2) {
            return;
        }
        if (i4 < 32) {
            m23509a(tArr, i, i2, m23508b(tArr, i, i2, comparator) + i, comparator);
            return;
        }
        this.f6755a = tArr;
        this.f6756b = comparator;
        this.f6759e = 0;
        int m23499k = m23499k(i4);
        do {
            int m23508b = m23508b(tArr, i, i2, comparator);
            if (m23508b < m23499k) {
                if (i4 <= m23499k) {
                    i3 = i4;
                } else {
                    i3 = m23499k;
                }
                m23509a(tArr, i, i + i3, m23508b + i, comparator);
                m23508b = i3;
            }
            m23498l(i, m23508b);
            m23503g();
            i += m23508b;
            i4 -= m23508b;
        } while (i4 != 0);
        m23502h();
        this.f6755a = null;
        this.f6756b = null;
        T[] tArr2 = this.f6758d;
        int i5 = this.f6759e;
        for (int i6 = 0; i6 < i5; i6++) {
            tArr2[i6] = null;
        }
    }

    /* renamed from: a */
    public static <T> void m23509a(T[] tArr, int i, int i2, int i3, Comparator<? super T> comparator) {
        if (i3 == i) {
            i3++;
        }
        while (i3 < i2) {
            T t = tArr[i3];
            int i4 = i;
            int i5 = i3;
            while (i4 < i5) {
                int i6 = (i4 + i5) >>> 1;
                if (comparator.compare(t, tArr[i6]) < 0) {
                    i5 = i6;
                } else {
                    i4 = i6 + 1;
                }
            }
            int i7 = i3 - i4;
            if (i7 != 1) {
                if (i7 != 2) {
                    System.arraycopy(tArr, i4, tArr, i4 + 1, i7);
                    tArr[i4] = t;
                    i3++;
                } else {
                    tArr[i4 + 2] = tArr[i4 + 1];
                }
            }
            tArr[i4 + 1] = tArr[i4];
            tArr[i4] = t;
            i3++;
        }
    }

    /* renamed from: b */
    public static <T> int m23508b(T[] tArr, int i, int i2, Comparator<? super T> comparator) {
        int i3 = i + 1;
        if (i3 == i2) {
            return 1;
        }
        int i4 = i3 + 1;
        if (comparator.compare(tArr[i3], tArr[i]) < 0) {
            while (i4 < i2 && comparator.compare(tArr[i4], tArr[i4 - 1]) < 0) {
                i4++;
            }
            m23496n(tArr, i, i4);
        } else {
            while (i4 < i2 && comparator.compare(tArr[i4], tArr[i4 - 1]) >= 0) {
                i4++;
            }
        }
        return i4 - i;
    }

    /* renamed from: d */
    public static <T> int m23506d(T t, T[] tArr, int i, int i2, int i3, Comparator<? super T> comparator) {
        int i4;
        int i5;
        int i6 = i + i3;
        if (comparator.compare(t, tArr[i6]) > 0) {
            int i7 = i2 - i3;
            int i8 = 0;
            int i9 = 1;
            while (i9 < i7 && comparator.compare(t, tArr[i6 + i9]) > 0) {
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
            while (i14 < i12 && comparator.compare(t, tArr[i6 - i14]) <= 0) {
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
            if (comparator.compare(t, tArr[i + i20]) > 0) {
                i19 = i20 + 1;
            } else {
                i5 = i20;
            }
        }
        return i5;
    }

    /* renamed from: e */
    public static <T> int m23505e(T t, T[] tArr, int i, int i2, int i3, Comparator<? super T> comparator) {
        int i4;
        int i5;
        int i6 = i + i3;
        if (comparator.compare(t, tArr[i6]) < 0) {
            int i7 = i3 + 1;
            int i8 = 0;
            int i9 = 1;
            while (i9 < i7 && comparator.compare(t, tArr[i6 - i9]) < 0) {
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
            while (i14 < i12 && comparator.compare(t, tArr[i6 + i14]) >= 0) {
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
            if (comparator.compare(t, tArr[i + i19]) < 0) {
                i4 = i19;
            } else {
                i18 = i19 + 1;
            }
        }
        return i4;
    }

    /* renamed from: m */
    public static void m23497m(int i, int i2, int i3) {
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
    public static void m23496n(Object[] objArr, int i, int i2) {
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
    public final T[] m23507c(int i) {
        this.f6759e = Math.max(this.f6759e, i);
        if (this.f6758d.length < i) {
            int i2 = (i >> 1) | i;
            int i3 = i2 | (i2 >> 2);
            int i4 = i3 | (i3 >> 4);
            int i5 = i4 | (i4 >> 8);
            int i6 = (i5 | (i5 >> 16)) + 1;
            if (i6 >= 0) {
                i = Math.min(i6, this.f6755a.length >>> 1);
            }
            this.f6758d = (T[]) new Object[i];
        }
        return this.f6758d;
    }

    /* renamed from: f */
    public final void m23504f(int i) {
        int[] iArr = this.f6761g;
        int i2 = iArr[i];
        int[] iArr2 = this.f6762h;
        int i3 = iArr2[i];
        int i4 = i + 1;
        int i5 = iArr[i4];
        int i6 = iArr2[i4];
        iArr2[i] = i3 + i6;
        int i7 = this.f6760f;
        if (i == i7 - 3) {
            int i8 = i + 2;
            iArr[i4] = iArr[i8];
            iArr2[i4] = iArr2[i8];
        }
        this.f6760f = i7 - 1;
        T[] tArr = this.f6755a;
        int m23505e = m23505e(tArr[i5], tArr, i2, i3, 0, this.f6756b);
        int i9 = i2 + m23505e;
        int i10 = i3 - m23505e;
        if (i10 == 0) {
            return;
        }
        T[] tArr2 = this.f6755a;
        int m23506d = m23506d(tArr2[(i9 + i10) - 1], tArr2, i5, i6, i6 - 1, this.f6756b);
        if (m23506d == 0) {
            return;
        }
        if (i10 <= m23506d) {
            m23500j(i9, i10, i5, m23506d);
        } else {
            m23501i(i9, i10, i5, m23506d);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
        if (r1[r0 - 2] <= (r1[r0] + r1[r0 - 1])) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
        r1 = r5.f6762h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
        if (r1[r0 - 1] >= r1[r0 + 1]) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0036, code lost:
        r0 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0016, code lost:
        if (r1[r0 - 1] > (r1[r0] + r1[r0 + 1])) goto L13;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m23503g() {
        /*
            r5 = this;
        L0:
            int r0 = r5.f6760f
            r1 = 1
            if (r0 <= r1) goto L48
            int r0 = r0 + (-2)
            if (r0 < r1) goto L18
            int[] r1 = r5.f6762h
            int r2 = r0 + (-1)
            r2 = r1[r2]
            r3 = r1[r0]
            int r4 = r0 + 1
            r1 = r1[r4]
            int r3 = r3 + r1
            if (r2 <= r3) goto L2a
        L18:
            r1 = 2
            if (r0 < r1) goto L39
            int[] r1 = r5.f6762h
            int r2 = r0 + (-2)
            r2 = r1[r2]
            r3 = r1[r0]
            int r4 = r0 + (-1)
            r1 = r1[r4]
            int r3 = r3 + r1
            if (r2 > r3) goto L39
        L2a:
            int[] r1 = r5.f6762h
            int r2 = r0 + (-1)
            r2 = r1[r2]
            int r3 = r0 + 1
            r1 = r1[r3]
            if (r2 >= r1) goto L44
            int r0 = r0 + (-1)
            goto L44
        L39:
            int[] r1 = r5.f6762h
            r2 = r1[r0]
            int r3 = r0 + 1
            r1 = r1[r3]
            if (r2 <= r1) goto L44
            goto L48
        L44:
            r5.m23504f(r0)
            goto L0
        L48:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.TimSort.m23503g():void");
    }

    /* renamed from: h */
    public final void m23502h() {
        while (true) {
            int i = this.f6760f;
            if (i > 1) {
                int i2 = i - 2;
                if (i2 > 0) {
                    int[] iArr = this.f6762h;
                    if (iArr[i2 - 1] < iArr[i2 + 1]) {
                        i2--;
                    }
                }
                m23504f(i2);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
        r12 = r1;
        r13 = r2;
        r14 = r3;
        r15 = r4;
        r16 = r5;
        r17 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007c, code lost:
        r6 = r12 - m23505e(r8[r15], r7, r21, r12, r12 - 1, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008b, code lost:
        if (r6 == 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008d, code lost:
        r1 = r16 - r6;
        r2 = r17 - r6;
        r3 = r12 - r6;
        java.lang.System.arraycopy(r7, r2 + 1, r7, r1 + 1, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009a, code lost:
        if (r3 != 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009c, code lost:
        r12 = r1;
        r6 = r2;
        r1 = r3;
        r2 = r13;
        r3 = r14;
        r4 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a4, code lost:
        r16 = r1;
        r17 = r2;
        r12 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a9, code lost:
        r18 = r16 - 1;
        r19 = r15 - 1;
        r7[r16] = r8[r15];
        r13 = r13 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b3, code lost:
        if (r13 != 1) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b5, code lost:
        r1 = r12;
        r2 = r13;
        r3 = r14;
        r6 = r17;
        r12 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00bf, code lost:
        r1 = r13 - m23506d(r7[r17], r8, 0, r13, r13 - 1, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ce, code lost:
        if (r1 == 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d0, code lost:
        r2 = r18 - r1;
        r4 = r19 - r1;
        r3 = r13 - r1;
        java.lang.System.arraycopy(r8, r4 + 1, r7, r2 + 1, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00dd, code lost:
        if (r3 > 1) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00df, code lost:
        r1 = r12;
        r6 = r17;
        r12 = r2;
        r2 = r3;
        r3 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00e6, code lost:
        r18 = r2;
        r13 = r3;
        r19 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00eb, code lost:
        r16 = r18 - 1;
        r2 = r17 - 1;
        r7[r18] = r7[r17];
        r12 = r12 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f5, code lost:
        if (r12 != 0) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f7, code lost:
        r6 = r2;
        r1 = r12;
        r2 = r13;
        r3 = r14;
        r12 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0123, code lost:
        r14 = r14 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0126, code lost:
        if (r6 < 7) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0128, code lost:
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x012a, code lost:
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x012b, code lost:
        if (r1 < 7) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x012d, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x012f, code lost:
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0131, code lost:
        if ((r1 | r4) != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0133, code lost:
        if (r14 >= 0) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0135, code lost:
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0141, code lost:
        r17 = r2;
        r15 = r19;
     */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0074 A[EDGE_INSN: B:74:0x0074->B:23:0x0074 ?: BREAK  , SYNTHETIC] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m23501i(int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.TimSort.m23501i(int, int, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005f, code lost:
        r9 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0069, code lost:
        r12 = r1;
        r13 = r2;
        r14 = r3;
        r15 = r4;
        r16 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006f, code lost:
        r9 = r6;
        r6 = m23505e(r7[r15], r8, r6, r13, 0, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007b, code lost:
        if (r6 == 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007d, code lost:
        java.lang.System.arraycopy(r8, r9, r7, r14, r6);
        r1 = r14 + r6;
        r2 = r9 + r6;
        r3 = r13 - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0086, code lost:
        if (r3 > r10) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0088, code lost:
        r6 = r2;
        r2 = r3;
        r4 = r15;
        r5 = r16;
        r9 = 1;
        r17 = r12;
        r12 = r1;
        r1 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0095, code lost:
        r14 = r1;
        r9 = r2;
        r13 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0098, code lost:
        r5 = r14 + 1;
        r4 = r15 + 1;
        r7[r14] = r7[r15];
        r12 = r12 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a2, code lost:
        if (r12 != 0) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a4, code lost:
        r6 = r9;
        r1 = r12;
        r2 = r13;
        r9 = 1;
        r12 = r5;
        r5 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ac, code lost:
        r15 = r4;
        r1 = m23506d(r8[r9], r7, r4, r12, 0, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00bb, code lost:
        if (r1 == 0) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00bd, code lost:
        java.lang.System.arraycopy(r7, r15, r7, r5, r1);
        r2 = r5 + r1;
        r4 = r15 + r1;
        r3 = r12 - r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c6, code lost:
        if (r3 != 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c8, code lost:
        r12 = r2;
        r1 = r3;
        r6 = r9;
        r2 = r13;
        r5 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cf, code lost:
        r5 = r2;
        r12 = r3;
        r15 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d3, code lost:
        r5 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d4, code lost:
        r2 = r5 + 1;
        r6 = r9 + 1;
        r7[r5] = r8[r9];
        r13 = r13 - 1;
        r9 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00df, code lost:
        if (r13 != 1) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e1, code lost:
        r1 = r12;
        r4 = r15;
        r5 = r16;
        r12 = r2;
        r2 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0105, code lost:
        r16 = r16 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0108, code lost:
        if (r6 < 7) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x010a, code lost:
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x010c, code lost:
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x010d, code lost:
        if (r1 < 7) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x010f, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0111, code lost:
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0113, code lost:
        if ((r1 | r4) != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0115, code lost:
        if (r16 >= 0) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0117, code lost:
        r16 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0123, code lost:
        r14 = r2;
        r10 = 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0128 A[LOOP:1: B:12:0x0033->B:68:0x0128, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0069 A[EDGE_INSN: B:77:0x0069->B:25:0x0069 ?: BREAK  , SYNTHETIC] */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m23500j(int r19, int r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.TimSort.m23500j(int, int, int, int):void");
    }

    /* renamed from: l */
    public final void m23498l(int i, int i2) {
        int[] iArr = this.f6761g;
        int i3 = this.f6760f;
        iArr[i3] = i;
        this.f6762h[i3] = i2;
        this.f6760f = i3 + 1;
    }
}
