package p168r4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.za0 */
/* loaded from: classes2.dex */
public final class za0 {

    /* renamed from: a */
    public final String f34408a;

    /* renamed from: b */
    public final String f34409b;

    /* renamed from: c */
    public final List<String> f34410c;

    /* renamed from: d */
    public final String f34411d;

    /* renamed from: e */
    public final String f34412e;

    /* renamed from: f */
    public final List<String> f34413f;

    /* renamed from: g */
    public final List<String> f34414g;

    /* renamed from: h */
    public final List<String> f34415h;

    /* renamed from: i */
    public final List<String> f34416i;

    /* renamed from: j */
    public final List<String> f34417j;

    /* renamed from: k */
    public final String f34418k;

    /* renamed from: l */
    public final List<String> f34419l;

    /* renamed from: m */
    public final List<String> f34420m;

    /* renamed from: n */
    public final List<String> f34421n;

    /* renamed from: o */
    public final String f34422o;

    /* renamed from: p */
    public final String f34423p;

    /* renamed from: q */
    public final String f34424q;

    /* renamed from: r */
    public final String f34425r;

    /* renamed from: s */
    public final String f34426s;

    /* renamed from: t */
    public final List<String> f34427t;

    /* renamed from: u */
    public final String f34428u;

    /* renamed from: v */
    public final String f34429v;

    public za0(JSONObject jSONObject) {
        List<String> list;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        this.f34409b = jSONObject.optString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        this.f34410c = Collections.unmodifiableList(arrayList);
        this.f34411d = jSONObject.optString("allocation_id", null);
        C7601t.m921v();
        this.f34413f = bb0.m12834a(jSONObject, "clickurl");
        C7601t.m921v();
        this.f34414g = bb0.m12834a(jSONObject, "imp_urls");
        C7601t.m921v();
        this.f34415h = bb0.m12834a(jSONObject, "downloaded_imp_urls");
        C7601t.m921v();
        this.f34417j = bb0.m12834a(jSONObject, "fill_urls");
        C7601t.m921v();
        this.f34419l = bb0.m12834a(jSONObject, "video_start_urls");
        C7601t.m921v();
        this.f34421n = bb0.m12834a(jSONObject, "video_complete_urls");
        C7601t.m921v();
        this.f34420m = bb0.m12834a(jSONObject, "video_reward_urls");
        this.f34422o = jSONObject.optString("transaction_id");
        this.f34423p = jSONObject.optString("valid_from_timestamp");
        JSONObject optJSONObject = jSONObject.optJSONObject("ad");
        if (optJSONObject != null) {
            C7601t.m921v();
            list = bb0.m12834a(optJSONObject, "manual_impression_urls");
        } else {
            list = null;
        }
        this.f34416i = list;
        if (optJSONObject != null) {
            str = optJSONObject.toString();
        } else {
            str = null;
        }
        this.f34408a = str;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("data");
        if (optJSONObject2 != null) {
            str2 = optJSONObject2.toString();
        } else {
            str2 = null;
        }
        this.f34418k = str2;
        if (optJSONObject2 != null) {
            str3 = optJSONObject2.optString("class_name");
        } else {
            str3 = null;
        }
        this.f34412e = str3;
        this.f34424q = jSONObject.optString("html_template", null);
        this.f34425r = jSONObject.optString("ad_base_url", null);
        JSONObject optJSONObject3 = jSONObject.optJSONObject("assets");
        if (optJSONObject3 != null) {
            str4 = optJSONObject3.toString();
        } else {
            str4 = null;
        }
        this.f34426s = str4;
        C7601t.m921v();
        this.f34427t = bb0.m12834a(jSONObject, "template_ids");
        JSONObject optJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        if (optJSONObject4 != null) {
            str5 = optJSONObject4.toString();
        } else {
            str5 = null;
        }
        this.f34428u = str5;
        this.f34429v = jSONObject.optString("response_type", null);
        jSONObject.optLong("ad_network_timeout_millis", -1L);
    }
}
