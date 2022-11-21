package p018b5;

import android.net.Uri;
import java.util.Map;
/* renamed from: b5.f6 */
/* loaded from: classes2.dex */
public final class C0647f6 {

    /* renamed from: a */
    public final Map<String, Map<String, String>> f1813a;

    public C0647f6(Map<String, Map<String, String>> map) {
        this.f1813a = map;
    }

    /* renamed from: a */
    public final String m25984a(Uri uri, String str, String str2, String str3) {
        String str4;
        if (uri != null) {
            Map<String, String> map = this.f1813a.get(uri.toString());
            if (map == null) {
                return null;
            }
            String valueOf = String.valueOf(str3);
            if (valueOf.length() != 0) {
                str4 = "".concat(valueOf);
            } else {
                str4 = new String("");
            }
            return map.get(str4);
        }
        return null;
    }
}
