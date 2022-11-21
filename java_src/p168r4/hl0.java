package p168r4;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.hl0 */
/* loaded from: classes2.dex */
public final class hl0 {

    /* renamed from: d */
    public String f24667d;

    /* renamed from: e */
    public String f24668e;

    /* renamed from: f */
    public long f24669f;

    /* renamed from: g */
    public JSONObject f24670g;

    /* renamed from: h */
    public boolean f24671h;

    /* renamed from: j */
    public boolean f24673j;

    /* renamed from: a */
    public final List<String> f24664a = new ArrayList();

    /* renamed from: b */
    public final List<String> f24665b = new ArrayList();

    /* renamed from: c */
    public final Map<String, ab0> f24666c = new HashMap();

    /* renamed from: i */
    public final List<String> f24672i = new ArrayList();

    /* renamed from: a */
    public final void m10890a(long j) {
        this.f24669f = j;
    }

    /* renamed from: b */
    public final long m10889b() {
        return this.f24669f;
    }

    /* renamed from: c */
    public final boolean m10888c() {
        return this.f24671h;
    }

    /* renamed from: d */
    public final String m10887d() {
        return this.f24668e;
    }

    /* renamed from: e */
    public final String m10886e() {
        return this.f24667d;
    }

    /* renamed from: f */
    public final Map<String, ab0> m10885f() {
        return this.f24666c;
    }

    /* renamed from: g */
    public final JSONObject m10884g() {
        return this.f24670g;
    }

    /* renamed from: h */
    public final List<String> m10883h() {
        return this.f24672i;
    }

    /* renamed from: i */
    public final boolean m10882i() {
        return this.f24673j;
    }

    public hl0(String str, long j) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        JSONArray optJSONArray;
        JSONObject optJSONObject3;
        this.f24671h = false;
        this.f24673j = false;
        this.f24668e = str;
        this.f24669f = j;
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.f24670g = jSONObject;
                if (jSONObject.optInt("status", -1) != 1) {
                    this.f24671h = false;
                    cm0.m12437f("App settings could not be fetched successfully.");
                    return;
                }
                this.f24671h = true;
                this.f24667d = this.f24670g.optString("app_id");
                JSONArray optJSONArray2 = this.f24670g.optJSONArray("ad_unit_id_settings");
                if (optJSONArray2 != null) {
                    for (int i = 0; i < optJSONArray2.length(); i++) {
                        JSONObject jSONObject2 = optJSONArray2.getJSONObject(i);
                        String optString = jSONObject2.optString("format");
                        String optString2 = jSONObject2.optString("ad_unit_id");
                        if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                            if ("interstitial".equalsIgnoreCase(optString)) {
                                this.f24665b.add(optString2);
                            } else if (("rewarded".equalsIgnoreCase(optString) || "rewarded_interstitial".equals(optString)) && (optJSONObject3 = jSONObject2.optJSONObject("mediation_config")) != null) {
                                this.f24666c.put(optString2, new ab0(optJSONObject3));
                            }
                        }
                    }
                }
                JSONArray optJSONArray3 = this.f24670g.optJSONArray("persistable_banner_ad_unit_ids");
                if (optJSONArray3 != null) {
                    for (int i2 = 0; i2 < optJSONArray3.length(); i2++) {
                        this.f24664a.add(optJSONArray3.optString(i2));
                    }
                }
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31015f5)).booleanValue() && (optJSONObject2 = this.f24670g.optJSONObject("common_settings")) != null && (optJSONArray = optJSONObject2.optJSONArray("loeid")) != null) {
                    for (int i3 = 0; i3 < optJSONArray.length(); i3++) {
                        this.f24672i.add(optJSONArray.get(i3).toString());
                    }
                }
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30787D4)).booleanValue() && (optJSONObject = this.f24670g.optJSONObject("common_settings")) != null) {
                    this.f24673j = optJSONObject.optBoolean("is_prefetching_enabled", false);
                }
            } catch (JSONException e) {
                cm0.m12436g("Exception occurred while processing app setting json", e);
                C7601t.m935h().m9056k(e, "AppSettings.parseAppSettingsJson");
            }
        }
    }
}
