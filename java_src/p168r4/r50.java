package p168r4;

import java.util.Map;
/* renamed from: r4.r50 */
/* loaded from: classes2.dex */
public final class r50 implements u50<cs0> {
    @Override // p168r4.u50
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4240a(cs0 cs0Var, Map map) {
        cs0 cs0Var2 = cs0Var;
        if (map.keySet().contains("start")) {
            cs0Var2.mo5057o0().mo7005i();
        } else if (map.keySet().contains("stop")) {
            cs0Var2.mo5057o0().mo7003k();
        } else if (map.keySet().contains("cancel")) {
            cs0Var2.mo5057o0().mo7002l();
        }
    }
}
