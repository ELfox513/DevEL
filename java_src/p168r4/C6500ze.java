package p168r4;

import com.badlogic.gdx.net.HttpStatus;
import java.nio.ShortBuffer;
import java.util.Arrays;
/* renamed from: r4.ze */
/* loaded from: classes2.dex */
public final class C6500ze {

    /* renamed from: a */
    public final int f34491a;

    /* renamed from: b */
    public final int f34492b;

    /* renamed from: c */
    public final int f34493c;

    /* renamed from: d */
    public final int f34494d;

    /* renamed from: e */
    public final int f34495e;

    /* renamed from: f */
    public final short[] f34496f;

    /* renamed from: g */
    public int f34497g;

    /* renamed from: h */
    public short[] f34498h;

    /* renamed from: i */
    public int f34499i;

    /* renamed from: j */
    public short[] f34500j;

    /* renamed from: k */
    public int f34501k;

    /* renamed from: l */
    public short[] f34502l;

    /* renamed from: q */
    public int f34507q;

    /* renamed from: r */
    public int f34508r;

    /* renamed from: s */
    public int f34509s;

    /* renamed from: t */
    public int f34510t;

    /* renamed from: v */
    public int f34512v;

    /* renamed from: w */
    public int f34513w;

    /* renamed from: x */
    public int f34514x;

    /* renamed from: m */
    public int f34503m = 0;

    /* renamed from: n */
    public int f34504n = 0;

    /* renamed from: u */
    public int f34511u = 0;

    /* renamed from: o */
    public float f34505o = 1.0f;

    /* renamed from: p */
    public float f34506p = 1.0f;

