package com.esotericsoftware.asm;

import com.badlogic.gdx.net.HttpStatus;
import net.bytebuddy.implementation.auxiliary.TypeProxy;
/* loaded from: classes.dex */
final class Frame {

    /* renamed from: i */
    public static final int[] f7067i;

    /* renamed from: a */
    public Label f7068a;

    /* renamed from: b */
    public int[] f7069b;

    /* renamed from: c */
    public int[] f7070c;

    /* renamed from: d */
    public int[] f7071d;

    /* renamed from: e */
    public int[] f7072e;

    /* renamed from: f */
    public int f7073f;

    /* renamed from: g */
    public int f7074g;

    /* renamed from: h */
    public int[] f7075h;

    static {
        m23379a();
        int[] iArr = new int[HttpStatus.SC_ACCEPTED];
        for (int i = 0; i < 202; i++) {
            iArr[i] = "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE".charAt(i) - 'E';
        }
        f7067i = iArr;
    }

    /* renamed from: a */
    public static /* synthetic */ void m23379a() {
    }

    /* renamed from: j */
    public static boolean m23370j(ClassWriter classWriter, int i, int[] iArr, int i2) {
        int min;
        int i3 = iArr[i2];
        if (i3 == i) {
            return false;
        }
        if ((268435455 & i) == 16777221) {
            if (i3 == 16777221) {
                return false;
            }
            i = 16777221;
        }
        if (i3 == 0) {
            iArr[i2] = i;
            return true;
        }
        int i4 = i3 & 267386880;
        int i5 = 16777216;
        int i6 = -268435456;
        if (i4 == 24117248 || (i3 & (-268435456)) != 0) {
            if (i == 16777221) {
                return false;
            }
            if ((i & (-1048576)) != ((-1048576) & i3)) {
                int i7 = i & 267386880;
                if (i7 == 24117248 || (i & (-268435456)) != 0) {
                    int i8 = i & (-268435456);
                    int i9 = ((i8 == 0 || i7 == 24117248) ? 0 : -268435456) + i8;
                    int i10 = i3 & (-268435456);
                    min = Math.min(i9, ((i10 == 0 || i4 == 24117248) ? 0 : 0) + i10);
                    i5 = min | 24117248 | classWriter.m23384t(TypeProxy.SilentConstruction.Appender.JAVA_LANG_OBJECT_INTERNAL_NAME);
                }
            } else if (i4 == 24117248) {
                i5 = (i & (-268435456)) | 24117248 | classWriter.m23402b(i & 1048575, 1048575 & i3);
            } else {
                min = (i3 & (-268435456)) - 268435456;
                i5 = min | 24117248 | classWriter.m23384t(TypeProxy.SilentConstruction.Appender.JAVA_LANG_OBJECT_INTERNAL_NAME);
            }
        } else if (i3 == 16777221) {
            if ((i & 267386880) != 24117248 && (i & (-268435456)) == 0) {
                i = 16777216;
            }
            i5 = i;
        }
        if (i3 != i5) {
            iArr[i2] = i5;
            return true;
        }
        return false;
    }

    /* renamed from: l */
    public static int m23368l(ClassWriter classWriter, String str) {
        int indexOf = str.charAt(0) == '(' ? str.indexOf(41) + 1 : 0;
        char charAt = str.charAt(indexOf);
        int i = 16777218;
        if (charAt != 'F') {
            if (charAt != 'L') {
                if (charAt != 'S') {
                    if (charAt == 'V') {
                        return 0;
                    }
                    if (charAt != 'Z' && charAt != 'I') {
                        if (charAt != 'J') {
                            switch (charAt) {
                                case 'B':
                                case 'C':
                                    break;
                                case 'D':
                                    return 16777219;
                                default:
                                    int i2 = indexOf + 1;
                                    while (str.charAt(i2) == '[') {
                                        i2++;
                                    }
                                    char charAt2 = str.charAt(i2);
                                    if (charAt2 != 'F') {
                                        if (charAt2 == 'S') {
                                            i = 16777228;
                                        } else if (charAt2 == 'Z') {
                                            i = 16777225;
                                        } else if (charAt2 == 'I') {
                                            i = 16777217;
                                        } else if (charAt2 != 'J') {
                                            switch (charAt2) {
                                                case 'B':
                                                    i = 16777226;
                                                    break;
                                                case 'C':
                                                    i = 16777227;
                                                    break;
                                                case 'D':
                                                    i = 16777219;
                                                    break;
                                                default:
                                                    i = classWriter.m23384t(str.substring(i2 + 1, str.length() - 1)) | 24117248;
                                                    break;
                                            }
                                        } else {
                                            i = 16777220;
                                        }
                                    }
                                    return ((i2 - indexOf) << 28) | i;
                            }
                        } else {
                            return 16777220;
                        }
                    }
                }
                return 16777217;
            }
            return classWriter.m23384t(str.substring(indexOf + 1, str.length() - 1)) | 24117248;
        }
        return 16777218;
    }

