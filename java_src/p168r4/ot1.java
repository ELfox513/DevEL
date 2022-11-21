package p168r4;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: r4.ot1 */
/* loaded from: classes2.dex */
public final class ot1 {

    /* renamed from: a */
    public Long f29122a;

    /* renamed from: b */
    public final String f29123b;

    /* renamed from: c */
    public String f29124c;

    /* renamed from: d */
    public Integer f29125d;

    /* renamed from: e */
    public String f29126e;

    /* renamed from: f */
    public Integer f29127f;

    public /* synthetic */ ot1(String str, pt1 pt1Var) {
        this.f29123b = str;
    }

    /* renamed from: f */
    public static /* synthetic */ String m8699f(ot1 ot1Var) {
        String str = (String) C5592av.m12935c().m8098c(C6225rz.f30861M6);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("objectId", ot1Var.f29122a);
            jSONObject.put("eventCategory", ot1Var.f29123b);
            jSONObject.putOpt("event", ot1Var.f29124c);
            jSONObject.putOpt("errorCode", ot1Var.f29125d);
            jSONObject.putOpt("rewardType", ot1Var.f29126e);
            jSONObject.putOpt("rewardAmount", ot1Var.f29127f);
        } catch (JSONException unused) {
            cm0.m12437f("Could not convert parameters to JSON.");
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 16 + String.valueOf(jSONObject2).length());
        sb.append(str);
        sb.append("(\"h5adsEvent\",");
        sb.append(jSONObject2);
        sb.append(");");
        return sb.toString();
    }
}
