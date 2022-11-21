package p239z6;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p029c7.C1078a;
import p099j7.C4372e;
import p124m5.C4638c;
/* renamed from: z6.v */
/* loaded from: classes2.dex */
public class C7895v {

    /* renamed from: c */
    public static final C1078a f38296c = C1078a.m24639e();

    /* renamed from: d */
    public static C7895v f38297d;

    /* renamed from: a */
    public volatile SharedPreferences f38298a;

    /* renamed from: b */
    public final ExecutorService f38299b;

    /* renamed from: i */
    public synchronized void m6i(final Context context) {
        if (this.f38298a == null && context != null) {
            this.f38299b.execute(new Runnable() { // from class: z6.u
                @Override // java.lang.Runnable
                public final void run() {
                    C7895v.this.m7h(context);
                }
            });
        }
    }

    /* renamed from: j */
    public boolean m5j(String str, float f) {
        if (str == null) {
            f38296c.m24643a("Key is null when setting float value on device cache.");
            return false;
        }
        if (this.f38298a == null) {
            m6i(m12c());
            if (this.f38298a == null) {
                return false;
            }
        }
        this.f38298a.edit().putFloat(str, f).apply();
        return true;
    }

    /* renamed from: k */
    public boolean m4k(String str, long j) {
        if (str == null) {
            f38296c.m24643a("Key is null when setting long value on device cache.");
            return false;
        }
        if (this.f38298a == null) {
            m6i(m12c());
            if (this.f38298a == null) {
                return false;
            }
        }
        this.f38298a.edit().putLong(str, j).apply();
        return true;
    }

    /* renamed from: l */
    public boolean m3l(String str, String str2) {
        if (str == null) {
            f38296c.m24643a("Key is null when setting String value on device cache.");
            return false;
        }
        if (this.f38298a == null) {
            m6i(m12c());
            if (this.f38298a == null) {
                return false;
            }
        }
        if (str2 == null) {
            this.f38298a.edit().remove(str).apply();
            return true;
        }
        this.f38298a.edit().putString(str, str2).apply();
        return true;
    }

    /* renamed from: m */
    public boolean m2m(String str, boolean z) {
        if (str == null) {
            f38296c.m24643a("Key is null when setting boolean value on device cache.");
            return false;
        }
        if (this.f38298a == null) {
            m6i(m12c());
            if (this.f38298a == null) {
                return false;
            }
        }
        this.f38298a.edit().putBoolean(str, z).apply();
        return true;
    }

    /* renamed from: e */
    public static synchronized C7895v m10e() {
        C7895v c7895v;
        synchronized (C7895v.class) {
            if (f38297d == null) {
                f38297d = new C7895v(Executors.newSingleThreadExecutor());
            }
            c7895v = f38297d;
        }
        return c7895v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m7h(Context context) {
        if (this.f38298a == null && context != null) {
            this.f38298a = context.getSharedPreferences("FirebasePerfSharedPrefs", 0);
        }
    }

    /* renamed from: b */
    public C4372e<Boolean> m13b(String str) {
        if (str == null) {
            f38296c.m24643a("Key is null when getting boolean value on device cache.");
            return C4372e.m16740a();
        }
        if (this.f38298a == null) {
            m6i(m12c());
            if (this.f38298a == null) {
                return C4372e.m16740a();
            }
        }
        if (!this.f38298a.contains(str)) {
            return C4372e.m16740a();
        }
        try {
            return C4372e.m16736e(Boolean.valueOf(this.f38298a.getBoolean(str, false)));
        } catch (ClassCastException e) {
            f38296c.m24642b("Key %s from sharedPreferences has type other than long: %s", str, e.getMessage());
            return C4372e.m16740a();
        }
    }

    /* renamed from: d */
    public C4372e<Float> m11d(String str) {
        if (str == null) {
            f38296c.m24643a("Key is null when getting float value on device cache.");
            return C4372e.m16740a();
        }
        if (this.f38298a == null) {
            m6i(m12c());
            if (this.f38298a == null) {
                return C4372e.m16740a();
            }
        }
        if (!this.f38298a.contains(str)) {
            return C4372e.m16740a();
        }
        try {
            return C4372e.m16736e(Float.valueOf(this.f38298a.getFloat(str, 0.0f)));
        } catch (ClassCastException e) {
            f38296c.m24642b("Key %s from sharedPreferences has type other than float: %s", str, e.getMessage());
            return C4372e.m16740a();
        }
    }

    /* renamed from: f */
    public C4372e<Long> m9f(String str) {
        if (str == null) {
            f38296c.m24643a("Key is null when getting long value on device cache.");
            return C4372e.m16740a();
        }
        if (this.f38298a == null) {
            m6i(m12c());
            if (this.f38298a == null) {
                return C4372e.m16740a();
            }
        }
        if (!this.f38298a.contains(str)) {
            return C4372e.m16740a();
        }
        try {
            return C4372e.m16736e(Long.valueOf(this.f38298a.getLong(str, 0L)));
        } catch (ClassCastException e) {
            f38296c.m24642b("Key %s from sharedPreferences has type other than long: %s", str, e.getMessage());
            return C4372e.m16740a();
        }
    }

    /* renamed from: g */
    public C4372e<String> m8g(String str) {
        if (str == null) {
            f38296c.m24643a("Key is null when getting String value on device cache.");
            return C4372e.m16740a();
        }
        if (this.f38298a == null) {
            m6i(m12c());
            if (this.f38298a == null) {
                return C4372e.m16740a();
            }
        }
        if (!this.f38298a.contains(str)) {
            return C4372e.m16740a();
        }
        try {
            return C4372e.m16736e(this.f38298a.getString(str, ""));
        } catch (ClassCastException e) {
            f38296c.m24642b("Key %s from sharedPreferences has type other than String: %s", str, e.getMessage());
            return C4372e.m16740a();
        }
    }

    public C7895v(ExecutorService executorService) {
        this.f38299b = executorService;
    }

    /* renamed from: c */
    public final Context m12c() {
        try {
            C4638c.m15898i();
            return C4638c.m15898i().m15899h();
        } catch (IllegalStateException unused) {
            return null;
        }
    }
}
