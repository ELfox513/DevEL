package p168r4;

import android.content.Context;
import java.util.Map;
import p235z2.C7601t;
/* renamed from: r4.a60 */
/* loaded from: classes2.dex */
public final class a60 implements u50<Object> {

    /* renamed from: a */
    public final Context f20395a;

    public a60(Context context) {
        this.f20395a = context;
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final void mo4240a(Object obj, Map<String, String> map) {
        char c;
        if (!C7601t.m942a().m10622g(this.f20395a)) {
            return;
        }
        String str = map.get("eventName");
        String str2 = map.get("eventId");
        int hashCode = str.hashCode();
        if (hashCode != 94399) {
            if (hashCode != 94401) {
                if (hashCode == 94407 && str.equals("_ai")) {
                    c = 1;
                }
                c = 65535;
            } else {
                if (str.equals("_ac")) {
                    c = 0;
                }
                c = 65535;
            }
        } else {
            if (str.equals("_aa")) {
                c = 2;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    cm0.m12440c("logScionEvent gmsg contained unsupported eventName");
                    return;
                } else {
                    C7601t.m942a().m10607v(this.f20395a, str2);
                    return;
                }
            }
            C7601t.m942a().m10609t(this.f20395a, str2);
            return;
        }
        C7601t.m942a().m10610s(this.f20395a, str2);
    }
}
