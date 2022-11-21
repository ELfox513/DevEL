package p168r4;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0543w1;
/* renamed from: r4.ai2 */
/* loaded from: classes2.dex */
public final class ai2 implements dg2<JSONObject> {

    /* renamed from: a */
    public final List<String> f20489a;

    public ai2(List<String> list) {
        this.f20489a = list;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(JSONObject jSONObject) {
        try {
            jSONObject.put("eid", TextUtils.join(",", this.f20489a));
        } catch (JSONException unused) {
            C0543w1.m26251k("Failed putting experiment ids.");
        }
    }
}
