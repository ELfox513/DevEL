package p168r4;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: r4.wx0 */
/* loaded from: classes2.dex */
public final class wx0 {

    /* renamed from: a */
    public final Map<String, zx0> f33351a;

    /* renamed from: b */
    public final Map<String, yx0> f33352b;

    public wx0(Map<String, zx0> map, Map<String, yx0> map2) {
        this.f33351a = map;
        this.f33352b = map2;
    }

    /* renamed from: a */
    public final void m5554a(bp2 bp2Var) {
        for (zo2 zo2Var : bp2Var.f21154b.f20575c) {
            if (this.f33351a.containsKey(zo2Var.f34696a)) {
                this.f33351a.get(zo2Var.f34696a).mo4042a(zo2Var.f34697b);
            } else if (this.f33352b.containsKey(zo2Var.f34696a)) {
                yx0 yx0Var = this.f33352b.get(zo2Var.f34696a);
                JSONObject jSONObject = zo2Var.f34697b;
                HashMap hashMap = new HashMap();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    String optString = jSONObject.optString(next);
                    if (optString != null) {
                        hashMap.put(next, optString);
                    }
                }
                yx0Var.mo4539a(hashMap);
            }
        }
    }
}
