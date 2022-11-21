package p168r4;

import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0460b1;
import p016b3.C0543w1;
/* renamed from: r4.wh2 */
/* loaded from: classes2.dex */
public final class wh2 implements dg2<JSONObject> {

    /* renamed from: a */
    public final String f33194a;

    /* renamed from: b */
    public final String f33195b;

    public wh2(String str, String str2) {
        this.f33194a = str;
        this.f33195b = str2;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(JSONObject jSONObject) {
        try {
            JSONObject m26423g = C0460b1.m26423g(jSONObject, "pii");
            m26423g.put("doritos", this.f33194a);
            m26423g.put("doritos_v2", this.f33195b);
        } catch (JSONException unused) {
            C0543w1.m26251k("Failed putting doritos string.");
        }
    }
}
