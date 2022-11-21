package p026c4;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import p042d4.C3325e;
import p185t3.C6758n;
/* renamed from: c4.t */
/* loaded from: classes.dex */
public final class C1059t {
    @TargetApi(19)
    /* renamed from: b */
    public static boolean m24724b(@RecentlyNonNull Context context, int i, @RecentlyNonNull String str) {
        return C3325e.m19140a(context).m19141h(i, str);
    }

    /* renamed from: a */
    public static boolean m24725a(@RecentlyNonNull Context context, int i) {
        if (!m24724b(context, i, "com.google.android.gms")) {
            return false;
        }
        try {
            return C6758n.m3464a(context).m3463b(context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
        } catch (PackageManager.NameNotFoundException unused) {
            if (Log.isLoggable("UidVerifier", 3)) {
                Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
            }
            return false;
        }
    }
}
