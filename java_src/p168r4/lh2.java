package p168r4;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0460b1;
import p016b3.C0543w1;
/* renamed from: r4.lh2 */
/* loaded from: classes2.dex */
public final class lh2 implements dg2<JSONObject> {

    /* renamed from: a */
    public final String f27222a;

    public lh2(String str) {
        this.f27222a = str;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(JSONObject jSONObject) {
        try {
            JSONObject m26423g = C0460b1.m26423g(jSONObject, "pii");
            if (!TextUtils.isEmpty(this.f27222a)) {
                m26423g.put("attok", this.f27222a);
            }
        } catch (JSONException e) {
            C0543w1.m26250l("Failed putting attestation token.", e);
        }
    }
}
