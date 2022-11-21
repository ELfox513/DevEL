package p168r4;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: r4.x52 */
/* loaded from: classes2.dex */
public final class x52 implements s12<zp2, o32> {

    /* renamed from: a */
    public final Map<String, t12<zp2, o32>> f33461a = new HashMap();

    /* renamed from: b */
    public final gq1 f33462b;

    public x52(gq1 gq1Var) {
        this.f33462b = gq1Var;
    }

    @Override // p168r4.s12
    /* renamed from: a */
    public final t12<zp2, o32> mo5497a(String str, JSONObject jSONObject) {
        t12<zp2, o32> t12Var;
        synchronized (this) {
            t12Var = this.f33461a.get(str);
            if (t12Var == null) {
                t12Var = new t12<>(this.f33462b.m11063b(str, jSONObject), new o32(), str);
                this.f33461a.put(str, t12Var);
            }
        }
        return t12Var;
    }
}
