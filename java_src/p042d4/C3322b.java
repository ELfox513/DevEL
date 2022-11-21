package p042d4;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import p026c4.C1054o;
/* renamed from: d4.b */
/* loaded from: classes.dex */
public class C3322b {

    /* renamed from: a */
    public static Context f15645a;

    /* renamed from: b */
    public static Boolean f15646b;

    /* renamed from: a */
    public static synchronized boolean m19150a(@RecentlyNonNull Context context) {
        boolean isInstantApp;
        Boolean bool;
        synchronized (C3322b.class) {
            Context applicationContext = context.getApplicationContext();
            Context context2 = f15645a;
            if (context2 != null && (bool = f15646b) != null && context2 == applicationContext) {
                return bool.booleanValue();
            }
            f15646b = null;
            if (C1054o.m24730k()) {
                isInstantApp = applicationContext.getPackageManager().isInstantApp();
                f15646b = Boolean.valueOf(isInstantApp);
            } else {
                try {
                    context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                    f15646b = Boolean.TRUE;
                } catch (ClassNotFoundException unused) {
                    f15646b = Boolean.FALSE;
                }
            }
            f15645a = applicationContext;
            return f15646b.booleanValue();
        }
    }
}