    /* renamed from: m */
    public static void m4280m(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
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
    public final void m4292a(float f) {
        this.f34505o = f;
    }

    /* renamed from: b */
    public final void m4291b(float f) {
        this.f34506p = f;
    }

    /* renamed from: f */
    public final int m4287f() {
        return this.f34508r;
    }

    /* renamed from: g */
    public final void m4286g(int i) {
        int i2 = this.f34508r;
        int i3 = this.f34499i;
        if (i2 + i > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.f34499i = i4;
            this.f34500j = Arrays.copyOf(this.f34500j, i4 * this.f34492b);
        }
    }

    /* renamed from: h */
    public final void m4285h(int i) {
        int i2 = this.f34507q;
        int i3 = this.f34497g;
        if (i2 + i > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.f34497g = i4;
            this.f34498h = Arrays.copyOf(this.f34498h, i4 * this.f34492b);
        }
    }

    /* renamed from: e */
    public final void m4288e() {
        int i;
        int i2 = this.f34507q;
        float f = this.f34505o;
        float f2 = this.f34506p;
        int i3 = this.f34508r + ((int) ((((i2 / (f / f2)) + this.f34509s) / f2) + 0.5f));
        int i4 = this.f34495e;
        m4285h(i4 + i4 + i2);
        int i5 = 0;
        while (true) {
            int i6 = this.f34495e;
            i = i6 + i6;
            int i7 = this.f34492b;
            if (i5 >= i * i7) {
                break;
            }
            this.f34498h[(i7 * i2) + i5] = 0;
            i5++;
        }
        this.f34507q += i;
        m4281l();
        if (this.f34508r > i3) {
            this.f34508r = i3;
        }
        this.f34507q = 0;
        this.f34510t = 0;
        this.f34509s = 0;
    }

    /* renamed from: j */
    public final void m4283j(short[] sArr, int i, int i2) {
        int i3 = this.f34495e / i2;
        int i4 = this.f34492b;
        int i5 = i2 * i4;
        int i6 = i * i4;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 += sArr[(i7 * i5) + i6 + i9];
            }
            this.f34496f[i7] = (short) (i8 / i5);
        }
    }

    /* renamed from: k */
    public final int m4282k(short[] sArr, int i, int i2, int i3) {
        int i4;
        int i5 = i * this.f34492b;
        int i6 = 1;
        int i7 = 255;
        int i8 = 0;
        int i9 = 0;
        while (i2 <= i3) {
            int i10 = 0;
            for (int i11 = 0; i11 < i2; i11++) {
                short s = sArr[i5 + i11];
                short s2 = sArr[i5 + i2 + i11];
                if (s >= s2) {
                    i4 = s - s2;
                } else {
                    i4 = s2 - s;
                }
                i10 += i4;
            }
            int i12 = i10 * i8;
            int i13 = i6 * i2;
            if (i12 < i13) {
                i6 = i10;
            }
            if (i12 < i13) {
                i8 = i2;
            }
            int i14 = i10 * i7;
            int i15 = i9 * i2;
            if (i14 > i15) {
                i9 = i10;
            }
            if (i14 > i15) {
                i7 = i2;
            }
            i2++;
        }
        this.f34513w = i6 / i8;
        this.f34514x = i9 / i7;
        return i8;
    }

    /* renamed from: l */
    public final void m4281l() {
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
        int i11 = this.f34508r;
        float f = this.f34505o / this.f34506p;
        double d = f;
        int i12 = 1;
        if (d <= 1.00001d && d >= 0.99999d) {
            m4284i(this.f34498h, 0, this.f34507q);
            this.f34507q = 0;
        } else {
            int i13 = this.f34507q;
            if (i13 >= this.f34495e) {
                int i14 = 0;
                while (true) {
                    int i15 = this.f34510t;
                    if (i15 > 0) {
                        int min = Math.min(this.f34495e, i15);
                        m4284i(this.f34498h, i14, min);
                        this.f34510t -= min;
                        i14 += min;
                    } else {
                        short[] sArr = this.f34498h;
                        int i16 = this.f34491a;
                        if (i16 > 4000) {
                            i = i16 / 4000;
                        } else {
                            i = 1;
                        }
                        if (this.f34492b == i12 && i == i12) {
                            i2 = m4282k(sArr, i14, this.f34493c, this.f34494d);
                        } else {
                            m4283j(sArr, i14, i);
                            int m4282k = m4282k(this.f34496f, 0, this.f34493c / i, this.f34494d / i);
                            if (i != i12) {
                                int i17 = m4282k * i;
                                int i18 = i * 4;
                                int i19 = i17 - i18;
                                int i20 = i17 + i18;
                                int i21 = this.f34493c;
                                if (i19 < i21) {
                                    i19 = i21;
                                }
                                int i22 = this.f34494d;
                                if (i20 > i22) {
                                    i20 = i22;
                                }
                                if (this.f34492b == i12) {
                                    i2 = m4282k(sArr, i14, i19, i20);
                                } else {
                                    m4283j(sArr, i14, i12);
                                    i2 = m4282k(this.f34496f, 0, i19, i20);
                                }
                            } else {
                                i2 = m4282k;
                            }
                        }
                        int i23 = this.f34513w;
                        int i24 = this.f34514x;
                        if (i23 != 0 && (i6 = this.f34511u) != 0 && i24 <= i23 * 3 && i23 + i23 > this.f34512v * 3) {
                            i3 = i6;
                        } else {
                            i3 = i2;
                        }
                        this.f34512v = i23;
                        this.f34511u = i2;
                        if (d > 1.0d) {
                            short[] sArr2 = this.f34498h;
                            if (f >= 2.0f) {
                                i5 = (int) (i3 / ((-1.0f) + f));
                            } else {
                                this.f34510t = (int) ((i3 * (2.0f - f)) / ((-1.0f) + f));
                                i5 = i3;
                            }
                            m4286g(i5);
                            int i25 = i5;
                            m4280m(i5, this.f34492b, this.f34500j, this.f34508r, sArr2, i14, sArr2, i14 + i3);
                            this.f34508r += i25;
                            i14 += i3 + i25;
                        } else {
                            int i26 = i3;
                            short[] sArr3 = this.f34498h;
                            if (f < 0.5f) {
                                i4 = (int) ((i26 * f) / (1.0f - f));
                            } else {
                                this.f34510t = (int) ((i26 * ((f + f) - 1.0f)) / (1.0f - f));
                                i4 = i26;
                            }
                            int i27 = i26 + i4;
                            m4286g(i27);
                            int i28 = this.f34492b;
                            System.arraycopy(sArr3, i14 * i28, this.f34500j, this.f34508r * i28, i28 * i26);
                            m4280m(i4, this.f34492b, this.f34500j, this.f34508r + i26, sArr3, i26 + i14, sArr3, i14);
                            this.f34508r += i27;
                            i14 += i4;
                        }
                    }
                    if (this.f34495e + i14 > i13) {
                        break;
                    }
                    i12 = 1;
                }
                int i29 = this.f34507q - i14;
                short[] sArr4 = this.f34498h;
                int i30 = this.f34492b;
                System.arraycopy(sArr4, i14 * i30, sArr4, 0, i30 * i29);
                this.f34507q = i29;
            }
        }
        float f2 = this.f34506p;
        if (f2 != 1.0f && this.f34508r != i11) {
            int i31 = this.f34491a;
            int i32 = (int) (i31 / f2);
            while (true) {
                if (i32 <= 16384 && i31 <= 16384) {
                    break;
                }
                i32 /= 2;
                i31 /= 2;
            }
            int i33 = this.f34508r - i11;
            int i34 = this.f34509s;
            int i35 = this.f34501k;
            if (i34 + i33 > i35) {
                int i36 = i35 + (i35 / 2) + i33;
                this.f34501k = i36;
                this.f34502l = Arrays.copyOf(this.f34502l, i36 * this.f34492b);
            }
            short[] sArr5 = this.f34500j;
            int i37 = this.f34492b;
            System.arraycopy(sArr5, i11 * i37, this.f34502l, this.f34509s * i37, i37 * i33);
            this.f34508r = i11;
            this.f34509s += i33;
            int i38 = 0;
            while (true) {
                i7 = this.f34509s;
                i8 = i7 - 1;
                if (i38 >= i8) {
                    break;
                }
                while (true) {
                    i9 = this.f34503m + 1;
                    i10 = this.f34504n;
                    if (i9 * i32 <= i10 * i31) {
                        break;
                    }
                    m4286g(1);
                    int i39 = 0;
                    while (true) {
                        int i40 = this.f34492b;
                        if (i39 < i40) {
                            short[] sArr6 = this.f34500j;
                            int i41 = this.f34508r;
                            short[] sArr7 = this.f34502l;
                            int i42 = (i38 * i40) + i39;
                            short s = sArr7[i42];
                            short s2 = sArr7[i42 + i40];
                            int i43 = this.f34504n;
                            int i44 = this.f34503m;
                            int i45 = (i44 + 1) * i32;
                            int i46 = i45 - (i43 * i31);
                            int i47 = i45 - (i44 * i32);
                            sArr6[(i41 * i40) + i39] = (short) (((s * i46) + ((i47 - i46) * s2)) / i47);
                            i39++;
                        }
                    }
                    this.f34504n++;
                    this.f34508r++;
                }
                this.f34503m = i9;
                if (i9 == i31) {
                    this.f34503m = 0;
                    if (i10 == i32) {
                        z = true;
                    } else {
                        z = false;
                    }
                    C6358vk.m6137d(z);
                    this.f34504n = 0;
                }
                i38++;
            }
            if (i8 != 0) {
                short[] sArr8 = this.f34502l;
                int i48 = this.f34492b;
                System.arraycopy(sArr8, i8 * i48, sArr8, 0, (i7 - i8) * i48);
                this.f34509s -= i8;
            }
        }
    }

    public C6500ze(int i, int i2) {
        this.f34491a = i;
        this.f34492b = i2;
        this.f34493c = i / HttpStatus.SC_BAD_REQUEST;
        int i3 = i / 65;
        this.f34494d = i3;
        int i4 = i3 + i3;
        this.f34495e = i4;
        this.f34496f = new short[i4];
        this.f34497g = i4;
        int i5 = i2 * i4;
        this.f34498h = new short[i5];
        this.f34499i = i4;
        this.f34500j = new short[i5];
        this.f34501k = i4;
        this.f34502l = new short[i5];
    }

    /* renamed from: c */
    public final void m4290c(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.f34492b;
        int i2 = remaining / i;
        int i3 = i * i2;
        m4285h(i2);
        shortBuffer.get(this.f34498h, this.f34507q * this.f34492b, (i3 + i3) / 2);
        this.f34507q += i2;
        m4281l();
    }

    /* renamed from: d */
    public final void m4289d(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f34492b, this.f34508r);
        shortBuffer.put(this.f34500j, 0, this.f34492b * min);
        int i = this.f34508r - min;
        this.f34508r = i;
        short[] sArr = this.f34500j;
        int i2 = this.f34492b;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }

    /* renamed from: i */
    public final void m4284i(short[] sArr, int i, int i2) {
        m4286g(i2);
        int i3 = this.f34492b;
        System.arraycopy(sArr, i * i3, this.f34500j, this.f34508r * i3, i3 * i2);
        this.f34508r += i2;
    }
}
