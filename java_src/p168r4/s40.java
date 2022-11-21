package p168r4;

import android.os.Bundle;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0460b1;
/* renamed from: r4.s40 */
/* loaded from: classes2.dex */
public final class s40 implements u50<Object> {

    /* renamed from: a */
    public final t40 f31256a;

    public s40(t40 t40Var) {
        this.f31256a = t40Var;
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final void mo4240a(Object obj, Map<String, String> map) {
        if (this.f31256a == null) {
            return;
        }
        String str = map.get("name");
        if (str == null) {
            cm0.m12438e("Ad metadata with no name parameter.");
            str = "";
        }
        Bundle bundle = null;
        if (map.containsKey("info")) {
            try {
                bundle = C0460b1.m26419k(new JSONObject(map.get("info")));
            } catch (JSONException e) {
                cm0.m12439d("Failed to convert ad metadata to JSON.", e);
            }
        }
        if (bundle == null) {
            cm0.m12440c("Failed to convert ad metadata to Bundle.");
        } else {
            this.f31256a.mo4161s(str, bundle);
        }
    }
}
