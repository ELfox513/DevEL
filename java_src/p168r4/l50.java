package p168r4;

import java.util.Map;
import p004a3.BinderC0073n;
/* renamed from: r4.l50 */
/* loaded from: classes2.dex */
public final class l50 implements u50<cs0> {
    @Override // p168r4.u50
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4240a(cs0 cs0Var, Map map) {
        cs0 cs0Var2 = cs0Var;
        if (cs0Var2.mo5129F() != null) {
            cs0Var2.mo5129F().zza();
        }
        BinderC0073n mo5097Z = cs0Var2.mo5097Z();
        if (mo5097Z != null) {
            mo5097Z.m27702a();
            return;
        }
        BinderC0073n mo5035x = cs0Var2.mo5035x();
        if (mo5035x != null) {
            mo5035x.m27702a();
        } else {
            cm0.m12437f("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
