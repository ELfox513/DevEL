package p168r4;

import com.prineside.tdi2.Config;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* renamed from: r4.rg0 */
/* loaded from: classes2.dex */
public final class rg0 {

    /* renamed from: a */
    public final List<String> f30558a;

    /* renamed from: b */
    public final String f30559b;

    /* renamed from: c */
    public final String f30560c;

    /* renamed from: d */
    public final String f30561d;

    /* renamed from: e */
    public final boolean f30562e;

    /* renamed from: f */
    public final boolean f30563f;

    /* renamed from: g */
    public final String f30564g;

    /* renamed from: h */
    public final String f30565h;

    /* renamed from: i */
    public final String f30566i;

    /* renamed from: j */
    public final int f30567j;

    /* renamed from: k */
    public final JSONObject f30568k;

    /* renamed from: l */
    public final String f30569l;

    /* renamed from: m */
    public final String f30570m;

    /* renamed from: j */
    public static boolean m7503j(String str) {
        return str != null && (str.equals(Config.SITE_API_VERSION) || str.equals("true"));
    }

    /* renamed from: a */
    public final int m7512a() {
        return this.f30567j;
    }

    /* renamed from: b */
    public final List<String> m7511b() {
        return this.f30558a;
    }

    /* renamed from: c */
    public final String m7510c() {
        return this.f30559b;
    }

    /* renamed from: d */
    public final String m7509d() {
        return this.f30560c;
    }

    /* renamed from: e */
    public final String m7508e() {
        return this.f30566i;
    }

    /* renamed from: f */
    public final boolean m7507f() {
        return this.f30562e;
    }

    /* renamed from: g */
    public final boolean m7506g() {
        return this.f30563f;
    }

    /* renamed from: h */
    public final JSONObject m7505h() {
        return this.f30568k;
    }

    /* renamed from: i */
    public final String m7504i() {
        return this.f30570m;
    }

    public rg0(JSONObject jSONObject) {
        List<String> asList;
        this.f30566i = jSONObject.optString("url");
        this.f30559b = jSONObject.optString("base_uri");
        this.f30560c = jSONObject.optString("post_parameters");
        this.f30562e = m7503j(jSONObject.optString("drt_include"));
        this.f30563f = m7503j(jSONObject.optString("cookies_include", "true"));
        this.f30564g = jSONObject.optString("request_id");
        this.f30561d = jSONObject.optString("type");
        String optString = jSONObject.optString("errors");
        if (optString == null) {
            asList = null;
        } else {
            asList = Arrays.asList(optString.split(","));
        }
        this.f30558a = asList;
        this.f30567j = jSONObject.optInt("valid", 0) == 1 ? -2 : 1;
        this.f30565h = jSONObject.optString("fetched_ad");
        jSONObject.optBoolean("render_test_ad_label");
        JSONObject optJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.f30568k = optJSONObject == null ? new JSONObject() : optJSONObject;
        this.f30569l = jSONObject.optString("analytics_query_ad_event_id");
        jSONObject.optBoolean("is_analytics_logging_enabled");
        this.f30570m = jSONObject.optString("pool_key");
    }
}
