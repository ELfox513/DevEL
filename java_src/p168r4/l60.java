package p168r4;

import android.text.TextUtils;
import java.util.Map;
/* renamed from: r4.l60 */
/* loaded from: classes2.dex */
public final class l60 implements u50<Object> {

    /* renamed from: a */
    public final k60 f27107a;

    public l60(k60 k60Var) {
        this.f27107a = k60Var;
    }

    /* renamed from: b */
    public static void m9785b(cs0 cs0Var, k60 k60Var) {
        cs0Var.mo5080g0("/reward", new l60(k60Var));
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final void mo4240a(Object obj, Map<String, String> map) {
        String str = map.get("action");
        if ("grant".equals(str)) {
            rh0 rh0Var = null;
            try {
                int parseInt = Integer.parseInt(map.get("amount"));
                String str2 = map.get("type");
                if (!TextUtils.isEmpty(str2)) {
                    rh0Var = new rh0(str2, parseInt);
                }
            } catch (NumberFormatException e) {
                cm0.m12436g("Unable to parse reward amount.", e);
            }
            this.f27107a.mo7415L(rh0Var);
        } else if ("video_start".equals(str)) {
            this.f27107a.zza();
        } else if ("video_complete".equals(str)) {
            this.f27107a.mo7414b();
        }
    }
}
