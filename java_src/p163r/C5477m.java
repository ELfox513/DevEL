package p163r;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
/* renamed from: r.m */
/* loaded from: classes.dex */
public final class C5477m {
    /* renamed from: e */
    public static void m13242e(Activity activity, Intent intent) {
        activity.navigateUpTo(intent);
    }

    /* renamed from: f */
    public static boolean m13241f(Activity activity, Intent intent) {
        return activity.shouldUpRecreateTask(intent);
    }

    /* renamed from: a */
    public static Intent m13246a(Activity activity) {
        Intent parentActivityIntent = activity.getParentActivityIntent();
        if (parentActivityIntent != null) {
            return parentActivityIntent;
        }
        String m13244c = m13244c(activity);
        if (m13244c == null) {
            return null;
        }
        ComponentName componentName = new ComponentName(activity, m13244c);
        try {
            if (m13243d(activity, componentName) == null) {
                return Intent.makeMainActivity(componentName);
            }
            return new Intent().setComponent(componentName);
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + m13244c + "' in manifest");
            return null;
        }
    }

    /* renamed from: b */
    public static Intent m13245b(Context context, ComponentName componentName) {
        String m13243d = m13243d(context, componentName);
        if (m13243d == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), m13243d);
        if (m13243d(context, componentName2) == null) {
            return Intent.makeMainActivity(componentName2);
        }
        return new Intent().setComponent(componentName2);
    }

    /* renamed from: c */
    public static String m13244c(Activity activity) {
        try {
            return m13243d(activity, activity.getComponentName());
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: d */
    public static String m13243d(Context context, ComponentName componentName) {
        String string;
        PackageManager packageManager = context.getPackageManager();
        int i = Build.VERSION.SDK_INT;
        int i2 = 640;
        if (i >= 29) {
            i2 = 269222528;
        } else if (i >= 24) {
            i2 = 787072;
        }
        ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, i2);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) == '.') {
            return context.getPackageName() + string;
        }
        return string;
    }
}
