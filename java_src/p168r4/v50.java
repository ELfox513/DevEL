package p168r4;

import java.util.Map;
import p220x3.C7297q;
/* renamed from: r4.v50 */
/* loaded from: classes2.dex */
public final class v50 implements u50<Object> {

    /* renamed from: a */
    public final iv1 f32585a;

    public v50(iv1 iv1Var) {
        C7297q.m1882k(iv1Var, "The Inspector Manager must not be null");
        this.f32585a = iv1Var;
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final void mo4240a(Object obj, Map<String, String> map) {
        if (map != null && map.containsKey("extras")) {
            long j = Long.MAX_VALUE;
            if (map.containsKey("expires")) {
                try {
                    j = Long.parseLong(map.get("expires"));
                } catch (NumberFormatException unused) {
                }
            }
            this.f32585a.m10499i(map.get("extras"), j);
        }
    }
}
