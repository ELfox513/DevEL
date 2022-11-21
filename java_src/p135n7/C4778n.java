package p135n7;

import android.os.Bundle;
import com.google.firebase.remoteconfig.internal.C1433a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import p160q5.InterfaceC5424a;
import p161q6.InterfaceC5434b;
/* renamed from: n7.n */
/* loaded from: classes2.dex */
public class C4778n {

    /* renamed from: a */
    public final InterfaceC5434b<InterfaceC5424a> f19070a;

    /* renamed from: b */
    public final Map<String, String> f19071b = Collections.synchronizedMap(new HashMap());

    /* renamed from: a */
    public void m15383a(String str, C1433a c1433a) {
        JSONObject optJSONObject;
        InterfaceC5424a interfaceC5424a = this.f19070a.get();
        if (interfaceC5424a == null) {
            return;
        }
        JSONObject m22899f = c1433a.m22899f();
        if (m22899f.length() < 1) {
            return;
        }
        JSONObject m22901d = c1433a.m22901d();
        if (m22901d.length() < 1 || (optJSONObject = m22899f.optJSONObject(str)) == null) {
            return;
        }
        String optString = optJSONObject.optString("choiceId");
        if (optString.isEmpty()) {
            return;
        }
        synchronized (this.f19071b) {
            if (optString.equals(this.f19071b.get(str))) {
                return;
            }
            this.f19071b.put(str, optString);
            Bundle bundle = new Bundle();
            bundle.putString("arm_key", str);
            bundle.putString("arm_value", m22901d.optString(str));
            bundle.putString("personalization_id", optJSONObject.optString("personalizationId"));
            bundle.putInt("arm_index", optJSONObject.optInt("armIndex", -1));
            bundle.putString("group", optJSONObject.optString("group"));
            interfaceC5424a.mo13313c("fp", "personalization_assignment", bundle);
            Bundle bundle2 = new Bundle();
            bundle2.putString("_fpid", optString);
            interfaceC5424a.mo13313c("fp", "_fpc", bundle2);
        }
    }

    public C4778n(InterfaceC5434b<InterfaceC5424a> interfaceC5434b) {
        this.f19070a = interfaceC5434b;
    }
}
