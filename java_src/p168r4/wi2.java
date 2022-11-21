package p168r4;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0543w1;
import p235z2.C7601t;
/* renamed from: r4.wi2 */
/* loaded from: classes2.dex */
public final class wi2 implements dg2<JSONObject> {

    /* renamed from: a */
    public final Map<String, Object> f33199a;

    public wi2(Map<String, Object> map) {
        this.f33199a = map;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(JSONObject jSONObject) {
        String str;
        try {
            jSONObject.put("video_decoders", C7601t.m939d().m26338Q(this.f33199a));
        } catch (JSONException e) {
            String valueOf = String.valueOf(e.getMessage());
            if (valueOf.length() != 0) {
                str = "Could not encode video decoder properties: ".concat(valueOf);
            } else {
                str = new String("Could not encode video decoder properties: ");
            }
            C0543w1.m26251k(str);
        }
    }
}
