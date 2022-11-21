package p168r4;

import java.util.Map;
import org.json.JSONObject;
/* renamed from: r4.i50 */
/* loaded from: classes2.dex */
public final class i50 implements u50<cs0> {
    @Override // p168r4.u50
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4240a(cs0 cs0Var, Map map) {
        JSONObject mo9610b;
        cs0 cs0Var2 = cs0Var;
        b20 mo5134C = cs0Var2.mo5134C();
        if (mo5134C != null && (mo9610b = mo5134C.mo9610b()) != null) {
            cs0Var2.mo5091c("nativeAdViewSignalsReady", mo9610b);
        } else {
            cs0Var2.mo5091c("nativeAdViewSignalsReady", new JSONObject());
        }
    }
}
