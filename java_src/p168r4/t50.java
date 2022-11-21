package p168r4;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.prineside.tdi2.Config;
import java.net.URISyntaxException;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.t50 */
/* loaded from: classes2.dex */
public final class t50 {

    /* renamed from: a */
    public static final u50<cs0> f31689a = x40.f33442a;

    /* renamed from: b */
    public static final u50<cs0> f31690b = y40.f33939a;

    /* renamed from: c */
    public static final u50<cs0> f31691c = z40.f34323a;

    /* renamed from: d */
    public static final u50<cs0> f31692d = new l50();

    /* renamed from: e */
    public static final u50<cs0> f31693e = new m50();

    /* renamed from: f */
    public static final u50<cs0> f31694f = f50.f23301a;

    /* renamed from: g */
    public static final u50<Object> f31695g = new n50();

    /* renamed from: h */
    public static final u50<cs0> f31696h = new o50();

    /* renamed from: i */
    public static final u50<cs0> f31697i = g50.f23885a;

    /* renamed from: j */
    public static final u50<cs0> f31698j = new p50();

    /* renamed from: k */
    public static final u50<cs0> f31699k = new q50();

    /* renamed from: l */
    public static final u50<po0> f31700l = new dq0();

    /* renamed from: m */
    public static final u50<po0> f31701m = new eq0();

    /* renamed from: n */
    public static final u50<cs0> f31702n = new w40();

    /* renamed from: o */
    public static final j60 f31703o = new j60();

    /* renamed from: p */
    public static final u50<cs0> f31704p = new r50();

    /* renamed from: q */
    public static final u50<cs0> f31705q = new s50();

    /* renamed from: r */
    public static final u50<cs0> f31706r = new h50();

    /* renamed from: s */
    public static final u50<cs0> f31707s = new i50();

    /* renamed from: t */
    public static final u50<cs0> f31708t = new j50();

    /* renamed from: b */
    public static u50<cs0> m6909b(final cf1 cf1Var) {
        return new u50(cf1Var) { // from class: r4.e50

            /* renamed from: a */
            public final cf1 f22829a;

            {
                this.f22829a = cf1Var;
            }

            @Override // p168r4.u50
            /* renamed from: a */
            public final void mo4240a(Object obj, Map map) {
                cs0 cs0Var = (cs0) obj;
                t50.m6908c(map, this.f22829a);
                String str = (String) map.get("u");
                if (str == null) {
                    cm0.m12437f("URL missing from click GMSG.");
                } else {
                    y73.m4799p(t50.m6910a(cs0Var, str), new k50(cs0Var), qm0.f30190a);
                }
            }
        };
    }

