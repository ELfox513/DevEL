package p099j7;

import android.content.Context;
import android.content.res.Resources;
import java.net.URI;
import p029c7.C1078a;
/* renamed from: j7.i */
/* loaded from: classes2.dex */
public class C4383i {

    /* renamed from: a */
    public static String[] f18295a;

    /* renamed from: a */
    public static boolean m16726a(URI uri, Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("firebase_performance_whitelisted_domains", "array", context.getPackageName());
        if (identifier == 0) {
            return true;
        }
        C1078a.m24639e().m24643a("Detected domain allowlist, only allowlisted domains will be measured.");
        if (f18295a == null) {
            f18295a = resources.getStringArray(identifier);
        }
        String host = uri.getHost();
        if (host == null) {
            return true;
        }
        for (String str : f18295a) {
            if (host.contains(str)) {
                return true;
            }
        }
        return false;
    }
}
