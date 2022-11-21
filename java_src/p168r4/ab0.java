package p168r4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0543w1;
import p235z2.C7601t;
/* renamed from: r4.ab0 */
/* loaded from: classes2.dex */
public final class ab0 {

    /* renamed from: a */
    public final List<za0> f20443a;

    /* renamed from: b */
    public final List<String> f20444b;

    /* renamed from: c */
    public final List<String> f20445c;

    /* renamed from: d */
    public final List<String> f20446d;

    /* renamed from: e */
    public final List<String> f20447e;

    /* renamed from: f */
    public final List<String> f20448f;

    /* renamed from: g */
    public final String f20449g;

    /* renamed from: h */
    public final String f20450h;

    public ab0(JSONObject jSONObject) {
        String str;
        if (cm0.m12433j(2)) {
            String valueOf = String.valueOf(jSONObject.toString(2));
            if (valueOf.length() != 0) {
                str = "Mediation Response JSON: ".concat(valueOf);
            } else {
                str = new String("Mediation Response JSON: ");
            }
            C0543w1.m26251k(str);
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i = -1;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                za0 za0Var = new za0(jSONArray.getJSONObject(i2));
                "banner".equalsIgnoreCase(za0Var.f34429v);
                arrayList.add(za0Var);
                if (i < 0) {
                    Iterator<String> it = za0Var.f34410c.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                                i = i2;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
            } catch (JSONException unused) {
            }
        }
        jSONArray.length();
        this.f20443a = Collections.unmodifiableList(arrayList);
        this.f20449g = jSONObject.optString("qdata");
        jSONObject.optInt("fs_model_type", -1);
        jSONObject.optLong("timeout_ms", -1L);
        JSONObject optJSONObject = jSONObject.optJSONObject("settings");
        if (optJSONObject != null) {
            optJSONObject.optLong("ad_network_timeout_millis", -1L);
            C7601t.m921v();
            this.f20444b = bb0.m12834a(optJSONObject, "click_urls");
            C7601t.m921v();
            this.f20445c = bb0.m12834a(optJSONObject, "imp_urls");
            C7601t.m921v();
            this.f20446d = bb0.m12834a(optJSONObject, "downloaded_imp_urls");
            C7601t.m921v();
            this.f20447e = bb0.m12834a(optJSONObject, "nofill_urls");
            C7601t.m921v();
            this.f20448f = bb0.m12834a(optJSONObject, "remote_ping_urls");
            optJSONObject.optBoolean("render_in_browser", false);
            optJSONObject.optLong("refresh", -1L);
            rh0 m7501X0 = rh0.m7501X0(optJSONObject.optJSONArray("rewards"));
            if (m7501X0 == null) {
                this.f20450h = null;
            } else {
                this.f20450h = m7501X0.f30573a;
            }
            optJSONObject.optBoolean("use_displayed_impression", false);
            optJSONObject.optBoolean("allow_pub_rendered_attribution", false);
            optJSONObject.optBoolean("allow_pub_owned_ad_view", false);
            optJSONObject.optBoolean("allow_custom_click_gesture", false);
            return;
        }
        this.f20444b = null;
        this.f20445c = null;
        this.f20446d = null;
        this.f20447e = null;
        this.f20448f = null;
        this.f20450h = null;
    }
}
