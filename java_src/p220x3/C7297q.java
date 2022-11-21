package p220x3;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import p026c4.C1061v;
/* renamed from: x3.q */
/* loaded from: classes.dex */
public final class C7297q {
    /* renamed from: a */
    public static void m1892a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: b */
    public static void m1891b(boolean z, @RecentlyNonNull Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    /* renamed from: c */
    public static void m1890c(boolean z, @RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    /* renamed from: h */
    public static void m1885h() {
        m1884i("Must not be called on the main application thread");
    }

    /* renamed from: j */
    public static <T> T m1883j(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("null reference");
    }

    /* renamed from: k */
    public static <T> T m1882k(@RecentlyNonNull T t, @RecentlyNonNull Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: l */
    public static int m1881l(int i) {
        if (i != 0) {
            return i;
        }
        throw new IllegalArgumentException("Given Integer is zero");
    }

    /* renamed from: m */
    public static void m1880m(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    /* renamed from: n */
    public static void m1879n(boolean z, @RecentlyNonNull Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    /* renamed from: d */
    public static void m1889d(@RecentlyNonNull Handler handler) {
        String str;
        Looper myLooper = Looper.myLooper();
        if (myLooper != handler.getLooper()) {
            if (myLooper != null) {
                str = myLooper.getThread().getName();
            } else {
                str = "null current looper";
            }
            String name = handler.getLooper().getThread().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 36 + String.valueOf(str).length());
            sb.append("Must be called on ");
            sb.append(name);
            sb.append(" thread, but got ");
            sb.append(str);
            sb.append(".");
            throw new IllegalStateException(sb.toString());
        }
    }

    /* renamed from: e */
    public static void m1888e(@RecentlyNonNull String str) {
        if (C1061v.m24722a()) {
            return;
        }
        throw new IllegalStateException(str);
    }

    @RecentlyNonNull
    /* renamed from: f */
    public static String m1887f(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Given String is empty or null");
    }

    @RecentlyNonNull
    /* renamed from: g */
    public static String m1886g(String str, @RecentlyNonNull Object obj) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: i */
    public static void m1884i(@RecentlyNonNull String str) {
        if (!C1061v.m24722a()) {
            return;
        }
        throw new IllegalStateException(str);
    }
}
