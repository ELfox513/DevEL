package p185t3;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.p009pm.PackageInstaller;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.p010os.UserManager;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException;
import com.google.android.gms.common.GooglePlayServicesMissingManifestValueException;
import java.util.concurrent.atomic.AtomicBoolean;
import p026c4.C1049j;
import p026c4.C1054o;
import p026c4.C1059t;
import p026c4.C1060u;
import p042d4.C3325e;
import p220x3.C7297q;
import p220x3.C7320x0;
/* renamed from: t3.m */
/* loaded from: classes.dex */
public class C6756m {
    @Deprecated

    /* renamed from: a */
    public static final int f35427a = 12451000;

    /* renamed from: c */
    public static boolean f35429c = false;

    /* renamed from: d */
    public static boolean f35430d = false;

    /* renamed from: b */
    public static final AtomicBoolean f35428b = new AtomicBoolean();

    /* renamed from: e */
    public static final AtomicBoolean f35431e = new AtomicBoolean();

    @Deprecated
    /* renamed from: a */
    public static int m3482a(@RecentlyNonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    @Deprecated
    /* renamed from: b */
    public static String m3481b(int i) {
        return C6734b.m3523c1(i);
    }

    @RecentlyNullable
    /* renamed from: c */
    public static Context m3480c(@RecentlyNonNull Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @Deprecated
    /* renamed from: g */
    public static boolean m3476g(@RecentlyNonNull Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i == 1) {
            return m3472k(context, "com.google.android.gms");
        }
        return false;
    }

    @Deprecated
    /* renamed from: i */
    public static boolean m3474i(int i) {
        return i == 1 || i == 2 || i == 3 || i == 9;
    }

    @TargetApi(19)
    @Deprecated
    /* renamed from: j */
    public static boolean m3473j(@RecentlyNonNull Context context, int i, @RecentlyNonNull String str) {
        return C1059t.m24724b(context, i, str);
    }

    /* renamed from: e */
    public static boolean m3478e(@RecentlyNonNull Context context) {
        try {
            if (!f35430d) {
                PackageInfo m19143f = C3325e.m19140a(context).m19143f("com.google.android.gms", 64);
                C6758n.m3464a(context);
                if (m19143f != null && !C6758n.m3460e(m19143f, false) && C6758n.m3460e(m19143f, true)) {
                    f35429c = true;
                } else {
                    f35429c = false;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e);
        } finally {
            f35430d = true;
        }
        if (!f35429c && C1049j.m24755e()) {
            return false;
        }
        return true;
    }

    @Deprecated
    /* renamed from: f */
    public static int m3477f(@RecentlyNonNull Context context, int i) {
        boolean z;
        boolean z2;
        PackageInfo packageInfo;
        try {
            context.getResources().getString(C6759o.f35439a);
        } catch (Throwable unused) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !f35431e.get()) {
            int m1841a = C7320x0.m1841a(context);
            if (m1841a != 0) {
                if (m1841a != f35427a) {
                    throw new GooglePlayServicesIncorrectManifestValueException(m1841a);
                }
            } else {
                throw new GooglePlayServicesMissingManifestValueException();
            }
        }
        if (!C1049j.m24752h(context) && !C1049j.m24750j(context)) {
            z = true;
        } else {
            z = false;
        }
        if (i >= 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        C7297q.m1892a(z2);
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException unused2) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing."));
            }
        } else {
            packageInfo = null;
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            C6758n.m3464a(context);
            if (!C6758n.m3460e(packageInfo2, true)) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid."));
            } else {
                if (z) {
                    C7297q.m1883j(packageInfo);
                    if (!C6758n.m3460e(packageInfo, true)) {
                        Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid."));
                    }
                }
                if (z && packageInfo != null && !packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                    Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature doesn't match that of Google Play services."));
                } else if (C1060u.m24723a(packageInfo2.versionCode) < C1060u.m24723a(i)) {
                    int i2 = packageInfo2.versionCode;
                    StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 82);
                    sb.append("Google Play services out of date for ");
                    sb.append(packageName);
                    sb.append(".  Requires ");
                    sb.append(i);
                    sb.append(" but found ");
                    sb.append(i2);
                    Log.w("GooglePlayServicesUtil", sb.toString());
                    return 2;
                } else {
                    ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                    if (applicationInfo == null) {
                        try {
                            applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                        } catch (PackageManager.NameNotFoundException e) {
                            Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e);
                            return 1;
                        }
                    }
                    if (applicationInfo.enabled) {
                        return 0;
                    }
                    return 3;
                }
            }
            return 9;
        } catch (PackageManager.NameNotFoundException unused3) {
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they are missing."));
            return 1;
        }
    }

    @TargetApi(21)
    /* renamed from: k */
    public static boolean m3472k(Context context, String str) {
        PackageInstaller packageInstaller;
        ApplicationInfo applicationInfo;
        boolean equals = str.equals("com.google.android.gms");
        if (C1054o.m24733h()) {
            try {
                packageInstaller = context.getPackageManager().getPackageInstaller();
                for (PackageInstaller.SessionInfo sessionInfo : packageInstaller.getAllSessions()) {
                    if (str.equals(sessionInfo.getAppPackageName())) {
                        return true;
                    }
                }
            } catch (Exception unused) {
                return false;
            }
        }
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        if (equals) {
            return applicationInfo.enabled;
        }
        if (applicationInfo.enabled && !m3475h(context)) {
            return true;
        }
        return false;
    }

    @RecentlyNullable
    /* renamed from: d */
    public static Resources m3479d(@RecentlyNonNull Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @TargetApi(18)
    /* renamed from: h */
    public static boolean m3475h(@RecentlyNonNull Context context) {
        Bundle applicationRestrictions;
        if (C1054o.m24736e()) {
            Object systemService = context.getSystemService("user");
            C7297q.m1883j(systemService);
            applicationRestrictions = ((UserManager) systemService).getApplicationRestrictions(context.getPackageName());
            if (applicationRestrictions != null && "true".equals(applicationRestrictions.getString("restricted_profile"))) {
                return true;
            }
            return false;
        }
        return false;
    }
}
