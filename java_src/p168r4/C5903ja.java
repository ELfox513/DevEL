package p168r4;

import android.text.TextUtils;
/* renamed from: r4.ja */
/* loaded from: classes2.dex */
public final class C5903ja {
    /* renamed from: a */
    public static void m10374a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: b */
    public static void m10373b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    /* renamed from: c */
    public static int m10372c(int i, int i2, int i3) {
        if (i < 0 || i >= i3) {
            throw new IndexOutOfBoundsException();
        }
        return i;
    }

    /* renamed from: d */
    public static void m10371d(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    /* renamed from: e */
    public static <T> T m10370e(T t) {
        if (t != null) {
            return t;
        }
        throw new IllegalStateException();
    }

    /* renamed from: f */
    public static String m10369f(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException();
    }
}
