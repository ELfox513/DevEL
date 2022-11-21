package p168r4;

import android.text.TextUtils;
/* renamed from: r4.iw2 */
/* loaded from: classes2.dex */
public final class iw2 {
    /* renamed from: a */
    public static void m10484a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    /* renamed from: b */
    public static void m10483b(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }
}
