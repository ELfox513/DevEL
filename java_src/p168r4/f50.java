package p168r4;

import java.util.Map;
import p016b3.C0480g1;
/* renamed from: r4.f50 */
/* loaded from: classes2.dex */
public final /* synthetic */ class f50 implements u50 {

    /* renamed from: a */
    public static final u50 f23301a = new f50();

    @Override // p168r4.u50
    /* renamed from: a */
    public final void mo4240a(Object obj, Map map) {
        gt0 gt0Var = (gt0) obj;
        u50<cs0> u50Var = t50.f31689a;
        String str = (String) map.get("u");
        if (str == null) {
            cm0.m12437f("URL missing from httpTrack GMSG.");
        } else {
            new C0480g1(gt0Var.getContext(), ((ot0) gt0Var).mo5061n().f25171a, str).mo10833c();
        }
    }
}