    /* renamed from: c */
    public static void m6908c(Map<String, String> map, cf1 cf1Var) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30974a7)).booleanValue() && map.containsKey("sc") && map.get("sc").equals(Config.SITE_API_VERSION) && cf1Var != null) {
            cf1Var.mo5096a();
        }
    }

    /* renamed from: d */
    public static final /* synthetic */ void m6907d(gt0 gt0Var, Map map) {
        String str;
        PackageManager packageManager = gt0Var.getContext().getPackageManager();
        try {
            try {
                JSONArray jSONArray = new JSONObject((String) map.get("data")).getJSONArray("intents");
                JSONObject jSONObject = new JSONObject();
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        String optString = jSONObject2.optString("id");
                        String optString2 = jSONObject2.optString("u");
                        String optString3 = jSONObject2.optString("i");
                        String optString4 = jSONObject2.optString("m");
                        String optString5 = jSONObject2.optString("p");
                        String optString6 = jSONObject2.optString("c");
                        String optString7 = jSONObject2.optString("intent_url");
                        Intent intent = null;
                        if (!TextUtils.isEmpty(optString7)) {
                            try {
                                intent = Intent.parseUri(optString7, 0);
                            } catch (URISyntaxException e) {
                                String valueOf = String.valueOf(optString7);
                                if (valueOf.length() != 0) {
                                    str = "Error parsing the url: ".concat(valueOf);
                                } else {
                                    str = new String("Error parsing the url: ");
                                }
                                cm0.m12439d(str, e);
                            }
                        }
                        boolean z = true;
                        if (intent == null) {
                            intent = new Intent();
                            if (!TextUtils.isEmpty(optString2)) {
                                intent.setData(Uri.parse(optString2));
                            }
                            if (!TextUtils.isEmpty(optString3)) {
                                intent.setAction(optString3);
                            }
                            if (!TextUtils.isEmpty(optString4)) {
                                intent.setType(optString4);
                            }
                            if (!TextUtils.isEmpty(optString5)) {
                                intent.setPackage(optString5);
                            }
                            if (!TextUtils.isEmpty(optString6)) {
                                String[] split = optString6.split("/", 2);
                                if (split.length == 2) {
                                    intent.setComponent(new ComponentName(split[0], split[1]));
                                }
                            }
                        }
                        if (packageManager.resolveActivity(intent, 65536) == null) {
                            z = false;
                        }
                        try {
                            jSONObject.put(optString, z);
                        } catch (JSONException e2) {
                            cm0.m12439d("Error constructing openable urls response.", e2);
                        }
                    } catch (JSONException e3) {
                        cm0.m12439d("Error parsing the intent data.", e3);
                    }
                }
                ((e80) gt0Var).mo5091c("openableIntents", jSONObject);
            } catch (JSONException unused) {
                ((e80) gt0Var).mo5091c("openableIntents", new JSONObject());
            }
        } catch (JSONException unused2) {
            ((e80) gt0Var).mo5091c("openableIntents", new JSONObject());
        }
    }

    /* renamed from: a */
    public static h83<String> m6910a(cs0 cs0Var, String str) {
        String str2;
        Uri parse = Uri.parse(str);
        try {
            C6300u mo5126H = cs0Var.mo5126H();
            if (mo5126H != null && mo5126H.m6684a(parse)) {
                parse = mo5126H.m6680e(parse, cs0Var.getContext(), cs0Var.mo5124I(), cs0Var.mo5078h());
            }
        } catch (C6337v unused) {
            if (str.length() != 0) {
                str2 = "Unable to append parameter to URL: ".concat(str);
            } else {
                str2 = new String("Unable to append parameter to URL: ");
            }
            cm0.m12437f(str2);
        }
        final String m10014b = kk0.m10014b(parse, cs0Var.getContext());
        long longValue = e10.f22726e.m6673e().longValue();
        if (longValue > 0 && longValue <= 213806100) {
            o73 m8869E = o73.m8869E(cs0Var.mo5102W());
            p03 p03Var = a50.f20372a;
            i83 i83Var = qm0.f30195f;
            return y73.m4809f(y73.m4805j(y73.m4809f(m8869E, Throwable.class, p03Var, i83Var), new p03(m10014b) { // from class: r4.b50

                /* renamed from: a */
                public final String f20840a;

                {
                    this.f20840a = m10014b;
                }

                @Override // p168r4.p03
                public final Object apply(Object obj) {
                    String str3 = this.f20840a;
                    String str4 = (String) obj;
                    u50<cs0> u50Var = t50.f31689a;
                    if (str4 != null) {
                        if (e10.f22727f.m6673e().booleanValue()) {
                            String[] strArr = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
                            String host = Uri.parse(str3).getHost();
                            for (int i = 0; i < 3; i++) {
                                if (!host.endsWith(strArr[i])) {
                                }
                            }
                        }
                        String m6673e = e10.f22722a.m6673e();
                        String m6673e2 = e10.f22723b.m6673e();
                        if (!TextUtils.isEmpty(m6673e)) {
                            str3 = str3.replace(m6673e, str4);
                        }
                        if (!TextUtils.isEmpty(m6673e2)) {
                            Uri parse2 = Uri.parse(str3);
                            if (TextUtils.isEmpty(parse2.getQueryParameter(m6673e2))) {
                                return parse2.buildUpon().appendQueryParameter(m6673e2, str4).toString();
                            }
                        }
                    }
                    return str3;
                }
            }, i83Var), Throwable.class, new p03(m10014b) { // from class: r4.d50

                /* renamed from: a */
                public final String f22087a;

                {
                    this.f22087a = m10014b;
                }

                @Override // p168r4.p03
                public final Object apply(Object obj) {
                    String str3 = this.f22087a;
                    Throwable th = (Throwable) obj;
                    u50<cs0> u50Var = t50.f31689a;
                    if (e10.f22732k.m6673e().booleanValue()) {
                        C7601t.m935h().m9056k(th, "prepareClickUrl.attestation2");
                    }
                    return str3;
                }
            }, i83Var);
        }
        return y73.m4814a(m10014b);
    }
}
