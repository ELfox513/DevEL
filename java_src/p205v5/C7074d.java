package p205v5;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;
import p196u5.C6930f;
import p214w5.InterfaceC7183a;
import p214w5.InterfaceC7184b;
/* renamed from: v5.d */
/* loaded from: classes2.dex */
public class C7074d implements InterfaceC7072b, InterfaceC7184b {

    /* renamed from: a */
    public InterfaceC7183a f36071a;

    /* renamed from: c */
    public static String m2569c(String str, Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put("name", str);
        jSONObject.put("parameters", jSONObject2);
        return jSONObject.toString();
    }

    @Override // p214w5.InterfaceC7184b
    /* renamed from: a */
    public void mo2219a(InterfaceC7183a interfaceC7183a) {
        this.f36071a = interfaceC7183a;
        C6930f.m3016f().m3020b("Registered Firebase Analytics event receiver for breadcrumbs");
    }

    @Override // p205v5.InterfaceC7072b
    /* renamed from: b */
    public void mo2570b(String str, Bundle bundle) {
        InterfaceC7183a interfaceC7183a = this.f36071a;
        if (interfaceC7183a != null) {
            try {
                interfaceC7183a.mo1699a("$A$:" + m2569c(str, bundle));
            } catch (JSONException unused) {
                C6930f.m3016f().m3011k("Unable to serialize Firebase Analytics event to breadcrumb.");
            }
        }
    }
}
