package p168r4;

import com.badlogic.gdx.Input;
import com.badlogic.gdx.net.HttpStatus;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.gz3 */
/* loaded from: classes2.dex */
public final class gz3 {

    /* renamed from: a */
    public static final int[] f24377a = {1, 2, 3, 6};

    /* renamed from: b */
    public static final int[] f24378b = {48000, 44100, 32000};

    /* renamed from: c */
    public static final int[] f24379c = {24000, 22050, 16000};

    /* renamed from: d */
    public static final int[] f24380d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e */
    public static final int[] f24381e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};

    /* renamed from: f */
    public static final int[] f24382f = {69, 87, 104, 121, 139, 174, 208, Input.Keys.COLON, 278, 348, HttpStatus.SC_EXPECTATION_FAILED, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* renamed from: b */
    public static C5713e5 m11031b(C6423xb c6423xb, String str, String str2, fz3 fz3Var) {
        String str3;
        c6423xb.m5400s(2);
        int i = f24378b[(c6423xb.m5397v() & 192) >> 6];
        int m5397v = c6423xb.m5397v();
        int i2 = f24380d[(m5397v & 14) >> 1];
        if ((m5397v & 1) != 0) {
            i2++;
        }
        if (((c6423xb.m5397v() & 30) >> 1) > 0 && (2 & c6423xb.m5397v()) != 0) {
            i2 += 2;
        }
        if (c6423xb.m5407l() > 0 && (c6423xb.m5397v() & 1) != 0) {
            str3 = "audio/eac3-joc";
        } else {
            str3 = "audio/eac3";
        }
        C5639c5 c5639c5 = new C5639c5();
        c5639c5.m12579d(str);
        c5639c5.m12564n(str3);
        c5639c5.m12610B(i2);
        c5639c5.m12609C(i);
        c5639c5.m12561q(fz3Var);
        c5639c5.m12573g(str2);
        return c5639c5.m12603I();
    }

    /* renamed from: d */
    public static int m11029d(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            int i = ((bArr[3] & DefaultClassResolver.NAME) | ((bArr[2] & 7) << 8)) + 1;
            return i + i;
        }
        byte b = bArr[4];
        return m11028e((b & 192) >> 6, b & 63);
    }

    /* renamed from: c */
    public static ez3 m11030c(C6386wb c6386wb) {
        String str;
        int i;
        String str2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int m5785h;
        int i7;
        int i8;
        int i9;
        int i10;
        String str3;
        int i11;
        int m5790c = c6386wb.m5790c();
        c6386wb.m5787f(40);
        int m5785h2 = c6386wb.m5785h(5);
        c6386wb.m5789d(m5790c);
        int i12 = -1;
        if (m5785h2 > 10) {
            c6386wb.m5787f(16);
            int m5785h3 = c6386wb.m5785h(2);
            if (m5785h3 != 0) {
                if (m5785h3 != 1) {
                    if (m5785h3 == 2) {
                        i12 = 2;
                    }
                } else {
                    i12 = 1;
                }
            } else {
                i12 = 0;
            }
            c6386wb.m5787f(3);
            int m5785h4 = c6386wb.m5785h(11) + 1;
            int i13 = m5785h4 + m5785h4;
            int m5785h5 = c6386wb.m5785h(2);
            if (m5785h5 == 3) {
                i8 = f24379c[c6386wb.m5785h(2)];
                m5785h = 3;
                i7 = 6;
            } else {
                m5785h = c6386wb.m5785h(2);
                i7 = f24377a[m5785h];
                i8 = f24378b[m5785h5];
            }
            int i14 = i7 * 256;
            int m5785h6 = c6386wb.m5785h(3);
            boolean m5786g = c6386wb.m5786g();
            int i15 = f24380d[m5785h6] + (m5786g ? 1 : 0);
            c6386wb.m5787f(10);
            if (c6386wb.m5786g()) {
                c6386wb.m5787f(8);
            }
            if (m5785h6 == 0) {
                c6386wb.m5787f(5);
                if (c6386wb.m5786g()) {
                    c6386wb.m5787f(8);
                }
                i9 = 0;
                m5785h6 = 0;
            } else {
                i9 = m5785h6;
            }
            if (i12 == 1) {
                if (c6386wb.m5786g()) {
                    c6386wb.m5787f(16);
                }
                i10 = 1;
            } else {
                i10 = i12;
            }
            if (c6386wb.m5786g()) {
                if (i9 > 2) {
                    c6386wb.m5787f(2);
                }
                if ((i9 & 1) != 0 && i9 > 2) {
                    c6386wb.m5787f(6);
                }
                if ((i9 & 4) != 0) {
                    c6386wb.m5787f(6);
                }
                if (m5786g && c6386wb.m5786g()) {
                    c6386wb.m5787f(5);
                }
                if (i10 == 0) {
                    if (c6386wb.m5786g()) {
                        c6386wb.m5787f(6);
                    }
                    if (i9 == 0 && c6386wb.m5786g()) {
                        c6386wb.m5787f(6);
                    }
                    if (c6386wb.m5786g()) {
                        c6386wb.m5787f(6);
                    }
                    int m5785h7 = c6386wb.m5785h(2);
                    if (m5785h7 == 1) {
                        c6386wb.m5787f(5);
                    } else if (m5785h7 == 2) {
                        c6386wb.m5787f(12);
                    } else if (m5785h7 == 3) {
                        int m5785h8 = c6386wb.m5785h(5);
                        if (c6386wb.m5786g()) {
                            c6386wb.m5787f(5);
                            if (c6386wb.m5786g()) {
                                c6386wb.m5787f(4);
                            }
                            if (c6386wb.m5786g()) {
                                c6386wb.m5787f(4);
                            }
                            if (c6386wb.m5786g()) {
                                c6386wb.m5787f(4);
                            }
                            if (c6386wb.m5786g()) {
                                c6386wb.m5787f(4);
                            }
                            if (c6386wb.m5786g()) {
                                c6386wb.m5787f(4);
                            }
                            if (c6386wb.m5786g()) {
                                c6386wb.m5787f(4);
                            }
                            if (c6386wb.m5786g()) {
                                c6386wb.m5787f(4);
                            }
                            if (c6386wb.m5786g()) {
                                if (c6386wb.m5786g()) {
                                    c6386wb.m5787f(4);
                                }
                                if (c6386wb.m5786g()) {
                                    c6386wb.m5787f(4);
                                }
                            }
                        }
                        if (c6386wb.m5786g()) {
                            c6386wb.m5787f(5);
                            if (c6386wb.m5786g()) {
                                c6386wb.m5787f(7);
                                if (c6386wb.m5786g()) {
                                    c6386wb.m5787f(8);
                                    c6386wb.m5787f((m5785h8 + 2) * 8);
                                    c6386wb.m5783j();
                                }
                            }
                        }
                        c6386wb.m5787f((m5785h8 + 2) * 8);
                        c6386wb.m5783j();
                    }
                    if (i9 < 2) {
                        if (c6386wb.m5786g()) {
                            c6386wb.m5787f(14);
                        }
                        if (m5785h6 == 0 && c6386wb.m5786g()) {
                            c6386wb.m5787f(14);
                        }
                    }
                    if (c6386wb.m5786g()) {
                        if (m5785h == 0) {
                            c6386wb.m5787f(5);
                            i10 = 0;
                            m5785h = 0;
                        } else {
                            for (int i16 = 0; i16 < i7; i16++) {
                                if (c6386wb.m5786g()) {
                                    c6386wb.m5787f(5);
                                }
                            }
                        }
                    }
                    i10 = 0;
                }
            }
            if (c6386wb.m5786g()) {
                c6386wb.m5787f(5);
                if (i9 == 2) {
                    c6386wb.m5787f(4);
                    i9 = 2;
                }
                if (i9 >= 6) {
                    c6386wb.m5787f(2);
                }
                if (c6386wb.m5786g()) {
                    i11 = 8;
                    c6386wb.m5787f(8);
                } else {
                    i11 = 8;
                }
                if (i9 == 0 && c6386wb.m5786g()) {
                    c6386wb.m5787f(i11);
                }
                if (m5785h5 < 3) {
                    c6386wb.m5788e();
                }
            }
            if (i10 == 0 && m5785h != 3) {
                c6386wb.m5788e();
            }
            if (i10 == 2 && (m5785h == 3 || c6386wb.m5786g())) {
                c6386wb.m5787f(6);
            }
            if (c6386wb.m5786g() && c6386wb.m5785h(6) == 1 && c6386wb.m5785h(8) == 1) {
                str3 = "audio/eac3-joc";
            } else {
                str3 = "audio/eac3";
            }
            str2 = str3;
            i5 = i12;
            i2 = i13;
            i6 = i14;
            i3 = i8;
            i4 = i15;
        } else {
            c6386wb.m5787f(32);
            int m5785h9 = c6386wb.m5785h(2);
            if (m5785h9 == 3) {
                str = null;
            } else {
                str = "audio/ac3";
            }
            int m11028e = m11028e(m5785h9, c6386wb.m5785h(6));
            c6386wb.m5787f(8);
            int m5785h10 = c6386wb.m5785h(3);
            if ((m5785h10 & 1) != 0 && m5785h10 != 1) {
                c6386wb.m5787f(2);
            }
            if ((m5785h10 & 4) != 0) {
                c6386wb.m5787f(2);
            }
            if (m5785h10 == 2) {
                c6386wb.m5787f(2);
            }
            if (m5785h9 < 3) {
                i = f24378b[m5785h9];
            } else {
                i = -1;
            }
            str2 = str;
            i2 = m11028e;
            i3 = i;
            i4 = f24380d[m5785h10] + (c6386wb.m5786g() ? 1 : 0);
            i5 = -1;
            i6 = 1536;
        }
        return new ez3(str2, i5, i4, i3, i2, i6, null);
    }

    /* renamed from: e */
    public static int m11028e(int i, int i2) {
        int i3 = i2 / 2;
        if (i >= 0 && i < 3 && i2 >= 0 && i3 < 19) {
            int i4 = f24378b[i];
            if (i4 == 44100) {
                int i5 = f24382f[i3] + (i2 & 1);
                return i5 + i5;
            }
            int i6 = f24381e[i3];
            if (i4 == 32000) {
                return i6 * 6;
            }
            return i6 * 4;
        }
        return -1;
    }

    /* renamed from: a */
    public static C5713e5 m11032a(C6423xb c6423xb, String str, String str2, fz3 fz3Var) {
        int i = f24378b[(c6423xb.m5397v() & 192) >> 6];
        int m5397v = c6423xb.m5397v();
        int i2 = f24380d[(m5397v & 56) >> 3];
        if ((m5397v & 4) != 0) {
            i2++;
        }
        C5639c5 c5639c5 = new C5639c5();
        c5639c5.m12579d(str);
        c5639c5.m12564n("audio/ac3");
        c5639c5.m12610B(i2);
        c5639c5.m12609C(i);
        c5639c5.m12561q(fz3Var);
        c5639c5.m12573g(str2);
        return c5639c5.m12603I();
    }
}
