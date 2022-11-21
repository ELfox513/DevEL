package p168r4;

import java.util.Arrays;
/* renamed from: r4.ip3 */
/* loaded from: classes2.dex */
public final class ip3 {

    /* renamed from: f */
    public static final ip3 f25240f = new ip3(0, new int[0], new Object[0], false);

    /* renamed from: a */
    public int f25241a;

    /* renamed from: b */
    public int[] f25242b;

    /* renamed from: c */
    public Object[] f25243c;

    /* renamed from: d */
    public int f25244d;

    /* renamed from: e */
    public boolean f25245e;

    public ip3() {
        this(0, new int[8], new Object[8], true);
    }

    public ip3(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f25244d = -1;
        this.f25241a = i;
        this.f25242b = iArr;
        this.f25243c = objArr;
        this.f25245e = z;
    }

    /* renamed from: a */
    public static ip3 m10572a() {
        return f25240f;
    }

    /* renamed from: b */
    public static ip3 m10571b() {
        return new ip3(0, new int[8], new Object[8], true);
    }

    /* renamed from: d */
    public final void m10569d() {
        this.f25245e = false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ip3)) {
            return false;
        }
        ip3 ip3Var = (ip3) obj;
        int i = this.f25241a;
        if (i == ip3Var.f25241a) {
            int[] iArr = this.f25242b;
            int[] iArr2 = ip3Var.f25242b;
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    if (iArr[i2] != iArr2[i2]) {
                        break;
                    }
                    i2++;
                } else {
                    Object[] objArr = this.f25243c;
                    Object[] objArr2 = ip3Var.f25243c;
                    int i3 = this.f25241a;
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

    /* renamed from: g */
    public final void m10566g(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f25241a; i2++) {
            co3.m12379b(sb, i, String.valueOf(this.f25242b[i2] >>> 3), this.f25243c[i2]);
        }
    }

    /* renamed from: c */
    public static ip3 m10570c(ip3 ip3Var, ip3 ip3Var2) {
        int i = ip3Var.f25241a + ip3Var2.f25241a;
        int[] copyOf = Arrays.copyOf(ip3Var.f25242b, i);
        System.arraycopy(ip3Var2.f25242b, 0, copyOf, ip3Var.f25241a, ip3Var2.f25241a);
        Object[] copyOf2 = Arrays.copyOf(ip3Var.f25243c, i);
        System.arraycopy(ip3Var2.f25243c, 0, copyOf2, ip3Var.f25241a, ip3Var2.f25241a);
        return new ip3(i, copyOf, copyOf2, true);
    }

    /* renamed from: e */
    public final int m10568e() {
        int i = this.f25244d;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.f25241a; i3++) {
                int i4 = this.f25242b[i3];
                int m5676B = wl3.m5676B(8);
                int mo7747o = ((ll3) this.f25243c[i3]).mo7747o();
                i2 += m5676B + m5676B + wl3.m5676B(16) + wl3.m5676B(i4 >>> 3) + wl3.m5676B(24) + wl3.m5676B(mo7747o) + mo7747o;
            }
            this.f25244d = i2;
            return i2;
        }
        return i;
    }

    /* renamed from: f */
    public final int m10567f() {
        int m5676B;
        int m5675C;
        int i;
        int i2 = this.f25244d;
        if (i2 == -1) {
            int i3 = 0;
            for (int i4 = 0; i4 < this.f25241a; i4++) {
                int i5 = this.f25242b[i4];
                int i6 = i5 >>> 3;
                int i7 = i5 & 7;
                if (i7 != 0) {
                    if (i7 != 1) {
                        if (i7 != 2) {
                            if (i7 != 3) {
                                if (i7 == 5) {
                                    ((Integer) this.f25243c[i4]).intValue();
                                    i = wl3.m5676B(i6 << 3) + 4;
                                } else {
                                    throw new IllegalStateException(bn3.m12735i());
                                }
                            } else {
                                int m5648z = wl3.m5648z(i6);
                                m5676B = m5648z + m5648z;
                                m5675C = ((ip3) this.f25243c[i4]).m10567f();
                            }
                        } else {
                            int m5676B2 = wl3.m5676B(i6 << 3);
                            int mo7747o = ((ll3) this.f25243c[i4]).mo7747o();
                            i3 += m5676B2 + wl3.m5676B(mo7747o) + mo7747o;
                        }
                    } else {
                        ((Long) this.f25243c[i4]).longValue();
                        i = wl3.m5676B(i6 << 3) + 8;
                    }
                    i3 += i;
                } else {
                    long longValue = ((Long) this.f25243c[i4]).longValue();
                    m5676B = wl3.m5676B(i6 << 3);
                    m5675C = wl3.m5675C(longValue);
                }
                i = m5676B + m5675C;
                i3 += i;
            }
            this.f25244d = i3;
            return i3;
        }
        return i2;
    }

    /* renamed from: h */
    public final void m10565h(int i, Object obj) {
        int i2;
        if (this.f25245e) {
            int i3 = this.f25241a;
            int[] iArr = this.f25242b;
            if (i3 == iArr.length) {
                if (i3 < 4) {
                    i2 = 8;
                } else {
                    i2 = i3 >> 1;
                }
                int i4 = i3 + i2;
                this.f25242b = Arrays.copyOf(iArr, i4);
                this.f25243c = Arrays.copyOf(this.f25243c, i4);
            }
            int[] iArr2 = this.f25242b;
            int i5 = this.f25241a;
            iArr2[i5] = i;
            this.f25243c[i5] = obj;
            this.f25241a = i5 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final int hashCode() {
        int i = this.f25241a;
        int i2 = (i + 527) * 31;
        int[] iArr = this.f25242b;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 + i4) * 31;
        Object[] objArr = this.f25243c;
        int i7 = this.f25241a;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    /* renamed from: i */
    public final void m10564i(xl3 xl3Var) {
        if (this.f25241a != 0) {
            for (int i = 0; i < this.f25241a; i++) {
                int i2 = this.f25242b[i];
                Object obj = this.f25243c[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 != 0) {
                    if (i4 != 1) {
                        if (i4 != 2) {
                            if (i4 != 3) {
                                if (i4 == 5) {
                                    xl3Var.m5251v(i3, ((Integer) obj).intValue());
                                } else {
                                    throw new RuntimeException(bn3.m12735i());
                                }
                            } else {
                                xl3Var.m5279E(i3);
                                ((ip3) obj).m10564i(xl3Var);
                                xl3Var.m5278F(i3);
                            }
                        } else {
                            xl3Var.m5248y(i3, (ll3) obj);
                        }
                    } else {
                        xl3Var.m5252u(i3, ((Long) obj).longValue());
                    }
                } else {
                    xl3Var.m5259n(i3, ((Long) obj).longValue());
                }
            }
        }
    }
}
