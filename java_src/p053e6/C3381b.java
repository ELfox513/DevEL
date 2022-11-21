package p053e6;

import org.json.JSONObject;
import p062f6.C3520a;
import p062f6.C3521b;
import p062f6.C3522c;
import p062f6.C3524e;
import p062f6.InterfaceC3523d;
import p222x5.InterfaceC7378q;
/* renamed from: e6.b */
/* loaded from: classes2.dex */
public class C3381b implements InterfaceC3387g {
    /* renamed from: b */
    public static C3520a m19035b(JSONObject jSONObject) {
        return new C3520a(jSONObject.getString("status"), jSONObject.getString("url"), jSONObject.getString("reports_url"), jSONObject.getString("ndk_reports_url"), jSONObject.optBoolean("update_required", false));
    }

    /* renamed from: c */
    public static C3521b m19034c(JSONObject jSONObject) {
        return new C3521b(jSONObject.optBoolean("collect_reports", true), jSONObject.optBoolean("collect_anrs", false));
    }

    /* renamed from: d */
    public static C3522c m19033d(JSONObject jSONObject) {
        return new C3522c(jSONObject.optInt("max_custom_exception_events", 8), 4);
    }

    /* renamed from: e */
    public static InterfaceC3523d m19032e(InterfaceC7378q interfaceC7378q) {
        JSONObject jSONObject = new JSONObject();
        return new C3524e(m19031f(interfaceC7378q, 3600L, jSONObject), null, m19033d(jSONObject), m19034c(jSONObject), 0, 3600);
    }

    /* renamed from: f */
    public static long m19031f(InterfaceC7378q interfaceC7378q, long j, JSONObject jSONObject) {
        if (jSONObject.has("expires_at")) {
            return jSONObject.optLong("expires_at");
        }
        return (j * 1000) + interfaceC7378q.mo1635a();
    }

    @Override // p053e6.InterfaceC3387g
    /* renamed from: a */
    public C3524e mo19009a(InterfaceC7378q interfaceC7378q, JSONObject jSONObject) {
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", 3600);
        return new C3524e(m19031f(interfaceC7378q, optInt2, jSONObject), m19035b(jSONObject.getJSONObject("app")), m19033d(jSONObject.getJSONObject("session")), m19034c(jSONObject.getJSONObject("features")), optInt, optInt2);
    }
}
