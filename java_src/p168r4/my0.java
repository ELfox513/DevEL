package p168r4;

import org.json.JSONObject;
/* renamed from: r4.my0 */
/* loaded from: classes2.dex */
public final class my0 implements zx0 {

    /* renamed from: a */
    public final kj0 f28011a;

    public my0(kj0 kj0Var) {
        this.f28011a = kj0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [r4.kj0] */
    /* JADX WARN: Type inference failed for: r4v2, types: [int] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    @Override // p168r4.zx0
    /* renamed from: a */
    public final void mo4042a(JSONObject jSONObject) {
        ?? r4;
        long optLong = jSONObject.optLong("timestamp");
        if (jSONObject.optBoolean("npa_reset")) {
            r4 = -1;
        } else {
            r4 = jSONObject.optBoolean("npa");
        }
        this.f28011a.m10020d(r4, optLong);
    }
}
