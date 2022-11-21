package p089i6;

import android.content.Context;
import p196u5.C6930f;
import p222x5.C7341g;
/* renamed from: i6.a */
/* loaded from: classes2.dex */
public class C4140a implements InterfaceC4141b {

    /* renamed from: b */
    public static boolean f17751b = false;

    /* renamed from: c */
    public static String f17752c;

    /* renamed from: a */
    public final Context f17753a;

    @Override // p089i6.InterfaceC4141b
    /* renamed from: a */
    public String mo17318a() {
        return m17319b(this.f17753a);
    }

    /* renamed from: b */
    public static synchronized String m17319b(Context context) {
        synchronized (C4140a.class) {
            if (f17751b) {
                return f17752c;
            }
            int m1779q = C7341g.m1779q(context, "com.google.firebase.crashlytics.unity_version", "string");
            if (m1779q != 0) {
                f17752c = context.getResources().getString(m1779q);
                f17751b = true;
                C6930f m3016f = C6930f.m3016f();
                m3016f.m3013i("Unity Editor version is: " + f17752c);
            }
            return f17752c;
        }
    }

    public C4140a(Context context) {
        this.f17753a = context;
    }
}
