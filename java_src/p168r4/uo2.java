package p168r4;

import android.util.JsonReader;
import org.json.JSONObject;
import p016b3.C0460b1;
/* renamed from: r4.uo2 */
/* loaded from: classes2.dex */
public final class uo2 {

    /* renamed from: a */
    public final String f32342a;

    /* renamed from: b */
    public final String f32343b;

    /* renamed from: c */
    public final JSONObject f32344c;

    /* renamed from: d */
    public final JSONObject f32345d;

    public uo2(JsonReader jsonReader) {
        JSONObject m26427c = C0460b1.m26427c(jsonReader);
        this.f32345d = m26427c;
        this.f32342a = m26427c.optString("ad_html", null);
        this.f32343b = m26427c.optString("ad_base_url", null);
        this.f32344c = m26427c.optJSONObject("ad_json");
    }
}
