package p168r4;

import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0460b1;
import p016b3.C0543w1;
/* renamed from: r4.eh2 */
/* loaded from: classes2.dex */
public final class eh2 implements dg2<JSONObject> {

    /* renamed from: a */
    public final JSONObject f22990a;

    public eh2(JSONObject jSONObject) {
        this.f22990a = jSONObject;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(JSONObject jSONObject) {
        try {
            JSONObject m26423g = C0460b1.m26423g(jSONObject, "content_info");
            JSONObject jSONObject2 = this.f22990a;
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                m26423g.put(next, jSONObject2.get(next));
            }
        } catch (JSONException unused) {
            C0543w1.m26251k("Failed putting app indexing json.");
        }
    }
}
