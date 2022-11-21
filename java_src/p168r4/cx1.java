package p168r4;

import android.content.Context;
import android.text.TextUtils;
import java.io.StringReader;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.cx1 */
/* loaded from: classes2.dex */
public final class cx1 {

    /* renamed from: a */
    public final bu0 f21931a;

    /* renamed from: b */
    public final Context f21932b;

    /* renamed from: c */
    public final im0 f21933c;

    /* renamed from: d */
    public final hp2 f21934d;

    /* renamed from: e */
    public final Executor f21935e;

    /* renamed from: f */
    public final String f21936f;

    /* renamed from: g */
    public final ea1 f21937g;

    /* renamed from: h */
    public final ia1 f21938h;

    public cx1(bu0 bu0Var, Context context, im0 im0Var, hp2 hp2Var, Executor executor, String str, ea1 ea1Var, ia1 ia1Var) {
        this.f21931a = bu0Var;
        this.f21932b = context;
        this.f21933c = im0Var;
        this.f21934d = hp2Var;
        this.f21935e = executor;
        this.f21936f = str;
        this.f21937g = ea1Var;
        this.f21938h = ia1Var;
    }

    /* renamed from: g */
    public static final String m12280g(String str) {
        try {
            return new JSONObject(str).optString("request_id", "");
        } catch (JSONException unused) {
            return "";
        }
    }

    /* renamed from: c */
    public final h83<bp2> m12284c() {
        String str = this.f21934d.f24779d.f31993I;
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31039i5)).booleanValue()) {
                String m12280g = m12280g(str);
                if (TextUtils.isEmpty(m12280g)) {
                    if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31063l5)).booleanValue()) {
                        this.f21938h.mo5142Q(true);
                    }
                    return y73.m4812c(new j52(15, "Invalid ad string."));
                }
                String m17559c = this.f21931a.mo8577z().m17559c(m12280g);
                if (!TextUtils.isEmpty(m17559c)) {
                    return m12282e(str, m12281f(m17559c));
                }
            }
        }
        C5922jt c5922jt = this.f21934d.f24779d.f31988D;
        if (c5922jt != null) {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31023g5)).booleanValue()) {
                String m12280g2 = m12280g(c5922jt.f26139a);
                String m12280g3 = m12280g(c5922jt.f26140b);
                if (!TextUtils.isEmpty(m12280g3) && m12280g2.equals(m12280g3)) {
                    this.f21931a.mo8577z().m17558d(m12280g2);
                }
            }
            return m12282e(c5922jt.f26139a, m12281f(c5922jt.f26140b));
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31063l5)).booleanValue()) {
            this.f21938h.mo5142Q(true);
        }
        return y73.m4812c(new j52(14, "Mismatch request IDs."));
    }

    /* renamed from: d */
    public final /* synthetic */ h83 m12283d(JSONObject jSONObject) {
        return y73.m4814a(new bp2(new yo2(this.f21934d), ap2.m12979a(new StringReader(jSONObject.toString()))));
    }

    /* renamed from: f */
    public final String m12281f(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray("ad_types");
            if (jSONArray != null && "unknown".equals(jSONArray.getString(0))) {
                jSONObject.put("ad_types", new JSONArray().put(this.f21936f));
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            cm0.m12437f("Failed to update the ad types for rendering. ".concat(e.toString()));
            return str;
        }
    }

    /* renamed from: e */
    public final h83<bp2> m12282e(final String str, final String str2) {
        ea0 m6598b = C7601t.m926q().m6598b(this.f21932b, this.f21933c);
        y90<JSONObject> y90Var = ba0.f20928b;
        final t90 m11838a = m6598b.m11838a("google.afma.response.normalize", y90Var, y90Var);
        h83<bp2> m4806i = y73.m4806i(y73.m4806i(y73.m4806i(y73.m4814a(""), new e73(this, str, str2) { // from class: r4.yw1

            /* renamed from: a */
            public final cx1 f34237a;

            /* renamed from: b */
            public final String f34238b;

            /* renamed from: c */
            public final String f34239c;

            {
                this.f34237a = this;
                this.f34238b = str;
                this.f34239c = str2;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                String str3;
                String str4 = this.f34238b;
                String str5 = this.f34239c;
                String str6 = (String) obj;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("headers", new JSONObject());
                    jSONObject3.put("body", str4);
                    jSONObject2.put("base_url", "");
                    jSONObject2.put("signals", new JSONObject(str5));
                    jSONObject.put("request", jSONObject2);
                    jSONObject.put("response", jSONObject3);
                    jSONObject.put("flags", new JSONObject());
                    return y73.m4814a(jSONObject);
                } catch (JSONException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    if (valueOf.length() != 0) {
                        str3 = "Preloaded loader: ".concat(valueOf);
                    } else {
                        str3 = new String("Preloaded loader: ");
                    }
                    throw new JSONException(str3);
                }
            }
        }, this.f21935e), new e73(m11838a) { // from class: r4.zw1

            /* renamed from: a */
            public final t90 f34758a;

            {
                this.f34758a = m11838a;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f34758a.mo6896b((JSONObject) obj);
            }
        }, this.f21935e), new e73(this) { // from class: r4.ax1

            /* renamed from: a */
            public final cx1 f20761a;

            {
                this.f20761a = this;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f20761a.m12283d((JSONObject) obj);
            }
        }, this.f21935e);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31063l5)).booleanValue()) {
            y73.m4799p(m4806i, new bx1(this), qm0.f30195f);
        }
        return m4806i;
    }
}
