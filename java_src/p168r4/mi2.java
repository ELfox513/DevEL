package p168r4;

import org.json.JSONException;
import org.json.JSONObject;
import p185t3.C6756m;
/* renamed from: r4.mi2 */
/* loaded from: classes2.dex */
public final /* synthetic */ class mi2 implements dg2 {

    /* renamed from: a */
    public static final dg2 f27741a = new mi2();

    @Override // p168r4.dg2
    /* renamed from: d */
    public final void mo4299d(Object obj) {
        try {
            ((JSONObject) obj).getJSONObject("sdk_env").put("container_version", C6756m.f35427a);
        } catch (JSONException unused) {
        }
    }
}
