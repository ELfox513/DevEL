package p168r4;

import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.yy1 */
/* loaded from: classes2.dex */
public final class yy1 implements w90<zy1> {
    @Override // p168r4.w90
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ JSONObject mo4532b(zy1 zy1Var) {
        zy1 zy1Var2 = zy1Var;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject2.put("base_url", zy1Var2.f34785c.m7510c());
        jSONObject2.put("signals", zy1Var2.f34784b);
        jSONObject3.put("body", zy1Var2.f34783a.f22707c);
        jSONObject3.put("headers", C7601t.m939d().m26338Q(zy1Var2.f34783a.f22706b));
        jSONObject3.put("response_code", zy1Var2.f34783a.f22705a);
        jSONObject3.put("latency", zy1Var2.f34783a.f22708d);
        jSONObject.put("request", jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", zy1Var2.f34785c.m7505h());
        return jSONObject;
    }
}
