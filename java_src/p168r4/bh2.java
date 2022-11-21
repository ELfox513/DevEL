package p168r4;

import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0543w1;
/* renamed from: r4.bh2 */
/* loaded from: classes2.dex */
public final class bh2 implements dg2<JSONObject> {

    /* renamed from: a */
    public final String f21066a;

    public bh2(String str) {
        this.f21066a = str;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(JSONObject jSONObject) {
        try {
            jSONObject.put("ms", this.f21066a);
        } catch (JSONException e) {
            C0543w1.m26250l("Failed putting Ad ID.", e);
        }
    }
}
