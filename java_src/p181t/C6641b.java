package p181t;

import android.content.pm.PackageInfo;
import android.os.Build;
/* renamed from: t.b */
/* loaded from: classes.dex */
public final class C6641b {
    /* renamed from: a */
    public static long m3720a(PackageInfo packageInfo) {
        long longVersionCode;
        if (Build.VERSION.SDK_INT >= 28) {
            longVersionCode = packageInfo.getLongVersionCode();
            return longVersionCode;
        }
        return packageInfo.versionCode;
    }
}
