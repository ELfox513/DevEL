package p168r4;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0543w1;
import p235z2.C7601t;
/* renamed from: r4.j60 */
/* loaded from: classes2.dex */
public final class j60 implements u50<Object> {

    /* renamed from: a */
    public final Object f25930a = new Object();

    /* renamed from: b */
    public final Map<String, i60> f25931b = new HashMap();

    @Override // p168r4.u50
    /* renamed from: a */
    public final void mo4240a(Object obj, Map<String, String> map) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5 = map.get("id");
        String str6 = map.get("fail");
        String str7 = map.get("fail_reason");
        String str8 = map.get("fail_stack");
        String str9 = map.get("result");
        if (true == TextUtils.isEmpty(str8)) {
            str7 = "Unknown Fail Reason.";
        }
        if (TextUtils.isEmpty(str8)) {
            str = "";
        } else {
            String valueOf = String.valueOf(str8);
            if (valueOf.length() != 0) {
                str = "\n".concat(valueOf);
            } else {
                str = new String("\n");
            }
        }
        synchronized (this.f25930a) {
            i60 remove = this.f25931b.remove(str5);
            if (remove == null) {
                String valueOf2 = String.valueOf(str5);
                if (valueOf2.length() != 0) {
                    str4 = "Received result for unexpected method invocation: ".concat(valueOf2);
                } else {
                    str4 = new String("Received result for unexpected method invocation: ");
                }
                cm0.m12437f(str4);
            } else if (!TextUtils.isEmpty(str6)) {
                String valueOf3 = String.valueOf(str7);
                String valueOf4 = String.valueOf(str);
                if (valueOf4.length() != 0) {
                    str3 = valueOf3.concat(valueOf4);
                } else {
                    str3 = new String(valueOf3);
                }
                remove.mo8430u(str3);
            } else if (str9 == null) {
                remove.mo8431a(null);
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(str9);
                    if (C0543w1.m26249m()) {
                        String valueOf5 = String.valueOf(jSONObject.toString(2));
                        if (valueOf5.length() != 0) {
                            str2 = "Result GMSG: ".concat(valueOf5);
                        } else {
                            str2 = new String("Result GMSG: ");
                        }
                        C0543w1.m26251k(str2);
                    }
                    remove.mo8431a(jSONObject);
                } catch (JSONException e) {
                    remove.mo8430u(e.getMessage());
                }
            }
        }
    }

    /* renamed from: b */
    public final void m10397b(String str, i60 i60Var) {
        synchronized (this.f25930a) {
            this.f25931b.put(str, i60Var);
        }
    }

    /* renamed from: c */
    public final <EngineT extends s80> h83<JSONObject> m10396c(EngineT enginet, String str, JSONObject jSONObject) {
        vm0 vm0Var = new vm0();
        C7601t.m939d();
        String uuid = UUID.randomUUID().toString();
        m10397b(uuid, new h60(this, vm0Var));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", uuid);
            jSONObject2.put("args", jSONObject);
            enginet.mo5120K0(str, jSONObject2);
        } catch (Exception e) {
            vm0Var.m6085f(e);
        }
        return vm0Var;
    }
}
