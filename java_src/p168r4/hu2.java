package p168r4;

import android.net.Uri;
import java.util.Map;
/* renamed from: r4.hu2 */
/* loaded from: classes2.dex */
public final class hu2 {

    /* renamed from: a */
    public final String f24826a = a10.f20330b.m6673e();

    /* renamed from: a */
    public final String m10822a(Map<String, String> map) {
        Uri.Builder buildUpon = Uri.parse(this.f24826a).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        return buildUpon.build().toString();
    }
}
