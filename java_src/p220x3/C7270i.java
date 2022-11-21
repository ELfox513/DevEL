package p220x3;

import android.util.Log;
import androidx.annotation.RecentlyNonNull;
/* renamed from: x3.i */
/* loaded from: classes.dex */
public final class C7270i {

    /* renamed from: a */
    public final String f36737a;

    /* renamed from: b */
    public final String f36738b;

    public C7270i(@RecentlyNonNull String str) {
        this(str, null);
    }

    /* renamed from: a */
    public boolean m1933a(int i) {
        return Log.isLoggable(this.f36737a, i);
    }

    /* renamed from: b */
    public void m1932b(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        if (m1933a(6)) {
            Log.e(str, m1929e(str2));
        }
    }

    /* renamed from: c */
    public void m1931c(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        if (m1933a(5)) {
            Log.w(str, m1929e(str2));
        }
    }

    /* renamed from: d */
    public void m1930d(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Throwable th) {
        if (m1933a(5)) {
            Log.w(str, m1929e(str2), th);
        }
    }

    /* renamed from: e */
    public final String m1929e(String str) {
        String str2 = this.f36738b;
        return str2 == null ? str : str2.concat(str);
    }

    public C7270i(@RecentlyNonNull String str, String str2) {
        C7297q.m1882k(str, "log tag cannot be null");
        C7297q.m1890c(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f36737a = str;
        if (str2 == null || str2.length() <= 0) {
            this.f36738b = null;
        } else {
            this.f36738b = str2;
        }
    }
}
