package p199v;

import android.graphics.Path;
import android.util.Log;
import java.util.ArrayList;
import net.bytebuddy.asm.Advice;
/* renamed from: v.c */
/* loaded from: classes.dex */
public class C6949c {

    /* renamed from: v.c$a */
    /* loaded from: classes.dex */
    public static class C6950a {

        /* renamed from: a */
        public int f35826a;

        /* renamed from: b */
        public boolean f35827b;
    }

    /* renamed from: v.c$b */
    /* loaded from: classes.dex */
    public static class C6951b {

        /* renamed from: a */
        public char f35828a;

        /* renamed from: b */
        public float[] f35829b;

        public C6951b(char c, float[] fArr) {
            this.f35828a = c;
            this.f35829b = fArr;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: a */
        public static void m2939a(Path path, float[] fArr, char c, char c2, float[] fArr2) {
            int i;
            int i2;
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            char c3 = c2;
            float f9 = fArr[0];
            float f10 = fArr[1];
            float f11 = fArr[2];
            float f12 = fArr[3];
            float f13 = fArr[4];
            float f14 = fArr[5];
            switch (c3) {
                case 'A':
                case 'a':
                    i = 7;
                    break;
                case 'C':
                case 'c':
                    i = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case 't':
                default:
                    i = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f13, f14);
                    f9 = f13;
                    f11 = f9;
                    f10 = f14;
                    f12 = f10;
                    i = 2;
                    break;
            }
            float f15 = f9;
            float f16 = f10;
            float f17 = f13;
            float f18 = f14;
            int i3 = 0;
            char c4 = c;
            while (i3 < fArr2.length) {
                if (c3 != 'A') {
                    if (c3 == 'C') {
                        i2 = i3;
                        int i4 = i2 + 2;
                        int i5 = i2 + 3;
                        int i6 = i2 + 4;
                        int i7 = i2 + 5;
                        path.cubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i4], fArr2[i5], fArr2[i6], fArr2[i7]);
                        f15 = fArr2[i6];
                        float f19 = fArr2[i7];
                        float f20 = fArr2[i4];
                        float f21 = fArr2[i5];
                        f16 = f19;
                        f12 = f21;
                        f11 = f20;
                    } else if (c3 == 'H') {
                        i2 = i3;
                        int i8 = i2 + 0;
                        path.lineTo(fArr2[i8], f16);
                        f15 = fArr2[i8];
                    } else if (c3 == 'Q') {
                        i2 = i3;
                        int i9 = i2 + 0;
                        int i10 = i2 + 1;
                        int i11 = i2 + 2;
                        int i12 = i2 + 3;
                        path.quadTo(fArr2[i9], fArr2[i10], fArr2[i11], fArr2[i12]);
                        float f22 = fArr2[i9];
                        float f23 = fArr2[i10];
                        f15 = fArr2[i11];
                        f16 = fArr2[i12];
                        f11 = f22;
                        f12 = f23;
                    } else if (c3 == 'V') {
                        i2 = i3;
                        int i13 = i2 + 0;
                        path.lineTo(f15, fArr2[i13]);
                        f16 = fArr2[i13];
                    } else if (c3 != 'a') {
                        if (c3 != 'c') {
                            if (c3 == 'h') {
                                int i14 = i3 + 0;
                                path.rLineTo(fArr2[i14], 0.0f);
                                f15 += fArr2[i14];
                            } else if (c3 != 'q') {
                                if (c3 == 'v') {
                                    int i15 = i3 + 0;
                                    path.rLineTo(0.0f, fArr2[i15]);
                                    f4 = fArr2[i15];
                                } else if (c3 == 'L') {
                                    int i16 = i3 + 0;
                                    int i17 = i3 + 1;
                                    path.lineTo(fArr2[i16], fArr2[i17]);
                                    f15 = fArr2[i16];
                                    f16 = fArr2[i17];
                                } else if (c3 == 'M') {
                                    f15 = fArr2[i3 + 0];
                                    f16 = fArr2[i3 + 1];
                                    if (i3 > 0) {
                                        path.lineTo(f15, f16);
                                    } else {
                                        path.moveTo(f15, f16);
                                        i2 = i3;
                                        f18 = f16;
                                        f17 = f15;
                                    }
                                } else if (c3 == 'S') {
                                    if (c4 == 'c' || c4 == 's' || c4 == 'C' || c4 == 'S') {
                                        f15 = (f15 * 2.0f) - f11;
                                        f16 = (f16 * 2.0f) - f12;
                                    }
                                    float f24 = f16;
                                    int i18 = i3 + 0;
                                    int i19 = i3 + 1;
                                    int i20 = i3 + 2;
                                    int i21 = i3 + 3;
                                    path.cubicTo(f15, f24, fArr2[i18], fArr2[i19], fArr2[i20], fArr2[i21]);
                                    f = fArr2[i18];
                                    f2 = fArr2[i19];
                                    f15 = fArr2[i20];
                                    f16 = fArr2[i21];
                                    f11 = f;
                                    f12 = f2;
                                } else if (c3 == 'T') {
                                    if (c4 == 'q' || c4 == 't' || c4 == 'Q' || c4 == 'T') {
                                        f15 = (f15 * 2.0f) - f11;
                                        f16 = (f16 * 2.0f) - f12;
                                    }
                                    int i22 = i3 + 0;
                                    int i23 = i3 + 1;
                                    path.quadTo(f15, f16, fArr2[i22], fArr2[i23]);
                                    float f25 = fArr2[i22];
                                    float f26 = fArr2[i23];
                                    i2 = i3;
                                    f12 = f16;
                                    f11 = f15;
                                    f15 = f25;
                                    f16 = f26;
                                } else if (c3 == 'l') {
                                    int i24 = i3 + 0;
                                    int i25 = i3 + 1;
                                    path.rLineTo(fArr2[i24], fArr2[i25]);
                                    f15 += fArr2[i24];
                                    f4 = fArr2[i25];
                                } else if (c3 == 'm') {
                                    float f27 = fArr2[i3 + 0];
                                    f15 += f27;
                                    float f28 = fArr2[i3 + 1];
                                    f16 += f28;
                                    if (i3 > 0) {
                                        path.rLineTo(f27, f28);
                                    } else {
                                        path.rMoveTo(f27, f28);
                                        i2 = i3;
                                        f18 = f16;
                                        f17 = f15;
                                    }
                                } else if (c3 == 's') {
                                    if (c4 == 'c' || c4 == 's' || c4 == 'C' || c4 == 'S') {
                                        float f29 = f15 - f11;
                                        f5 = f16 - f12;
                                        f6 = f29;
                                    } else {
                                        f6 = 0.0f;
                                        f5 = 0.0f;
                                    }
                                    int i26 = i3 + 0;
                                    int i27 = i3 + 1;
                                    int i28 = i3 + 2;
                                    int i29 = i3 + 3;
                                    path.rCubicTo(f6, f5, fArr2[i26], fArr2[i27], fArr2[i28], fArr2[i29]);
                                    f = fArr2[i26] + f15;
                                    f2 = fArr2[i27] + f16;
                                    f15 += fArr2[i28];
                                    f3 = fArr2[i29];
                                } else if (c3 == 't') {
                                    if (c4 == 'q' || c4 == 't' || c4 == 'Q' || c4 == 'T') {
                                        f7 = f15 - f11;
                                        f8 = f16 - f12;
                                    } else {
                                        f8 = 0.0f;
                                        f7 = 0.0f;
                                    }
                                    int i30 = i3 + 0;
                                    int i31 = i3 + 1;
                                    path.rQuadTo(f7, f8, fArr2[i30], fArr2[i31]);
                                    float f30 = f7 + f15;
                                    float f31 = f8 + f16;
                                    f15 += fArr2[i30];
                                    f16 += fArr2[i31];
                                    f12 = f31;
                                    f11 = f30;
                                }
                                f16 += f4;
                            } else {
                                int i32 = i3 + 0;
                                int i33 = i3 + 1;
                                int i34 = i3 + 2;
                                int i35 = i3 + 3;
                                path.rQuadTo(fArr2[i32], fArr2[i33], fArr2[i34], fArr2[i35]);
                                f = fArr2[i32] + f15;
                                f2 = fArr2[i33] + f16;
                                f15 += fArr2[i34];
                                f3 = fArr2[i35];
                            }
                            i2 = i3;
                        } else {
                            int i36 = i3 + 2;
                            int i37 = i3 + 3;
                            int i38 = i3 + 4;
                            int i39 = i3 + 5;
                            path.rCubicTo(fArr2[i3 + 0], fArr2[i3 + 1], fArr2[i36], fArr2[i37], fArr2[i38], fArr2[i39]);
                            f = fArr2[i36] + f15;
                            f2 = fArr2[i37] + f16;
                            f15 += fArr2[i38];
                            f3 = fArr2[i39];
                        }
                        f16 += f3;
                        f11 = f;
                        f12 = f2;
                        i2 = i3;
                    } else {
                        int i40 = i3 + 5;
                        int i41 = i3 + 6;
                        i2 = i3;
                        m2937c(path, f15, f16, fArr2[i40] + f15, fArr2[i41] + f16, fArr2[i3 + 0], fArr2[i3 + 1], fArr2[i3 + 2], fArr2[i3 + 3] != 0.0f, fArr2[i3 + 4] != 0.0f);
                        f15 += fArr2[i40];
                        f16 += fArr2[i41];
                    }
                    i3 = i2 + i;
                    c4 = c2;
                    c3 = c4;
                } else {
                    i2 = i3;
                    int i42 = i2 + 5;
                    int i43 = i2 + 6;
                    m2937c(path, f15, f16, fArr2[i42], fArr2[i43], fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3] != 0.0f, fArr2[i2 + 4] != 0.0f);
                    f15 = fArr2[i42];
                    f16 = fArr2[i43];
                }
                f12 = f16;
                f11 = f15;
                i3 = i2 + i;
                c4 = c2;
                c3 = c4;
            }
            fArr[0] = f15;
            fArr[1] = f16;
            fArr[2] = f11;
            fArr[3] = f12;
            fArr[4] = f17;
            fArr[5] = f18;
        }

        /* renamed from: b */
        public static void m2938b(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
            double d10 = d3;
            int ceil = (int) Math.ceil(Math.abs((d9 * 4.0d) / 3.141592653589793d));
            double cos = Math.cos(d7);
            double sin = Math.sin(d7);
            double cos2 = Math.cos(d8);
            double sin2 = Math.sin(d8);
            double d11 = -d10;
            double d12 = d11 * cos;
            double d13 = d4 * sin;
            double d14 = (d12 * sin2) - (d13 * cos2);
            double d15 = d11 * sin;
            double d16 = d4 * cos;
            double d17 = (sin2 * d15) + (cos2 * d16);
            double d18 = ceil;
            Double.isNaN(d18);
            double d19 = d9 / d18;
            double d20 = d8;
            double d21 = d17;
            double d22 = d14;
            int i = 0;
            double d23 = d5;
            double d24 = d6;
            while (i < ceil) {
                double d25 = d20 + d19;
                double sin3 = Math.sin(d25);
                double cos3 = Math.cos(d25);
                double d26 = (d + ((d10 * cos) * cos3)) - (d13 * sin3);
                double d27 = d2 + (d10 * sin * cos3) + (d16 * sin3);
                double d28 = (d12 * sin3) - (d13 * cos3);
                double d29 = (sin3 * d15) + (cos3 * d16);
                double d30 = d25 - d20;
                double tan = Math.tan(d30 / 2.0d);
                double sin4 = (Math.sin(d30) * (Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d)) / 3.0d;
                double d31 = d23 + (d22 * sin4);
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) d31, (float) (d24 + (d21 * sin4)), (float) (d26 - (sin4 * d28)), (float) (d27 - (sin4 * d29)), (float) d26, (float) d27);
                i++;
                d19 = d19;
                sin = sin;
                d23 = d26;
                d15 = d15;
                cos = cos;
                d20 = d25;
                d21 = d29;
                d22 = d28;
                ceil = ceil;
                d24 = d27;
                d10 = d3;
            }
        }

        /* renamed from: c */
        public static void m2937c(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            double d;
            double d2;
            double radians = Math.toRadians(f7);
            double cos = Math.cos(radians);
            double sin = Math.sin(radians);
            double d3 = f;
            Double.isNaN(d3);
            double d4 = d3 * cos;
            double d5 = f2;
            Double.isNaN(d5);
            double d6 = f5;
            Double.isNaN(d6);
            double d7 = (d4 + (d5 * sin)) / d6;
            double d8 = -f;
            Double.isNaN(d8);
            Double.isNaN(d5);
            double d9 = f6;
            Double.isNaN(d9);
            double d10 = ((d8 * sin) + (d5 * cos)) / d9;
            double d11 = f3;
            Double.isNaN(d11);
            double d12 = f4;
            Double.isNaN(d12);
            Double.isNaN(d6);
            double d13 = ((d11 * cos) + (d12 * sin)) / d6;
            double d14 = -f3;
            Double.isNaN(d14);
            Double.isNaN(d12);
            Double.isNaN(d9);
            double d15 = ((d14 * sin) + (d12 * cos)) / d9;
            double d16 = d7 - d13;
            double d17 = d10 - d15;
            double d18 = (d7 + d13) / 2.0d;
            double d19 = (d10 + d15) / 2.0d;
            double d20 = (d16 * d16) + (d17 * d17);
            if (d20 == 0.0d) {
                Log.w("PathParser", " Points are coincident");
                return;
            }
            double d21 = (1.0d / d20) - 0.25d;
            if (d21 < 0.0d) {
                Log.w("PathParser", "Points are too far apart " + d20);
                float sqrt = (float) (Math.sqrt(d20) / 1.99999d);
                m2937c(path, f, f2, f3, f4, f5 * sqrt, f6 * sqrt, f7, z, z2);
                return;
            }
            double sqrt2 = Math.sqrt(d21);
            double d22 = d16 * sqrt2;
            double d23 = sqrt2 * d17;
            if (z == z2) {
                d = d18 - d23;
                d2 = d19 + d22;
            } else {
                d = d18 + d23;
                d2 = d19 - d22;
            }
            double atan2 = Math.atan2(d10 - d2, d7 - d);
            double atan22 = Math.atan2(d15 - d2, d13 - d) - atan2;
            if (z2 != (atan22 >= 0.0d)) {
                atan22 = atan22 > 0.0d ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
            }
            Double.isNaN(d6);
            double d24 = d * d6;
            Double.isNaN(d9);
            double d25 = d2 * d9;
            m2938b(path, (d24 * cos) - (d25 * sin), (d24 * sin) + (d25 * cos), d6, d9, d3, d5, radians, atan2, atan22);
        }

        /* renamed from: e */
        public static void m2935e(C6951b[] c6951bArr, Path path) {
            float[] fArr = new float[6];
            char c = Advice.OffsetMapping.ForOrigin.Renderer.ForMethodName.SYMBOL;
            for (int i = 0; i < c6951bArr.length; i++) {
                C6951b c6951b = c6951bArr[i];
                m2939a(path, fArr, c, c6951b.f35828a, c6951b.f35829b);
                c = c6951bArr[i].f35828a;
            }
        }

        /* renamed from: d */
        public void m2936d(C6951b c6951b, C6951b c6951b2, float f) {
            this.f35828a = c6951b.f35828a;
            int i = 0;
            while (true) {
                float[] fArr = c6951b.f35829b;
                if (i < fArr.length) {
                    this.f35829b[i] = (fArr[i] * (1.0f - f)) + (c6951b2.f35829b[i] * f);
                    i++;
                } else {
                    return;
                }
            }
        }

        public C6951b(C6951b c6951b) {
            this.f35828a = c6951b.f35828a;
            float[] fArr = c6951b.f35829b;
            this.f35829b = C6949c.m2947c(fArr, 0, fArr.length);
        }
    }

    /* renamed from: a */
    public static void m2949a(ArrayList<C6951b> arrayList, char c, float[] fArr) {
        arrayList.add(new C6951b(c, fArr));
    }

    /* renamed from: b */
    public static boolean m2948b(C6951b[] c6951bArr, C6951b[] c6951bArr2) {
        if (c6951bArr == null || c6951bArr2 == null || c6951bArr.length != c6951bArr2.length) {
            return false;
        }
        for (int i = 0; i < c6951bArr.length; i++) {
            C6951b c6951b = c6951bArr[i];
            char c = c6951b.f35828a;
            C6951b c6951b2 = c6951bArr2[i];
            if (c != c6951b2.f35828a || c6951b.f35829b.length != c6951b2.f35829b.length) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003a A[LOOP:0: B:3:0x0007->B:24:0x003a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003d A[SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2943g(java.lang.String r8, int r9, p199v.C6949c.C6950a r10) {
        /*
            r0 = 0
            r10.f35827b = r0
            r1 = r9
            r2 = 0
            r3 = 0
            r4 = 0
        L7:
            int r5 = r8.length()
            if (r1 >= r5) goto L3d
            char r5 = r8.charAt(r1)
            r6 = 32
            r7 = 1
            if (r5 == r6) goto L35
            r6 = 69
            if (r5 == r6) goto L33
            r6 = 101(0x65, float:1.42E-43)
            if (r5 == r6) goto L33
            switch(r5) {
                case 44: goto L35;
                case 45: goto L2a;
                case 46: goto L22;
                default: goto L21;
            }
        L21:
            goto L31
        L22:
            if (r3 != 0) goto L27
            r2 = 0
            r3 = 1
            goto L37
        L27:
            r10.f35827b = r7
            goto L35
        L2a:
            if (r1 == r9) goto L31
            if (r2 != 0) goto L31
            r10.f35827b = r7
            goto L35
        L31:
            r2 = 0
            goto L37
        L33:
            r2 = 1
            goto L37
        L35:
            r2 = 0
            r4 = 1
        L37:
            if (r4 == 0) goto L3a
            goto L3d
        L3a:
            int r1 = r1 + 1
            goto L7
        L3d:
            r10.f35826a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p199v.C6949c.m2943g(java.lang.String, int, v.c$a):void");
    }

    /* renamed from: h */
    public static float[] m2942h(String str) {
        if (str.charAt(0) != 'z' && str.charAt(0) != 'Z') {
            try {
                float[] fArr = new float[str.length()];
                C6950a c6950a = new C6950a();
                int length = str.length();
                int i = 1;
                int i2 = 0;
                while (i < length) {
                    m2943g(str, i, c6950a);
                    int i3 = c6950a.f35826a;
                    if (i < i3) {
                        fArr[i2] = Float.parseFloat(str.substring(i, i3));
                        i2++;
                    }
                    if (c6950a.f35827b) {
                        i = i3;
                    } else {
                        i = i3 + 1;
                    }
                }
                return m2947c(fArr, 0, i2);
            } catch (NumberFormatException e) {
                throw new RuntimeException("error in parsing \"" + str + "\"", e);
            }
        }
        return new float[0];
    }

    /* renamed from: j */
    public static void m2940j(C6951b[] c6951bArr, C6951b[] c6951bArr2) {
        for (int i = 0; i < c6951bArr2.length; i++) {
            c6951bArr[i].f35828a = c6951bArr2[i].f35828a;
            int i2 = 0;
            while (true) {
                float[] fArr = c6951bArr2[i].f35829b;
                if (i2 < fArr.length) {
                    c6951bArr[i].f35829b[i2] = fArr[i2];
                    i2++;
                }
            }
        }
    }

    /* renamed from: c */
    public static float[] m2947c(float[] fArr, int i, int i2) {
        if (i <= i2) {
            int length = fArr.length;
            if (i >= 0 && i <= length) {
                int i3 = i2 - i;
                int min = Math.min(i3, length - i);
                float[] fArr2 = new float[i3];
                System.arraycopy(fArr, i, fArr2, 0, min);
                return fArr2;
            }
            throw new ArrayIndexOutOfBoundsException();
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: d */
    public static C6951b[] m2946d(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int m2941i = m2941i(str, i);
            String trim = str.substring(i2, m2941i).trim();
            if (trim.length() > 0) {
                m2949a(arrayList, trim.charAt(0), m2942h(trim));
            }
            i2 = m2941i;
            i = m2941i + 1;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            m2949a(arrayList, str.charAt(i2), new float[0]);
        }
        return (C6951b[]) arrayList.toArray(new C6951b[arrayList.size()]);
    }

    /* renamed from: e */
    public static Path m2945e(String str) {
        Path path = new Path();
        C6951b[] m2946d = m2946d(str);
        if (m2946d != null) {
            try {
                C6951b.m2935e(m2946d, path);
                return path;
            } catch (RuntimeException e) {
                throw new RuntimeException("Error in parsing " + str, e);
            }
        }
        return null;
    }

    /* renamed from: f */
    public static C6951b[] m2944f(C6951b[] c6951bArr) {
        if (c6951bArr == null) {
            return null;
        }
        C6951b[] c6951bArr2 = new C6951b[c6951bArr.length];
        for (int i = 0; i < c6951bArr.length; i++) {
            c6951bArr2[i] = new C6951b(c6951bArr[i]);
        }
        return c6951bArr2;
    }

    /* renamed from: i */
    public static int m2941i(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (((charAt - 'A') * (charAt - 'Z') <= 0 || (charAt - 'a') * (charAt - 'z') <= 0) && charAt != 'e' && charAt != 'E') {
                return i;
            }
            i++;
        }
        return i;
    }
}
