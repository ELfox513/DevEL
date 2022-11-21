package p168r4;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.js3 */
/* loaded from: classes2.dex */
public final class js3 {

    /* renamed from: a */
    public static String f26138a;

    /* renamed from: a */
    public static String m10169a(Context context) {
        String str;
        String str2 = f26138a;
        if (str2 != null) {
            return str2;
        }
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        if (resolveActivity != null) {
            str = resolveActivity.activityInfo.packageName;
        } else {
            str = null;
        }
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            Intent intent2 = new Intent();
            intent2.setAction("android.support.customtabs.action.CustomTabsService");
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            if (packageManager.resolveService(intent2, 0) != null) {
                arrayList.add(resolveInfo.activityInfo.packageName);
            }
        }
        if (arrayList.isEmpty()) {
            f26138a = null;
        } else if (arrayList.size() == 1) {
            f26138a = (String) arrayList.get(0);
        } else {
            if (!TextUtils.isEmpty(str)) {
                try {
                    List<ResolveInfo> queryIntentActivities2 = context.getPackageManager().queryIntentActivities(intent, 64);
                    if (queryIntentActivities2 != null && queryIntentActivities2.size() != 0) {
                        for (ResolveInfo resolveInfo2 : queryIntentActivities2) {
                            IntentFilter intentFilter = resolveInfo2.filter;
                            if (intentFilter != null && intentFilter.countDataAuthorities() != 0 && intentFilter.countDataPaths() != 0 && resolveInfo2.activityInfo != null) {
                                break;
                            }
                        }
                    }
                } catch (RuntimeException unused) {
                    Log.e("CustomTabsHelper", "Runtime exception while getting specialized handlers");
                }
                if (arrayList.contains(str)) {
                    f26138a = str;
                }
            }
            if (arrayList.contains("com.android.chrome")) {
                f26138a = "com.android.chrome";
            } else if (arrayList.contains("com.chrome.beta")) {
                f26138a = "com.chrome.beta";
            } else if (arrayList.contains("com.chrome.dev")) {
                f26138a = "com.chrome.dev";
            } else if (arrayList.contains("com.google.android.apps.chrome")) {
                f26138a = "com.google.android.apps.chrome";
            }
        }
        return f26138a;
    }
}
