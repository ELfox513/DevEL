package p168r4;

import com.badlogic.gdx.net.HttpStatus;
import java.nio.ShortBuffer;
import java.util.Arrays;
/* renamed from: r4.ii2 */
/* loaded from: classes2.dex */
public final class ii2 {

    /* renamed from: a */
    public final int f25106a;

    /* renamed from: b */
    public final int f25107b;

    /* renamed from: c */
    public final float f25108c;

    /* renamed from: d */
    public final float f25109d;

    /* renamed from: e */
    public final float f25110e;

    /* renamed from: f */
    public final int f25111f;

    /* renamed from: g */
    public final int f25112g;

    /* renamed from: h */
    public final int f25113h;

    /* renamed from: i */
    public final short[] f25114i;

    /* renamed from: j */
    public short[] f25115j;

    /* renamed from: k */
    public int f25116k;

    /* renamed from: l */
    public short[] f25117l;

    /* renamed from: m */
    public int f25118m;

    /* renamed from: n */
    public short[] f25119n;

    /* renamed from: o */
    public int f25120o;

    /* renamed from: p */
    public int f25121p;

    /* renamed from: q */
    public int f25122q;

    /* renamed from: r */
    public int f25123r;

    /* renamed from: s */
    public int f25124s;

    /* renamed from: t */
    public int f25125t;

    /* renamed from: u */
    public int f25126u;

    /* renamed from: v */
    public int f25127v;

