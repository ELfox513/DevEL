package p168r4;

import java.util.Map;
/* renamed from: r4.q50 */
/* loaded from: classes2.dex */
public final class q50 implements u50<cs0> {
    @Override // p168r4.u50
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4240a(cs0 cs0Var, Map map) {
        cs0 cs0Var2 = cs0Var;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            cs0Var2.mo1005M0();
        } else if ("resume".equals(str)) {
            cs0Var2.mo1004Z0();
        }
    }
}
