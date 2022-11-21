package p026c4;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.RecentlyNonNull;
import p185t3.C6756m;
/* renamed from: c4.j */
/* loaded from: classes.dex */
public final class C1049j {

    /* renamed from: a */
    public static Boolean f2952a;

    /* renamed from: b */
    public static Boolean f2953b;

    /* renamed from: c */
    public static Boolean f2954c;

    /* renamed from: d */
    public static Boolean f2955d;

    /* renamed from: e */
    public static Boolean f2956e;

    /* renamed from: a */
    public static boolean m24759a(@RecentlyNonNull Context context) {
        return m24758b(context.getPackageManager());
    }

    @TargetApi(21)
    /* renamed from: d */
    public static boolean m24756d(@RecentlyNonNull Context context) {
        return m24751i(context);
    }

    @TargetApi(20)
    /* renamed from: f */
    public static boolean m24754f(@RecentlyNonNull Context context) {
        return m24753g(context.getPackageManager());
    }

    /* renamed from: b */
    public static boolean m24758b(@RecentlyNonNull PackageManager packageManager) {
        if (f2956e == null) {
            boolean z = false;
            if (C1054o.m24730k() && packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                z = true;
            }
            f2956e = Boolean.valueOf(z);
        }
        return f2956e.booleanValue();
    }

    /* renamed from: c */
    public static boolean m24757c(@RecentlyNonNull Context context) {
        if (f2954c == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services")) {
                z = true;
            }
            f2954c = Boolean.valueOf(z);
        }
        return f2954c.booleanValue();
    }

    /* renamed from: e */
    public static boolean m24755e() {
        int i = C6756m.f35427a;
        return "user".equals(Build.TYPE);
    }

    @TargetApi(20)
    /* renamed from: g */
    public static boolean m24753g(@RecentlyNonNull PackageManager packageManager) {
        if (f2952a == null) {
            boolean z = false;
            if (C1054o.m24734g() && packageManager.hasSystemFeature("android.hardware.type.watch")) {
                z = true;
            }
            f2952a = Boolean.valueOf(z);
        }
        return f2952a.booleanValue();
    }

    @TargetApi(21)
    /* renamed from: i */
    public static boolean m24751i(@RecentlyNonNull Context context) {
        if (f2953b == null) {
            boolean z = false;
            if (C1054o.m24733h() && context.getPackageManager().hasSystemFeature("cn.google")) {
                z = true;
            }
            f2953b = Boolean.valueOf(z);
        }
        return f2953b.booleanValue();
    }

    /* renamed from: j */
    public static boolean m24750j(@RecentlyNonNull Context context) {
        if (f2955d == null) {
            boolean z = true;
            if (!context.getPackageManager().hasSystemFeature("android.hardware.type.iot") && !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
                z = false;
            }
            f2955d = Boolean.valueOf(z);
        }
        return f2955d.booleanValue();
    }

    @TargetApi(26)
    /* renamed from: h */
    public static boolean m24752h(@RecentlyNonNull Context context) {
        if (m24754f(context)) {
            if (!C1054o.m24731j()) {
                return true;
            }
            if (m24751i(context) && !C1054o.m24730k()) {
                return true;
            }
        }
        return false;
    }
}
