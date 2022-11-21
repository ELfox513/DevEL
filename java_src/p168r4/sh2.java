package p168r4;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0543w1;
/* renamed from: r4.sh2 */
/* loaded from: classes2.dex */
public final class sh2 implements eg2<dg2<JSONObject>> {

    /* renamed from: a */
    public final JSONObject f31359a;

    public sh2(Context context) {
        this.f31359a = yg0.m4724b(context);
    }

    @Override // p168r4.eg2
    public final h83<dg2<JSONObject>> zza() {
        return y73.m4814a(new dg2(this) { // from class: r4.rh2

            /* renamed from: a */
            public final sh2 f30575a;

            {
                this.f30575a = this;
            }

            @Override // p168r4.dg2
            /* renamed from: d */
            public final void mo4299d(Object obj) {
                this.f30575a.m7157a((JSONObject) obj);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m7157a(JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", this.f31359a);
        } catch (JSONException unused) {
            C0543w1.m26251k("Failed putting version constants.");
        }
    }
}