    /* renamed from: l */
    public static void m10638l(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr2[i9] * (i - i10)) + (sArr3[i8] * i10)) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }

    /* renamed from: a */
    public final int m10649a() {
        int i = this.f25116k * this.f25107b;
        return i + i;
    }

    /* renamed from: e */
    public final void m10645e() {
        this.f25116k = 0;
        this.f25118m = 0;
        this.f25120o = 0;
        this.f25121p = 0;
        this.f25122q = 0;
        this.f25123r = 0;
        this.f25124s = 0;
        this.f25125t = 0;
        this.f25126u = 0;
        this.f25127v = 0;
    }

    /* renamed from: f */
    public final int m10644f() {
        int i = this.f25118m * this.f25107b;
        return i + i;
    }

    /* renamed from: g */
    public final short[] m10643g(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.f25107b;
        int i4 = length / i3;
        if (i + i2 <= i4) {
            return sArr;
        }
        return Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    /* renamed from: d */
    public final void m10646d() {
        int i;
        int i2 = this.f25116k;
        float f = this.f25108c;
        float f2 = this.f25109d;
        int i3 = this.f25118m + ((int) ((((i2 / (f / f2)) + this.f25120o) / (this.f25110e * f2)) + 0.5f));
        short[] sArr = this.f25115j;
        int i4 = this.f25113h;
        this.f25115j = m10643g(sArr, i2, i4 + i4 + i2);
        int i5 = 0;
        while (true) {
            int i6 = this.f25113h;
            i = i6 + i6;
            int i7 = this.f25107b;
            if (i5 >= i * i7) {
                break;
            }
            this.f25115j[(i7 * i2) + i5] = 0;
            i5++;
        }
        this.f25116k += i;
        m10639k();
        if (this.f25118m > i3) {
            this.f25118m = i3;
        }
        this.f25116k = 0;
        this.f25123r = 0;
        this.f25120o = 0;
    }

    /* renamed from: h */
    public final void m10642h(short[] sArr, int i, int i2) {
        short[] m10643g = m10643g(this.f25117l, this.f25118m, i2);
        this.f25117l = m10643g;
        int i3 = this.f25107b;
        System.arraycopy(sArr, i * i3, m10643g, this.f25118m * i3, i3 * i2);
        this.f25118m += i2;
    }

    /* renamed from: i */
    public final void m10641i(short[] sArr, int i, int i2) {
        int i3 = this.f25113h / i2;
        int i4 = this.f25107b;
        int i5 = i2 * i4;
        int i6 = i * i4;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 += sArr[(i7 * i5) + i6 + i9];
            }
            this.f25114i[i7] = (short) (i8 / i5);
        }
    }

    /* renamed from: j */
    public final int m10640j(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.f25107b;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int i9 = 0;
            for (int i10 = 0; i10 < i2; i10++) {
                i9 += Math.abs(sArr[i4 + i10] - sArr[(i4 + i2) + i10]);
            }
            int i11 = i9 * i7;
            int i12 = i5 * i2;
            if (i11 < i12) {
                i5 = i9;
            }
            if (i11 < i12) {
                i7 = i2;
            }
            int i13 = i9 * i6;
            int i14 = i8 * i2;
            if (i13 > i14) {
                i8 = i9;
            }
            if (i13 > i14) {
                i6 = i2;
            }
            i2++;
        }
        this.f25126u = i5 / i7;
        this.f25127v = i8 / i6;
        return i7;
    }

    /* renamed from: k */
    public final void m10639k() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z;
        int i11 = this.f25118m;
        float f = this.f25108c;
        float f2 = this.f25109d;
        float f3 = f / f2;
        float f4 = this.f25110e * f2;
        double d = f3;
        float f5 = 1.0f;
        int i12 = 1;
        if (d <= 1.00001d && d >= 0.99999d) {
            m10642h(this.f25115j, 0, this.f25116k);
            this.f25116k = 0;
        } else {
            int i13 = this.f25116k;
            if (i13 >= this.f25113h) {
                int i14 = 0;
                while (true) {
                    int i15 = this.f25123r;
                    if (i15 > 0) {
                        int min = Math.min(this.f25113h, i15);
                        m10642h(this.f25115j, i14, min);
                        this.f25123r -= min;
                        i14 += min;
                    } else {
                        short[] sArr = this.f25115j;
                        int i16 = this.f25106a;
                        if (i16 > 4000) {
                            i = i16 / 4000;
                        } else {
                            i = 1;
                        }
                        if (this.f25107b == i12 && i == i12) {
                            i2 = m10640j(sArr, i14, this.f25111f, this.f25112g);
                        } else {
                            m10641i(sArr, i14, i);
                            int m10640j = m10640j(this.f25114i, 0, this.f25111f / i, this.f25112g / i);
                            if (i != i12) {
                                int i17 = m10640j * i;
                                int i18 = i * 4;
                                int i19 = i17 - i18;
                                int i20 = i17 + i18;
                                int i21 = this.f25111f;
                                if (i19 < i21) {
                                    i19 = i21;
                                }
                                int i22 = this.f25112g;
                                if (i20 > i22) {
                                    i20 = i22;
                                }
                                if (this.f25107b == i12) {
                                    i2 = m10640j(sArr, i14, i19, i20);
                                } else {
                                    m10641i(sArr, i14, i12);
                                    i2 = m10640j(this.f25114i, 0, i19, i20);
                                }
                            } else {
                                i2 = m10640j;
                            }
                        }
                        int i23 = this.f25126u;
                        int i24 = this.f25127v;
                        if (i23 != 0 && (i6 = this.f25124s) != 0 && i24 <= i23 * 3 && i23 + i23 > this.f25125t * 3) {
                            i3 = i6;
                        } else {
                            i3 = i2;
                        }
                        this.f25125t = i23;
                        this.f25124s = i2;
                        if (d > 1.0d) {
                            short[] sArr2 = this.f25115j;
                            if (f3 >= 2.0f) {
                                i5 = (int) (i3 / ((-1.0f) + f3));
                            } else {
                                this.f25123r = (int) ((i3 * (2.0f - f3)) / ((-1.0f) + f3));
                                i5 = i3;
                            }
                            short[] m10643g = m10643g(this.f25117l, this.f25118m, i5);
                            this.f25117l = m10643g;
                            int i25 = i5;
                            m10638l(i5, this.f25107b, m10643g, this.f25118m, sArr2, i14, sArr2, i14 + i3);
                            this.f25118m += i25;
                            i14 += i3 + i25;
                        } else {
                            int i26 = i3;
                            short[] sArr3 = this.f25115j;
                            if (f3 < 0.5f) {
                                i4 = (int) ((i26 * f3) / (f5 - f3));
                            } else {
                                this.f25123r = (int) ((i26 * ((f3 + f3) - 1.0f)) / (f5 - f3));
                                i4 = i26;
                            }
                            int i27 = i26 + i4;
                            short[] m10643g2 = m10643g(this.f25117l, this.f25118m, i27);
                            this.f25117l = m10643g2;
                            int i28 = this.f25107b;
                            System.arraycopy(sArr3, i14 * i28, m10643g2, this.f25118m * i28, i28 * i26);
                            m10638l(i4, this.f25107b, this.f25117l, this.f25118m + i26, sArr3, i14 + i26, sArr3, i14);
                            this.f25118m += i27;
                            i14 += i4;
                        }
                    }
                    if (this.f25113h + i14 > i13) {
                        break;
                    }
                    f5 = 1.0f;
                    i12 = 1;
                }
                int i29 = this.f25116k - i14;
                short[] sArr4 = this.f25115j;
                int i30 = this.f25107b;
                System.arraycopy(sArr4, i14 * i30, sArr4, 0, i30 * i29);
                this.f25116k = i29;
                f5 = 1.0f;
            }
        }
        if (f4 != f5 && this.f25118m != i11) {
            int i31 = this.f25106a;
            int i32 = (int) (i31 / f4);
            while (true) {
                if (i32 <= 16384 && i31 <= 16384) {
                    break;
                }
                i32 /= 2;
                i31 /= 2;
            }
            int i33 = this.f25118m - i11;
            short[] m10643g3 = m10643g(this.f25119n, this.f25120o, i33);
            this.f25119n = m10643g3;
            short[] sArr5 = this.f25117l;
            int i34 = this.f25107b;
            System.arraycopy(sArr5, i11 * i34, m10643g3, this.f25120o * i34, i34 * i33);
            this.f25118m = i11;
            this.f25120o += i33;
            int i35 = 0;
            while (true) {
                i7 = this.f25120o;
                i8 = i7 - 1;
                if (i35 >= i8) {
                    break;
                }
                while (true) {
                    i9 = this.f25121p + 1;
                    i10 = this.f25122q;
                    if (i9 * i32 <= i10 * i31) {
                        break;
                    }
                    this.f25117l = m10643g(this.f25117l, this.f25118m, 1);
                    int i36 = 0;
                    while (true) {
                        int i37 = this.f25107b;
                        if (i36 < i37) {
                            short[] sArr6 = this.f25117l;
                            int i38 = this.f25118m;
                            short[] sArr7 = this.f25119n;
                            int i39 = (i35 * i37) + i36;
                            short s = sArr7[i39];
                            short s2 = sArr7[i39 + i37];
                            int i40 = this.f25122q;
                            int i41 = this.f25121p;
                            int i42 = (i41 + 1) * i32;
                            int i43 = i42 - (i40 * i31);
                            int i44 = i42 - (i41 * i32);
                            sArr6[(i38 * i37) + i36] = (short) (((s * i43) + ((i44 - i43) * s2)) / i44);
                            i36++;
                        }
                    }
                    this.f25122q++;
                    this.f25118m++;
                }
                this.f25121p = i9;
                if (i9 == i31) {
                    this.f25121p = 0;
                    if (i10 == i32) {
                        z = true;
                    } else {
                        z = false;
                    }
                    C5903ja.m10371d(z);
                    this.f25122q = 0;
                }
                i35++;
            }
            if (i8 != 0) {
                short[] sArr8 = this.f25119n;
                int i45 = this.f25107b;
                System.arraycopy(sArr8, i8 * i45, sArr8, 0, (i7 - i8) * i45);
                this.f25120o -= i8;
            }
        }
    }

    public ii2(int i, int i2, float f, float f2, int i3) {
        this.f25106a = i;
        this.f25107b = i2;
        this.f25108c = f;
        this.f25109d = f2;
        this.f25110e = i / i3;
        this.f25111f = i / HttpStatus.SC_BAD_REQUEST;
        int i4 = i / 65;
        this.f25112g = i4;
        int i5 = i4 + i4;
        this.f25113h = i5;
        this.f25114i = new short[i5];
        int i6 = i5 * i2;
        this.f25115j = new short[i6];
        this.f25117l = new short[i6];
        this.f25119n = new short[i6];
    }

    /* renamed from: b */
    public final void m10648b(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.f25107b;
        int i2 = remaining / i;
        int i3 = i * i2;
        short[] m10643g = m10643g(this.f25115j, this.f25116k, i2);
        this.f25115j = m10643g;
        shortBuffer.get(m10643g, this.f25116k * this.f25107b, (i3 + i3) / 2);
        this.f25116k += i2;
        m10639k();
    }

    /* renamed from: c */
    public final void m10647c(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f25107b, this.f25118m);
        shortBuffer.put(this.f25117l, 0, this.f25107b * min);
        int i = this.f25118m - min;
        this.f25118m = i;
        short[] sArr = this.f25117l;
        int i2 = this.f25107b;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }
}
