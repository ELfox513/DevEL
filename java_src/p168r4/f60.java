package p168r4;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import p235z2.C7601t;
/* renamed from: r4.f60 */
/* loaded from: classes2.dex */
public final class f60 {
    /* renamed from: b */
    public static final ResolveInfo m11605b(Intent intent, Context context, C6300u c6300u, View view) {
        return m11604c(intent, new ArrayList(), context, c6300u, view);
    }

    /* renamed from: c */
    public static final ResolveInfo m11604c(Intent intent, ArrayList<ResolveInfo> arrayList, Context context, C6300u c6300u, View view) {
        PackageManager packageManager;
        ResolveInfo resolveInfo = null;
        try {
            packageManager = context.getPackageManager();
        } catch (Throwable th) {
            C7601t.m935h().m9056k(th, "OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent");
        }
        if (packageManager == null) {
            return null;
        }
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
        if (queryIntentActivities != null && resolveActivity != null) {
            int i = 0;
            while (true) {
                if (i >= queryIntentActivities.size()) {
                    break;
                } else if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                    resolveInfo = resolveActivity;
                    break;
                } else {
                    i++;
                }
            }
        }
        arrayList.addAll(queryIntentActivities);
        return resolveInfo;
    }

    /* renamed from: a */
    public static final Intent m11606a(Uri uri, Context context, C6300u c6300u, View view) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(uri);
        intent.setAction("android.intent.action.VIEW");
        return intent;
    }

    /* renamed from: d */
    public static final Intent m11603d(Intent intent, ResolveInfo resolveInfo, Context context, C6300u c6300u, View view) {
        Intent intent2 = new Intent(intent);
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        intent2.setClassName(activityInfo.packageName, activityInfo.name);
        return intent2;
    }
}