    /* renamed from: b */
    public final int m23378b() {
        int i = this.f7073f;
        if (i > 0) {
            int[] iArr = this.f7072e;
            int i2 = i - 1;
            this.f7073f = i2;
            return iArr[i2];
        }
        Label label = this.f7068a;
        int i3 = label.f7101f - 1;
        label.f7101f = i3;
        return 50331648 | (-i3);
    }

    /* renamed from: c */
    public final int m23377c(int i) {
        int[] iArr = this.f7071d;
        if (iArr == null || i >= iArr.length) {
            return i | 33554432;
        }
        int i2 = iArr[i];
        if (i2 == 0) {
            int i3 = i | 33554432;
            iArr[i] = i3;
            return i3;
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004d A[LOOP:0: B:10:0x0022->B:21:0x004d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004c A[SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m23376d(com.esotericsoftware.asm.ClassWriter r7, int r8) {
        /*
            r6 = this;
            r0 = 24117248(0x1700000, float:4.4081038E-38)
            r1 = 16777222(0x1000006, float:2.3509904E-38)
            if (r8 != r1) goto Lf
            java.lang.String r1 = r7.f7020o
        L9:
            int r7 = r7.m23384t(r1)
            r7 = r7 | r0
            goto L21
        Lf:
            r1 = -1048576(0xfffffffffff00000, float:NaN)
            r1 = r1 & r8
            r2 = 25165824(0x1800000, float:4.7019774E-38)
            if (r1 != r2) goto L50
            com.esotericsoftware.asm.Item[] r1 = r7.f7016k
            r2 = 1048575(0xfffff, float:1.469367E-39)
            r2 = r2 & r8
            r1 = r1[r2]
            java.lang.String r1 = r1.f7091e
            goto L9
        L21:
            r0 = 0
        L22:
            int r1 = r6.f7074g
            if (r0 >= r1) goto L50
            int[] r1 = r6.f7075h
            r1 = r1[r0]
            r2 = -268435456(0xfffffffff0000000, float:-1.58456325E29)
            r2 = r2 & r1
            r3 = 251658240(0xf000000, float:6.3108872E-30)
            r3 = r3 & r1
            r4 = 33554432(0x2000000, float:9.403955E-38)
            r5 = 8388607(0x7fffff, float:1.1754942E-38)
            if (r3 != r4) goto L3e
            int[] r3 = r6.f7069b
            r1 = r1 & r5
            r1 = r3[r1]
        L3c:
            int r1 = r1 + r2
            goto L4a
        L3e:
            r4 = 50331648(0x3000000, float:3.761582E-37)
            if (r3 != r4) goto L4a
            int[] r3 = r6.f7070c
            int r4 = r3.length
            r1 = r1 & r5
            int r4 = r4 - r1
            r1 = r3[r4]
            goto L3c
        L4a:
            if (r8 != r1) goto L4d
            return r7
        L4d:
            int r0 = r0 + 1
            goto L22
        L50:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.Frame.m23376d(com.esotericsoftware.asm.ClassWriter, int):int");
    }

    /* renamed from: e */
    public final void m23375e(int i, int i2) {
        if (this.f7071d == null) {
            this.f7071d = new int[10];
        }
        int length = this.f7071d.length;
        if (i >= length) {
            int[] iArr = new int[Math.max(i + 1, length * 2)];
            System.arraycopy(this.f7071d, 0, iArr, 0, length);
            this.f7071d = iArr;
        }
        this.f7071d[i] = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004b, code lost:
        if (r1.charAt(0) == '[') goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0203  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m23374f(int r17, int r18, com.esotericsoftware.asm.ClassWriter r19, com.esotericsoftware.asm.Item r20) {
        /*
            Method dump skipped, instructions count: 940
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.Frame.m23374f(int, int, com.esotericsoftware.asm.ClassWriter, com.esotericsoftware.asm.Item):void");
    }

    /* renamed from: g */
    public void m23373g(ClassWriter classWriter, int i, Type[] typeArr, int i2) {
        int[] iArr = new int[i2];
        this.f7069b = iArr;
        this.f7070c = new int[0];
        int i3 = 1;
        if ((i & 8) != 0) {
            i3 = 0;
        } else if ((i & net.bytebuddy.jar.asm.Opcodes.ASM8) == 0) {
            iArr[0] = 24117248 | classWriter.m23384t(classWriter.f7020o);
        } else {
            iArr[0] = 16777222;
        }
        for (Type type : typeArr) {
            int m23368l = m23368l(classWriter, type.getDescriptor());
            int[] iArr2 = this.f7069b;
            int i4 = i3 + 1;
            iArr2[i3] = m23368l;
            if (m23368l == 16777220 || m23368l == 16777219) {
                iArr2[i4] = 16777216;
                i3 = i4 + 1;
            } else {
                i3 = i4;
            }
        }
        while (i3 < i2) {
            this.f7069b[i3] = 16777216;
            i3++;
        }
    }

    /* renamed from: h */
    public final void m23372h(ClassWriter classWriter, String str) {
        int m23368l = m23368l(classWriter, str);
        if (m23368l != 0) {
            m23367m(m23368l);
            if (m23368l == 16777220 || m23368l == 16777219) {
                m23367m(16777216);
            }
        }
    }

    /* renamed from: i */
    public final void m23371i(String str) {
        char charAt = str.charAt(0);
        if (charAt == '(') {
            m23366n((Type.getArgumentsAndReturnSizes(str) >> 2) - 1);
        } else if (charAt == 'J' || charAt == 'D') {
            m23366n(2);
        } else {
            m23366n(1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x010a A[SYNTHETIC] */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m23369k(com.esotericsoftware.asm.ClassWriter r19, com.esotericsoftware.asm.Frame r20, int r21) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.Frame.m23369k(com.esotericsoftware.asm.ClassWriter, com.esotericsoftware.asm.Frame, int):boolean");
    }

    /* renamed from: m */
    public final void m23367m(int i) {
        if (this.f7072e == null) {
            this.f7072e = new int[10];
        }
        int length = this.f7072e.length;
        int i2 = this.f7073f;
        if (i2 >= length) {
            int[] iArr = new int[Math.max(i2 + 1, length * 2)];
            System.arraycopy(this.f7072e, 0, iArr, 0, length);
            this.f7072e = iArr;
        }
        int[] iArr2 = this.f7072e;
        int i3 = this.f7073f;
        int i4 = i3 + 1;
        this.f7073f = i4;
        iArr2[i3] = i;
        Label label = this.f7068a;
        int i5 = label.f7101f + i4;
        if (i5 > label.f7102g) {
            label.f7102g = i5;
        }
    }

    /* renamed from: n */
    public final void m23366n(int i) {
        int i2 = this.f7073f;
        if (i2 >= i) {
            this.f7073f = i2 - i;
            return;
        }
        this.f7068a.f7101f -= i - i2;
        this.f7073f = 0;
    }

    /* renamed from: o */
    public final void m23365o(int i) {
        if (this.f7075h == null) {
            this.f7075h = new int[2];
        }
        int length = this.f7075h.length;
        int i2 = this.f7074g;
        if (i2 >= length) {
            int[] iArr = new int[Math.max(i2 + 1, length * 2)];
            System.arraycopy(this.f7075h, 0, iArr, 0, length);
            this.f7075h = iArr;
        }
        int[] iArr2 = this.f7075h;
        int i3 = this.f7074g;
        this.f7074g = i3 + 1;
        iArr2[i3] = i;
    }
}
