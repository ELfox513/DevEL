package p168r4;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.up2 */
/* loaded from: classes2.dex */
public final class up2 {
    /* renamed from: b */
    public static void m6399b(Bundle bundle, String str, String str2, boolean z) {
        if (z) {
            bundle.putString(str, str2);
        }
    }

    /* renamed from: c */
    public static void m6398c(Bundle bundle, String str, Integer num, boolean z) {
        if (z) {
            bundle.putInt(str, num.intValue());
        }
    }

    /* renamed from: d */
    public static void m6397d(Bundle bundle, String str, Boolean bool, boolean z) {
        if (z) {
            bundle.putBoolean(str, bool.booleanValue());
        }
    }

    /* renamed from: e */
    public static void m6396e(Bundle bundle, String str, String str2) {
        if (str2 != null) {
            bundle.putString(str, str2);
        }
    }

    /* renamed from: f */
    public static void m6395f(Bundle bundle, String str, Bundle bundle2) {
        if (bundle2 != null) {
            bundle.putBundle(str, bundle2);
        }
    }

    /* renamed from: g */
    public static void m6394g(Bundle bundle, String str, List<String> list) {
        if (list != null) {
            bundle.putStringArrayList(str, new ArrayList<>(list));
        }
    }

    /* renamed from: a */
    public static Bundle m6400a(Bundle bundle, String str) {
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 == null) {
            return new Bundle();
        }
        return bundle2;
    }
}
