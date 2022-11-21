package p168r4;

import java.util.Map;
import org.json.JSONObject;
/* renamed from: r4.j50 */
/* loaded from: classes2.dex */
public final class j50 implements u50<cs0> {
    @Override // p168r4.u50
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4240a(cs0 cs0Var, Map map) {
        JSONObject mo9609e;
        cs0 cs0Var2 = cs0Var;
        b20 mo5134C = cs0Var2.mo5134C();
        if (mo5134C != null && (mo9609e = mo5134C.mo9609e()) != null) {
            cs0Var2.mo5091c("nativeClickMetaReady", mo9609e);
        } else {
            cs0Var2.mo5091c("nativeClickMetaReady", new JSONObject());
        }
    }
}
