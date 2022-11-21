package p168r4;

import android.text.TextUtils;
/* renamed from: r4.vk */
/* loaded from: classes2.dex */
public final class C6358vk {
    /* renamed from: a */
    public static void m6140a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: b */
    public static void m6139b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException((String) obj);
        }
    }

    /* renamed from: c */
    public static int m6138c(int i, int i2, int i3) {
        if (i < 0 || i >= i3) {
            throw new IndexOutOfBoundsException();
        }
        return 0;
    }

    /* renamed from: d */
    public static void m6137d(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    /* renamed from: e */
    public static void m6136e(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException((String) obj);
        }
    }

    /* renamed from: f */
    public static String m6135f(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException();
    }
}
