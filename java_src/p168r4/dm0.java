package p168r4;

import android.os.Bundle;
import java.lang.reflect.Array;
import p220x3.C7289o;
/* renamed from: r4.dm0 */
/* loaded from: classes2.dex */
public final class dm0 {
    /* renamed from: a */
    public static boolean m12097a(Bundle bundle, Bundle bundle2) {
        if (bundle == null || bundle2 == null) {
            return bundle == null && bundle2 == null;
        } else if (bundle.size() != bundle2.size()) {
            return false;
        } else {
            for (String str : bundle.keySet()) {
                if (!bundle2.containsKey(str)) {
                    return false;
                }
                Object obj = bundle.get(str);
                Object obj2 = bundle2.get(str);
                if (obj == null || obj2 == null) {
                    return obj == null && obj2 == null;
                } else if (obj instanceof Bundle) {
                    if (!(obj2 instanceof Bundle) || !m12097a((Bundle) obj, (Bundle) obj2)) {
                        return false;
                    }
                } else if (obj.getClass().isArray()) {
                    int length = Array.getLength(obj);
                    if (!obj2.getClass().isArray() || length != Array.getLength(obj2)) {
                        return false;
                    }
                    for (int i = 0; i < length; i++) {
                        if (!C7289o.m1908a(Array.get(obj, i), Array.get(obj2, i))) {
                            return false;
                        }
                    }
                    continue;
                } else if (!obj.equals(obj2)) {
                    return false;
                }
            }
            return true;
        }
    }
}
