package p168r4;

import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0460b1;
/* renamed from: r4.ij1 */
/* loaded from: classes2.dex */
public final class ij1 extends jj1 {

    /* renamed from: b */
    public final JSONObject f25131b;

    /* renamed from: c */
    public final boolean f25132c;

    /* renamed from: d */
    public final boolean f25133d;

    /* renamed from: e */
    public final boolean f25134e;

    /* renamed from: f */
    public final boolean f25135f;

    /* renamed from: g */
    public final String f25136g;

    @Override // p168r4.jj1
    /* renamed from: a */
    public final JSONObject mo10272a() {
        JSONObject jSONObject = this.f25131b;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.f26039a.f28439z);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // p168r4.jj1
    /* renamed from: b */
    public final boolean mo10271b() {
        return this.f25135f;
    }

    @Override // p168r4.jj1
    /* renamed from: c */
    public final boolean mo10270c() {
        return this.f25132c;
    }

    @Override // p168r4.jj1
    /* renamed from: d */
    public final boolean mo10269d() {
        return this.f25134e;
    }

    @Override // p168r4.jj1
    /* renamed from: e */
    public final boolean mo10268e() {
        return this.f25133d;
    }

    @Override // p168r4.jj1
    /* renamed from: f */
    public final String mo10267f() {
        return this.f25136g;
    }

    public ij1(no2 no2Var, JSONObject jSONObject) {
        super(no2Var);
        this.f25131b = C0460b1.m26422h(jSONObject, "tracking_urls_and_actions", "active_view");
        this.f25132c = C0460b1.m26421i(false, jSONObject, "allow_pub_owned_ad_view");
        this.f25133d = C0460b1.m26421i(false, jSONObject, "attribution", "allow_pub_rendering");
        this.f25134e = C0460b1.m26421i(false, jSONObject, "enable_omid");
        this.f25136g = C0460b1.m26420j("", jSONObject, "watermark_overlay_png_base64");
        this.f25135f = jSONObject.optJSONObject("overlay") != null;
    }
}
