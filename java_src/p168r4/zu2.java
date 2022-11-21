package p168r4;

import org.json.JSONObject;
/* renamed from: r4.zu2 */
/* loaded from: classes2.dex */
public final class zu2 {

    /* renamed from: a */
    public final gv2 f34735a;

    /* renamed from: b */
    public final gv2 f34736b;

    /* renamed from: c */
    public final dv2 f34737c;

    /* renamed from: d */
    public final fv2 f34738d;

    public zu2(dv2 dv2Var, fv2 fv2Var, gv2 gv2Var, gv2 gv2Var2, boolean z) {
        this.f34737c = dv2Var;
        this.f34738d = fv2Var;
        this.f34735a = gv2Var;
        if (gv2Var2 == null) {
            this.f34736b = gv2.NONE;
        } else {
            this.f34736b = gv2Var2;
        }
    }

    /* renamed from: a */
    public static zu2 m4078a(dv2 dv2Var, fv2 fv2Var, gv2 gv2Var, gv2 gv2Var2, boolean z) {
        iw2.m10484a(fv2Var, "ImpressionType is null");
        iw2.m10484a(gv2Var, "Impression owner is null");
        if (gv2Var != gv2.NONE) {
            if (dv2Var == dv2.DEFINED_BY_JAVASCRIPT && gv2Var == gv2.NATIVE) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            if (fv2Var == fv2.DEFINED_BY_JAVASCRIPT && gv2Var == gv2.NATIVE) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            return new zu2(dv2Var, fv2Var, gv2Var, gv2Var2, true);
        }
        throw new IllegalArgumentException("Impression owner is none");
    }

    /* renamed from: b */
    public final JSONObject m4077b() {
        JSONObject jSONObject = new JSONObject();
        gw2.m11044c(jSONObject, "impressionOwner", this.f34735a);
        if (this.f34738d != null) {
            gw2.m11044c(jSONObject, "mediaEventsOwner", this.f34736b);
            gw2.m11044c(jSONObject, "creativeType", this.f34737c);
            gw2.m11044c(jSONObject, "impressionType", this.f34738d);
        } else {
            gw2.m11044c(jSONObject, "videoEventsOwner", this.f34736b);
        }
        gw2.m11044c(jSONObject, "isolateVerificationScripts", Boolean.TRUE);
        return jSONObject;
    }
}
