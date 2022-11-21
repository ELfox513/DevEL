package p196u5;

import android.util.Log;
/* renamed from: u5.f */
/* loaded from: classes2.dex */
public class C6930f {

    /* renamed from: c */
    public static final C6930f f35783c = new C6930f("FirebaseCrashlytics");

    /* renamed from: a */
    public final String f35784a;

    /* renamed from: b */
    public int f35785b = 4;

    /* renamed from: f */
    public static C6930f m3016f() {
        return f35783c;
    }

    /* renamed from: a */
    public final boolean m3021a(int i) {
        return this.f35785b <= i || Log.isLoggable(this.f35784a, i);
    }

    /* renamed from: b */
    public void m3020b(String str) {
        m3019c(str, null);
    }

    /* renamed from: c */
    public void m3019c(String str, Throwable th) {
        if (m3021a(3)) {
            Log.d(this.f35784a, str, th);
        }
    }

    /* renamed from: d */
    public void m3018d(String str) {
        m3017e(str, null);
    }

    /* renamed from: e */
    public void m3017e(String str, Throwable th) {
        if (m3021a(6)) {
            Log.e(this.f35784a, str, th);
        }
    }

    /* renamed from: g */
    public void m3015g(String str) {
        m3014h(str, null);
    }

    /* renamed from: h */
    public void m3014h(String str, Throwable th) {
        if (m3021a(4)) {
            Log.i(this.f35784a, str, th);
        }
    }

    /* renamed from: i */
    public void m3013i(String str) {
        m3012j(str, null);
    }

    /* renamed from: j */
    public void m3012j(String str, Throwable th) {
        if (m3021a(2)) {
            Log.v(this.f35784a, str, th);
        }
    }

    /* renamed from: k */
    public void m3011k(String str) {
        m3010l(str, null);
    }

    /* renamed from: l */
    public void m3010l(String str, Throwable th) {
        if (m3021a(5)) {
            Log.w(this.f35784a, str, th);
        }
    }

    public C6930f(String str) {
        this.f35784a = str;
    }
}
