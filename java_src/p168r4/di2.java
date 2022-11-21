package p168r4;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0460b1;
import p016b3.C0543w1;
import p235z2.C7601t;
/* renamed from: r4.di2 */
/* loaded from: classes2.dex */
public final class di2 implements dg2<JSONObject> {

    /* renamed from: a */
    public final Bundle f22285a;

    public di2(Bundle bundle) {
        this.f22285a = bundle;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (this.f22285a != null) {
            try {
                C0460b1.m26423g(C0460b1.m26423g(jSONObject2, "device"), "play_store").put("parental_controls", C7601t.m939d().m26336S(this.f22285a));
            } catch (JSONException unused) {
                C0543w1.m26251k("Failed putting parental controls bundle.");
            }
        }
    }
}
