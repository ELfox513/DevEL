package p029c7;

import android.util.Log;
/* renamed from: c7.c */
/* loaded from: classes2.dex */
public class C1080c {

    /* renamed from: a */
    public static C1080c f2983a;

    /* renamed from: a */
    public void m24629a(String str) {
        Log.d("FirebasePerformance", str);
    }

    /* renamed from: b */
    public void m24628b(String str) {
        Log.e("FirebasePerformance", str);
    }

    /* renamed from: d */
    public void m24626d(String str) {
        Log.i("FirebasePerformance", str);
    }

    /* renamed from: e */
    public void m24625e(String str) {
        Log.w("FirebasePerformance", str);
    }

    /* renamed from: c */
    public static synchronized C1080c m24627c() {
        C1080c c1080c;
        synchronized (C1080c.class) {
            if (f2983a == null) {
                f2983a = new C1080c();
            }
            c1080c = f2983a;
        }
        return c1080c;
    }
}
