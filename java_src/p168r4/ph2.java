package p168r4;

import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0543w1;
/* renamed from: r4.ph2 */
/* loaded from: classes2.dex */
public final class ph2 implements dg2<JSONObject> {

    /* renamed from: a */
    public final JSONObject f29465a;

    public ph2(JSONObject jSONObject) {
        this.f29465a = jSONObject;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(JSONObject jSONObject) {
        try {
            jSONObject.put("cache_state", this.f29465a);
        } catch (JSONException unused) {
            C0543w1.m26251k("Unable to get cache_state");
        }
    }
}
