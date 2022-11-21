package p168r4;

import org.json.JSONObject;
/* renamed from: r4.n62 */
/* loaded from: classes2.dex */
public final class n62 implements s12<ed0, n32> {

    /* renamed from: a */
    public final s72 f28174a;

    public n62(s72 s72Var) {
        this.f28174a = s72Var;
    }

    @Override // p168r4.s12
    /* renamed from: a */
    public final t12<ed0, n32> mo5497a(String str, JSONObject jSONObject) {
        ed0 m7191b = this.f28174a.m7191b(str);
        if (m7191b == null) {
            return null;
        }
        return new t12<>(m7191b, new n32(), str);
    }
}
