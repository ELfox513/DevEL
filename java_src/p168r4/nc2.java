package p168r4;

import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: r4.nc2 */
/* loaded from: classes2.dex */
public final class nc2 implements dg2<Bundle> {

    /* renamed from: a */
    public final JSONObject f28248a;

    /* renamed from: b */
    public final JSONObject f28249b;

    public nc2(JSONObject jSONObject, JSONObject jSONObject2) {
        this.f28248a = jSONObject;
        this.f28249b = jSONObject2;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        JSONObject jSONObject = this.f28248a;
        if (jSONObject != null) {
            bundle2.putString("fwd_cld", jSONObject.toString());
        }
        JSONObject jSONObject2 = this.f28249b;
        if (jSONObject2 != null) {
            bundle2.putString("fwd_common_cld", jSONObject2.toString());
        }
    }
}
