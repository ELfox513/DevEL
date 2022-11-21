package p018b5;

import java.util.Arrays;
/* renamed from: b5.ib */
/* loaded from: classes2.dex */
public final class C0703ib {

    /* renamed from: f */
    public static final C0703ib f1901f = new C0703ib(0, new int[0], new Object[0], false);

    /* renamed from: a */
    public int f1902a;

    /* renamed from: b */
    public int[] f1903b;

    /* renamed from: c */
    public Object[] f1904c;

    /* renamed from: d */
    public int f1905d;

    /* renamed from: e */
    public boolean f1906e;

    public C0703ib() {
        this(0, new int[8], new Object[8], true);
    }

    public C0703ib(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f1905d = -1;
        this.f1902a = i;
        this.f1903b = iArr;
        this.f1904c = objArr;
        this.f1906e = z;
    }

    /* renamed from: c */
    public static C0703ib m25792c() {
        return f1901f;
    }

    /* renamed from: e */
    public static C0703ib m25790e() {
        return new C0703ib(0, new int[8], new Object[8], true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C0703ib)) {
            return false;
        }
        C0703ib c0703ib = (C0703ib) obj;
        int i = this.f1902a;
        if (i == c0703ib.f1902a) {
            int[] iArr = this.f1903b;
            int[] iArr2 = c0703ib.f1903b;
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    if (iArr[i2] != iArr2[i2]) {
                        break;
                    }
                    i2++;
                } else {
                    Object[] objArr = this.f1904c;
                    Object[] objArr2 = c0703ib.f1904c;
                    int i3 = this.f1902a;
                    for (int i4 = 0; i4 < i3; i4++) {
                        if (objArr[i4].equals(objArr2[i4])) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: f */
    public final void m25789f() {
        this.f1906e = false;
    }

    /* renamed from: g */
    public final void m25788g(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f1902a; i2++) {
            C0668ga.m25888b(sb, i, String.valueOf(this.f1903b[i2] >>> 3), this.f1904c[i2]);
        }
    }

    /* renamed from: d */
    public static C0703ib m25791d(C0703ib c0703ib, C0703ib c0703ib2) {
        int i = c0703ib.f1902a + c0703ib2.f1902a;
        int[] copyOf = Arrays.copyOf(c0703ib.f1903b, i);
        System.arraycopy(c0703ib2.f1903b, 0, copyOf, c0703ib.f1902a, c0703ib2.f1902a);
        Object[] copyOf2 = Arrays.copyOf(c0703ib.f1904c, i);
        System.arraycopy(c0703ib2.f1904c, 0, copyOf2, c0703ib.f1902a, c0703ib2.f1902a);
        return new C0703ib(i, copyOf, copyOf2, true);
    }

    /* renamed from: a */
    public final int m25794a() {
        int m25976a;
        int m25975b;
        int i;
        int i2 = this.f1905d;
        if (i2 == -1) {
            int i3 = 0;
            for (int i4 = 0; i4 < this.f1902a; i4++) {
                int i5 = this.f1903b[i4];
                int i6 = i5 >>> 3;
                int i7 = i5 & 7;
                if (i7 != 0) {
                    if (i7 != 1) {
                        if (i7 != 2) {
                            if (i7 != 3) {
                                if (i7 == 5) {
                                    ((Integer) this.f1904c[i4]).intValue();
                                    i = AbstractC0649f8.m25976a(i6 << 3) + 4;
                                } else {
                                    throw new IllegalStateException(C0684h9.m25865a());
                                }
                            } else {
                                int m25977D = AbstractC0649f8.m25977D(i6);
                                m25976a = m25977D + m25977D;
                                m25975b = ((C0703ib) this.f1904c[i4]).m25794a();
                            }
                        } else {
                            int m25976a2 = AbstractC0649f8.m25976a(i6 << 3);
                            int mo25037g = ((AbstractC0937w7) this.f1904c[i4]).mo25037g();
                            i3 += m25976a2 + AbstractC0649f8.m25976a(mo25037g) + mo25037g;
                        }
                    } else {
                        ((Long) this.f1904c[i4]).longValue();
                        i = AbstractC0649f8.m25976a(i6 << 3) + 8;
                    }
                    i3 += i;
                } else {
                    long longValue = ((Long) this.f1904c[i4]).longValue();
                    m25976a = AbstractC0649f8.m25976a(i6 << 3);
                    m25975b = AbstractC0649f8.m25975b(longValue);
                }
                i = m25976a + m25975b;
                i3 += i;
            }
            this.f1905d = i3;
            return i3;
        }
        return i2;
    }

    /* renamed from: b */
    public final int m25793b() {
        int i = this.f1905d;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.f1902a; i3++) {
                int i4 = this.f1903b[i3];
                int m25976a = AbstractC0649f8.m25976a(8);
                int mo25037g = ((AbstractC0937w7) this.f1904c[i3]).mo25037g();
                i2 += m25976a + m25976a + AbstractC0649f8.m25976a(16) + AbstractC0649f8.m25976a(i4 >>> 3) + AbstractC0649f8.m25976a(24) + AbstractC0649f8.m25976a(mo25037g) + mo25037g;
            }
            this.f1905d = i2;
            return i2;
        }
        return i;
    }

    /* renamed from: h */
    public final void m25787h(int i, Object obj) {
        int i2;
        if (this.f1906e) {
            int i3 = this.f1902a;
            int[] iArr = this.f1903b;
            if (i3 == iArr.length) {
                if (i3 < 4) {
                    i2 = 8;
                } else {
                    i2 = i3 >> 1;
                }
                int i4 = i3 + i2;
                this.f1903b = Arrays.copyOf(iArr, i4);
                this.f1904c = Arrays.copyOf(this.f1904c, i4);
            }
            int[] iArr2 = this.f1903b;
            int i5 = this.f1902a;
            iArr2[i5] = i;
            this.f1904c[i5] = obj;
            this.f1902a = i5 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final int hashCode() {
        int i = this.f1902a;
        int i2 = (i + 527) * 31;
        int[] iArr = this.f1903b;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 + i4) * 31;
        Object[] objArr = this.f1904c;
        int i7 = this.f1902a;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    /* renamed from: i */
    public final void m25786i(C0666g8 c0666g8) {
        if (this.f1902a != 0) {
            for (int i = 0; i < this.f1902a; i++) {
                int i2 = this.f1903b[i];
                Object obj = this.f1904c[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 != 0) {
                    if (i4 != 1) {
                        if (i4 != 2) {
                            if (i4 != 3) {
                                if (i4 == 5) {
                                    c0666g8.m25894v(i3, ((Integer) obj).intValue());
                                } else {
                                    throw new RuntimeException(C0684h9.m25865a());
                                }
                            } else {
                                c0666g8.m25911e(i3);
                                ((C0703ib) obj).m25786i(c0666g8);
                                c0666g8.m25897s(i3);
                            }
                        } else {
                            c0666g8.m25901o(i3, (AbstractC0937w7) obj);
                        }
                    } else {
                        c0666g8.m25892x(i3, ((Long) obj).longValue());
                    }
                } else {
                    c0666g8.m25922E(i3, ((Long) obj).longValue());
                }
            }
        }
    }
}
