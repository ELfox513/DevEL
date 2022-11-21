package p022c0;

import java.io.PrintWriter;
import net.bytebuddy.asm.Advice;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* renamed from: c0.h */
/* loaded from: classes.dex */
public final class C1025h {

    /* renamed from: a */
    public static final Object f2925a = new Object();

    /* renamed from: b */
    public static char[] f2926b = new char[24];

    /* renamed from: a */
    public static int m24807a(int i, int i2, boolean z, int i3) {
        if (i > 99 || (z && i3 >= 3)) {
            return i2 + 3;
        }
        if (i > 9 || (z && i3 >= 2)) {
            return i2 + 2;
        }
        if (z || i > 0) {
            return i2 + 1;
        }
        return 0;
    }

    /* renamed from: c */
    public static void m24805c(long j, PrintWriter printWriter) {
        m24804d(j, printWriter, 0);
    }

    /* renamed from: b */
    public static void m24806b(long j, long j2, PrintWriter printWriter) {
        if (j == 0) {
            printWriter.print("--");
        } else {
            m24804d(j - j2, printWriter, 0);
        }
    }

    /* renamed from: d */
    public static void m24804d(long j, PrintWriter printWriter, int i) {
        synchronized (f2925a) {
            printWriter.print(new String(f2926b, 0, m24803e(j, i)));
        }
    }

    /* renamed from: e */
    public static int m24803e(long j, int i) {
        char c;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z;
        boolean z2;
        int i7;
        boolean z3;
        int i8;
        boolean z4;
        int i9;
        int i10;
        boolean z5;
        boolean z6;
        boolean z7;
        int i11;
        long j2 = j;
        if (f2926b.length < i) {
            f2926b = new char[i];
        }
        char[] cArr = f2926b;
        if (j2 == 0) {
            int i12 = i - 1;
            while (i12 > 0) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (j2 > 0) {
            c = SignatureVisitor.EXTENDS;
        } else {
            c = SignatureVisitor.SUPER;
            j2 = -j2;
        }
        int i13 = (int) (j2 % 1000);
        int floor = (int) Math.floor(j2 / 1000);
        if (floor > 86400) {
            i2 = floor / 86400;
            floor -= 86400 * i2;
        } else {
            i2 = 0;
        }
        if (floor > 3600) {
            i3 = floor / 3600;
            floor -= i3 * 3600;
        } else {
            i3 = 0;
        }
        if (floor > 60) {
            int i14 = floor / 60;
            i4 = floor - (i14 * 60);
            i5 = i14;
        } else {
            i4 = floor;
            i5 = 0;
        }
        if (i != 0) {
            int m24807a = m24807a(i2, 1, false, 0);
            if (m24807a > 0) {
                z5 = true;
            } else {
                z5 = false;
            }
            int m24807a2 = m24807a + m24807a(i3, 1, z5, 2);
            if (m24807a2 > 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            int m24807a3 = m24807a2 + m24807a(i5, 1, z6, 2);
            if (m24807a3 > 0) {
                z7 = true;
            } else {
                z7 = false;
            }
            int m24807a4 = m24807a3 + m24807a(i4, 1, z7, 2);
            if (m24807a4 > 0) {
                i11 = 3;
            } else {
                i11 = 0;
            }
            i6 = 0;
            for (int m24807a5 = m24807a4 + m24807a(i13, 2, true, i11) + 1; m24807a5 < i; m24807a5++) {
                cArr[i6] = ' ';
                i6++;
            }
        } else {
            i6 = 0;
        }
        cArr[i6] = c;
        int i15 = i6 + 1;
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        int m24802f = m24802f(cArr, i2, Advice.OffsetMapping.ForOrigin.Renderer.ForDescriptor.SYMBOL, i15, false, 0);
        if (m24802f != i15) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z) {
            i7 = 2;
        } else {
            i7 = 0;
        }
        int m24802f2 = m24802f(cArr, i3, 'h', m24802f, z2, i7);
        if (m24802f2 != i15) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z) {
            i8 = 2;
        } else {
            i8 = 0;
        }
        int m24802f3 = m24802f(cArr, i5, Advice.OffsetMapping.ForOrigin.Renderer.ForMethodName.SYMBOL, m24802f2, z3, i8);
        if (m24802f3 != i15) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z) {
            i9 = 2;
        } else {
            i9 = 0;
        }
        int m24802f4 = m24802f(cArr, i4, Advice.OffsetMapping.ForOrigin.Renderer.ForJavaSignature.SYMBOL, m24802f3, z4, i9);
        if (z && m24802f4 != i15) {
            i10 = 3;
        } else {
            i10 = 0;
        }
        int m24802f5 = m24802f(cArr, i13, Advice.OffsetMapping.ForOrigin.Renderer.ForMethodName.SYMBOL, m24802f4, true, i10);
        cArr[m24802f5] = Advice.OffsetMapping.ForOrigin.Renderer.ForJavaSignature.SYMBOL;
        return m24802f5 + 1;
    }

    /* renamed from: f */
    public static int m24802f(char[] cArr, int i, char c, int i2, boolean z, int i3) {
        int i4;
        if (z || i > 0) {
            if ((z && i3 >= 3) || i > 99) {
                int i5 = i / 100;
                cArr[i2] = (char) (i5 + 48);
                i4 = i2 + 1;
                i -= i5 * 100;
            } else {
                i4 = i2;
            }
            if ((z && i3 >= 2) || i > 9 || i2 != i4) {
                int i6 = i / 10;
                cArr[i4] = (char) (i6 + 48);
                i4++;
                i -= i6 * 10;
            }
            cArr[i4] = (char) (i + 48);
            int i7 = i4 + 1;
            cArr[i7] = c;
            return i7 + 1;
        }
        return i2;
    }
}
