package p168r4;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0460b1;
import p016b3.C0543w1;
import p211w2.C7171a;
/* renamed from: r4.vg2 */
/* loaded from: classes2.dex */
public final class vg2 implements dg2<JSONObject> {

    /* renamed from: a */
    public final C7171a.C7172a f32718a;

    /* renamed from: b */
    public final String f32719b;

    public vg2(C7171a.C7172a c7172a, String str) {
        this.f32718a = c7172a;
        this.f32719b = str;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(JSONObject jSONObject) {
        try {
            JSONObject m26423g = C0460b1.m26423g(jSONObject, "pii");
            C7171a.C7172a c7172a = this.f32718a;
            if (c7172a != null && !TextUtils.isEmpty(c7172a.m2232a())) {
                m26423g.put("rdid", this.f32718a.m2232a());
                m26423g.put("is_lat", this.f32718a.m2231b());
                m26423g.put("idtype", "adid");
                return;
            }
            m26423g.put("pdid", this.f32719b);
            m26423g.put("pdidtype", "ssaid");
        } catch (JSONException e) {
            C0543w1.m26250l("Failed putting Ad ID.", e);
        }
    }
}
