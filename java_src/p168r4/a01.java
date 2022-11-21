package p168r4;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: r4.a01 */
/* loaded from: classes2.dex */
public final class a01 implements vr3<JSONObject> {

    /* renamed from: a */
    public final is3<no2> f20324a;

    public a01(is3<no2> is3Var) {
        this.f20324a = is3Var;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        try {
            return new JSONObject(((y31) this.f20324a).m4921b().f28439z);
        } catch (JSONException unused) {
            return null;
        }
    }
}
