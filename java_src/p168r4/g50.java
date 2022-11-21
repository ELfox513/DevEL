package p168r4;

import java.util.Map;
/* renamed from: r4.g50 */
/* loaded from: classes2.dex */
public final /* synthetic */ class g50 implements u50 {

    /* renamed from: a */
    public static final u50 f23885a = new g50();

    @Override // p168r4.u50
    /* renamed from: a */
    public final void mo4240a(Object obj, Map map) {
        nt0 nt0Var = (nt0) obj;
        u50<cs0> u50Var = t50.f31689a;
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int parseInt = Integer.parseInt(str);
            int parseInt2 = Integer.parseInt(str2);
            int parseInt3 = Integer.parseInt(str3);
            C6300u mo5126H = nt0Var.mo5126H();
            if (mo5126H != null) {
                mo5126H.m6683b().mo1015f(parseInt, parseInt2, parseInt3);
            }
        } catch (NumberFormatException unused) {
            cm0.m12437f("Could not parse touch parameters from gmsg.");
        }
    }
}
