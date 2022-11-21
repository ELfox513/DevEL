package p053e6;

import java.util.Locale;
import org.json.JSONObject;
import p062f6.C3520a;
import p062f6.C3521b;
import p062f6.C3522c;
import p062f6.C3524e;
import p222x5.InterfaceC7378q;
/* renamed from: e6.h */
/* loaded from: classes2.dex */
public class C3388h implements InterfaceC3387g {
    /* renamed from: d */
    public static C3522c m19006d() {
        return new C3522c(8, 4);
    }

    /* renamed from: b */
    public static C3520a m19008b(JSONObject jSONObject, JSONObject jSONObject2) {
        String format;
        String string = jSONObject2.getString("status");
        boolean equals = "new".equals(string);
        String string2 = jSONObject.getString("bundle_id");
        String string3 = jSONObject.getString("org_id");
        if (equals) {
            format = "https://update.crashlytics.com/spi/v1/platforms/android/apps";
        } else {
            format = String.format(Locale.US, "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s", string2);
        }
        String str = format;
        Locale locale = Locale.US;
        return new C3520a(string, str, String.format(locale, "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports", string2), String.format(locale, "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps", string2), string2, string3, jSONObject2.optBoolean("update_required", false), jSONObject2.optInt("report_upload_variant", 0), jSONObject2.optInt("native_report_upload_variant", 0));
    }

    /* renamed from: c */
    public static C3521b m19007c(JSONObject jSONObject) {
        return new C3521b(jSONObject.optBoolean("collect_reports", true), jSONObject.optBoolean("collect_anrs", false));
    }

    /* renamed from: e */
    public static long m19005e(InterfaceC7378q interfaceC7378q, long j, JSONObject jSONObject) {
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
        return new C3524e(m19005e(interfaceC7378q, optInt2, jSONObject), m19008b(jSONObject.getJSONObject("fabric"), jSONObject.getJSONObject("app")), m19006d(), m19007c(jSONObject.getJSONObject("features")), optInt, optInt2);
    }
}
