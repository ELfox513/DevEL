package p168r4;

import android.text.TextUtils;
import java.util.Map;
import p235z2.C7601t;
/* renamed from: r4.w40 */
/* loaded from: classes2.dex */
public final class w40 implements u50<cs0> {
    @Override // p168r4.u50
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4240a(cs0 cs0Var, Map map) {
        cs0 cs0Var2 = cs0Var;
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            String str2 = (String) map.get("label");
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get("timestamp");
            if (TextUtils.isEmpty(str2)) {
                cm0.m12437f("No label given for CSI tick.");
            } else if (TextUtils.isEmpty(str4)) {
                cm0.m12437f("No timestamp given for CSI tick.");
            } else {
                try {
                    long mo24762b = C7601t.m932k().mo24762b() + (Long.parseLong(str4) - C7601t.m932k().mo24763a());
                    if (true == TextUtils.isEmpty(str3)) {
                        str3 = "native:view_load";
                    }
                    cs0Var2.mo5064m().m11892b(str2, str3, mo24762b);
                } catch (NumberFormatException e) {
                    cm0.m12436g("Malformed timestamp for CSI tick.", e);
                }
            }
        } else if ("experiment".equals(str)) {
            String str5 = (String) map.get("value");
            if (TextUtils.isEmpty(str5)) {
                cm0.m12437f("No value given for CSI experiment.");
            } else {
                cs0Var2.mo5064m().m11891c().m11024d("e", str5);
            }
        } else if ("extra".equals(str)) {
            String str6 = (String) map.get("name");
            String str7 = (String) map.get("value");
            if (TextUtils.isEmpty(str7)) {
                cm0.m12437f("No value given for CSI extra.");
            } else if (TextUtils.isEmpty(str6)) {
                cm0.m12437f("No name given for CSI extra.");
            } else {
                cs0Var2.mo5064m().m11891c().m11024d(str6, str7);
            }
        }
    }
}
