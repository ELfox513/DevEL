package p168r4;

import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: r4.mw2 */
/* loaded from: classes2.dex */
public final class mw2 {

    /* renamed from: a */
    public JSONObject f28000a;

    /* renamed from: b */
    public final vw2 f28001b;

    public mw2(vw2 vw2Var) {
        this.f28001b = vw2Var;
    }

    /* renamed from: a */
    public final void m9259a(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f28001b.m5987a(new zw2(this, hashSet, jSONObject, j, null));
    }

    /* renamed from: b */
    public final void m9258b(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f28001b.m5987a(new xw2(this, hashSet, jSONObject, j, null));
    }

    /* renamed from: c */
    public final void m9257c() {
        this.f28001b.m5987a(new ww2(this, null));
    }

    /* renamed from: d */
    public final JSONObject m9256d() {
        return this.f28000a;
    }

    /* renamed from: e */
    public final void m9255e(JSONObject jSONObject) {
        this.f28000a = jSONObject;
    }
}
