package p168r4;

import java.io.EOFException;
/* renamed from: r4.e04 */
/* loaded from: classes2.dex */
public final class e04 {
    /* renamed from: a */
    public static void m11889a(boolean z, String str) {
        if (!z) {
            throw C5973l6.m9787b(str, null);
        }
    }

    /* renamed from: b */
    public static int m11888b(b04 b04Var, byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int mo5957m = b04Var.mo5957m(bArr, i + i3, i2 - i3);
            if (mo5957m == -1) {
                break;
            }
            i3 += mo5957m;
        }
        return i3;
    }

    /* renamed from: c */
    public static boolean m11887c(b04 b04Var, byte[] bArr, int i, int i2) {
        try {
            ((vz3) b04Var).mo5961f(bArr, i, i2, false);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    /* renamed from: d */
    public static boolean m11886d(b04 b04Var, int i) {
        try {
            ((vz3) b04Var).m5956n(i, false);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    /* renamed from: e */
    public static boolean m11885e(b04 b04Var, byte[] bArr, int i, int i2, boolean z) {
        try {
            return b04Var.mo5960i(bArr, 0, i2, z);
        } catch (EOFException e) {
            if (z) {
                return false;
            }
            throw e;
        }
    }
}
