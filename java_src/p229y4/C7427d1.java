package p229y4;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import java.util.Set;
/* renamed from: y4.d1 */
/* loaded from: classes2.dex */
public final class C7427d1 {
    /* renamed from: b */
    public static void m1452b(Context context, Set<String> set) {
        String str;
        SharedPreferences.Editor m1459d;
        C7419b1 c7419b1 = new C7419b1(context);
        for (String str2 : set) {
            C7415a1 m1453a = m1453a(context, str2);
            if (m1453a == null) {
                String valueOf = String.valueOf(str2);
                if (valueOf.length() != 0) {
                    str = "clearKeys: unable to process key: ".concat(valueOf);
                } else {
                    str = new String("clearKeys: unable to process key: ");
                }
                Log.d("UserMessagingPlatform", str);
            } else {
                m1459d = c7419b1.m1459d(m1453a.f37117a);
                m1459d.remove(m1453a.f37118b);
            }
        }
        c7419b1.m1461b();
    }

    /* renamed from: a */
    public static C7415a1 m1453a(Context context, String str) {
        String str2;
        String str3;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("/", -1);
        int length = split.length;
        if (length == 1) {
            str2 = String.valueOf(context.getPackageName()).concat("_preferences");
            str3 = split[0];
        } else {
            if (length == 2) {
                str2 = split[0];
                str3 = split[1];
            }
            return null;
        }
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            return new C7415a1(str2, str3);
        }
        return null;
    }
}
