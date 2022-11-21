package p168r4;

import org.json.JSONObject;
/* renamed from: r4.cf0 */
/* loaded from: classes2.dex */
public final class cf0 {

    /* renamed from: a */
    public final boolean f21505a;

    /* renamed from: b */
    public final String f21506b;

    public cf0(boolean z, String str) {
        this.f21505a = z;
        this.f21506b = str;
    }

    /* renamed from: a */
    public static cf0 m12476a(JSONObject jSONObject) {
        return new cf0(jSONObject.optBoolean("enable_prewarming", false), jSONObject.optString("prefetch_url", ""));
    }
}
