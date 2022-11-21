package p168r4;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0460b1;
/* renamed from: r4.si2 */
/* loaded from: classes2.dex */
public final class si2 implements dg2<JSONObject> {

    /* renamed from: a */
    public final String f31377a;

    public si2(String str) {
        this.f31377a = str;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        try {
            if (!TextUtils.isEmpty(this.f31377a)) {
                C0460b1.m26423g(jSONObject2, "pii").put("adsid", this.f31377a);
            }
        } catch (JSONException e) {
            cm0.m12436g("Failed putting trustless token.", e);
        }
    }
}
