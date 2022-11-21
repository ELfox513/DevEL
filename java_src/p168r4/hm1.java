package p168r4;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.prineside.tdi2.tiles.CoreTile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0460b1;
import p016b3.C0543w1;
import p184t2.C6710g;
import p235z2.C7582a;
import p235z2.C7583b;
import p235z2.C7601t;
/* renamed from: r4.hm1 */
/* loaded from: classes2.dex */
public final class hm1 {

    /* renamed from: a */
    public final Context f24679a;

    /* renamed from: b */
    public final pl1 f24680b;

    /* renamed from: c */
    public final C6300u f24681c;

    /* renamed from: d */
    public final im0 f24682d;

    /* renamed from: e */
    public final C7582a f24683e;

    /* renamed from: f */
    public final C5882ip f24684f;

    /* renamed from: g */
    public final Executor f24685g;

    /* renamed from: h */
    public final d20 f24686h;

    /* renamed from: i */
    public final an1 f24687i;

    /* renamed from: j */
    public final rp1 f24688j;

    /* renamed from: k */
    public final ScheduledExecutorService f24689k;

    /* renamed from: l */
    public final lo1 f24690l;

    /* renamed from: m */
    public final ls1 f24691m;

    /* renamed from: n */
    public final xt2 f24692n;

    /* renamed from: o */
    public final pu2 f24693o;

    /* renamed from: p */
    public final c12 f24694p;

    public hm1(Context context, pl1 pl1Var, C6300u c6300u, im0 im0Var, C7582a c7582a, C5882ip c5882ip, Executor executor, hp2 hp2Var, an1 an1Var, rp1 rp1Var, ScheduledExecutorService scheduledExecutorService, ls1 ls1Var, xt2 xt2Var, pu2 pu2Var, c12 c12Var, lo1 lo1Var) {
        this.f24679a = context;
        this.f24680b = pl1Var;
        this.f24681c = c6300u;
        this.f24682d = im0Var;
        this.f24683e = c7582a;
        this.f24684f = c5882ip;
        this.f24685g = executor;
        this.f24686h = hp2Var.f24784i;
        this.f24687i = an1Var;
        this.f24688j = rp1Var;
        this.f24689k = scheduledExecutorService;
        this.f24691m = ls1Var;
        this.f24692n = xt2Var;
        this.f24693o = pu2Var;
        this.f24694p = c12Var;
        this.f24690l = lo1Var;
    }

    /* renamed from: r */
    public static final BinderC5668cy m10861r(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("reason");
        String optString2 = jSONObject.optString("ping_url");
        if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2)) {
            return null;
        }
        return new BinderC5668cy(optString, optString2);
    }

    /* renamed from: e */
    public final h83<cs0> m10874e(JSONObject jSONObject, no2 no2Var, so2 so2Var) {
        h83<cs0> m12998a;
        boolean z = false;
        JSONObject m26422h = C0460b1.m26422h(jSONObject, "html_containers", "instream");
        if (m26422h == null) {
            JSONObject optJSONObject = jSONObject.optJSONObject("video");
            if (optJSONObject == null) {
                return y73.m4814a(null);
            }
            String optString = optJSONObject.optString("vast_xml");
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30869N6)).booleanValue() && optJSONObject.has("html")) {
                z = true;
            }
            if (TextUtils.isEmpty(optString)) {
                if (!z) {
                    cm0.m12437f("Required field 'vast_xml' or 'html' is missing");
                    return y73.m4814a(null);
                }
            } else if (!z) {
                m12998a = this.f24687i.m12998a(optJSONObject);
                return m10864o(y73.m4807h(m12998a, ((Integer) C5592av.m12935c().m8098c(C6225rz.f31060l2)).intValue(), TimeUnit.SECONDS, this.f24689k), null);
            }
            m12998a = m10865n(optJSONObject, no2Var, so2Var);
            return m10864o(y73.m4807h(m12998a, ((Integer) C5592av.m12935c().m8098c(C6225rz.f31060l2)).intValue(), TimeUnit.SECONDS, this.f24689k), null);
        }
        return m10865n(m26422h, no2Var, so2Var);
    }

    /* renamed from: f */
    public final /* synthetic */ h83 m10873f(String str, Object obj) {
        C7601t.m938e();
        cs0 m8708a = os0.m8708a(this.f24679a, vt0.m6023b(), "native-omid", false, false, this.f24681c, null, this.f24682d, null, null, this.f24683e, this.f24684f, null, null);
        final um0 m6486g = um0.m6486g(m8708a);
        m8708a.mo5057o0().mo7000s0(new qt0(m6486g) { // from class: r4.gm1

            /* renamed from: a */
            public final um0 f24141a;

            {
                this.f24141a = m6486g;
            }

            @Override // p168r4.qt0
            /* renamed from: R */
            public final void mo5285R(boolean z) {
                this.f24141a.m6485h();
            }
        });
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31157x3)).booleanValue()) {
            m8708a.loadData(Base64.encodeToString(str.getBytes(), 1), "text/html", "base64");
        } else {
            m8708a.loadData(str, "text/html", "UTF-8");
        }
        return m6486g;
    }

    /* renamed from: g */
    public final /* synthetic */ w10 m10872g(JSONObject jSONObject, List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        String optString = jSONObject.optString("text");
        Integer m10866m = m10866m(jSONObject, "bg_color");
        Integer m10866m2 = m10866m(jSONObject, "text_color");
        int optInt = jSONObject.optInt("text_size", -1);
        boolean optBoolean = jSONObject.optBoolean("allow_pub_rendering");
        int optInt2 = jSONObject.optInt("animation_ms", CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
        return new w10(optString, list, m10866m, m10866m2, optInt > 0 ? Integer.valueOf(optInt) : null, jSONObject.optInt("presentation_ms", 4000) + optInt2, this.f24686h.f22046p, optBoolean);
    }

    /* renamed from: l */
    public final h83<z10> m10867l(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return y73.m4814a(null);
        }
        final String optString = jSONObject.optString("url");
        if (TextUtils.isEmpty(optString)) {
            return y73.m4814a(null);
        }
        final double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        final int optInt = jSONObject.optInt("width", -1);
        final int optInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return y73.m4814a(new z10(null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        return m10863p(jSONObject.optBoolean("require"), y73.m4805j(this.f24680b.m8281a(optString, optDouble, optBoolean), new p03(optString, optDouble, optInt, optInt2) { // from class: r4.yl1

            /* renamed from: a */
            public final String f34136a;

            /* renamed from: b */
            public final double f34137b;

            /* renamed from: c */
            public final int f34138c;

            /* renamed from: d */
            public final int f34139d;

            {
                this.f34136a = optString;
                this.f34137b = optDouble;
                this.f34138c = optInt;
                this.f34139d = optInt2;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj) {
                String str = this.f34136a;
                return new z10(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(str), this.f34137b, this.f34138c, this.f34139d);
            }
        }, this.f24685g), null);
    }

    /* renamed from: i */
    public static final BinderC5668cy m10870i(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("mute");
        if (optJSONObject2 == null || (optJSONObject = optJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return m10861r(optJSONObject);
    }

    /* renamed from: j */
    public static final List<BinderC5668cy> m10869j(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("mute");
        if (optJSONObject == null) {
            return o33.m8900q();
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("reasons");
        if (optJSONArray != null && optJSONArray.length() > 0) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                BinderC5668cy m10861r = m10861r(optJSONArray.optJSONObject(i));
                if (m10861r != null) {
                    arrayList.add(m10861r);
                }
            }
            return o33.m8893x(arrayList);
        }
        return o33.m8900q();
    }

    /* renamed from: o */
    public static <T> h83<T> m10864o(h83<T> h83Var, T t) {
        return y73.m4808g(h83Var, Exception.class, new e73(null) { // from class: r4.em1
            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                C0543w1.m26250l("Error during loading assets.", (Exception) obj);
                return y73.m4814a(null);
            }
        }, qm0.f30195f);
    }

    /* renamed from: p */
    public static <T> h83<T> m10863p(boolean z, final h83<T> h83Var, T t) {
        if (z) {
            return y73.m4806i(h83Var, new e73(h83Var) { // from class: r4.fm1

                /* renamed from: a */
                public final h83 f23557a;

                {
                    this.f23557a = h83Var;
                }

                @Override // p168r4.e73
                /* renamed from: a */
                public final h83 mo1029a(Object obj) {
                    return obj != null ? this.f23557a : y73.m4812c(new j52(1, "Retrieve required value in native ad response failed."));
                }
            }, qm0.f30195f);
        }
        return m10864o(h83Var, null);
    }

    /* renamed from: b */
    public final h83<List<z10>> m10877b(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray("images");
        d20 d20Var = this.f24686h;
        return m10868k(optJSONArray, d20Var.f22043b, d20Var.f22045k);
    }

    /* renamed from: c */
    public final h83<cs0> m10876c(JSONObject jSONObject, String str, final no2 no2Var, final so2 so2Var) {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30877O6)).booleanValue()) {
            return y73.m4814a(null);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("images");
        if (optJSONArray != null && optJSONArray.length() > 0) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(0);
            if (optJSONObject == null) {
                return y73.m4814a(null);
            }
            final String optString = optJSONObject.optString("base_url");
            final String optString2 = optJSONObject.optString("html");
            final C6478yt m10862q = m10862q(optJSONObject.optInt("width", 0), optJSONObject.optInt("height", 0));
            if (TextUtils.isEmpty(optString2)) {
                return y73.m4814a(null);
            }
            final h83 m4806i = y73.m4806i(y73.m4814a(null), new e73(this, m10862q, no2Var, so2Var, optString, optString2) { // from class: r4.zl1

                /* renamed from: a */
                public final hm1 f34668a;

                /* renamed from: b */
                public final C6478yt f34669b;

                /* renamed from: c */
                public final no2 f34670c;

                /* renamed from: d */
                public final so2 f34671d;

                /* renamed from: e */
                public final String f34672e;

                /* renamed from: f */
                public final String f34673f;

                {
                    this.f34668a = this;
                    this.f34669b = m10862q;
                    this.f34670c = no2Var;
                    this.f34671d = so2Var;
                    this.f34672e = optString;
                    this.f34673f = optString2;
                }

                @Override // p168r4.e73
                /* renamed from: a */
                public final h83 mo1029a(Object obj) {
                    return this.f34668a.m10871h(this.f34669b, this.f34670c, this.f34671d, this.f34672e, this.f34673f, obj);
                }
            }, qm0.f30194e);
            return y73.m4806i(m4806i, new e73(m4806i) { // from class: r4.am1

                /* renamed from: a */
                public final h83 f20540a;

                {
                    this.f20540a = m4806i;
                }

                @Override // p168r4.e73
                /* renamed from: a */
                public final h83 mo1029a(Object obj) {
                    h83 h83Var = this.f20540a;
                    if (((cs0) obj) != null) {
                        return h83Var;
                    }
                    throw new j52(1, "Retrieve Web View from image ad response failed.");
                }
            }, qm0.f30195f);
        }
        return y73.m4814a(null);
    }

    /* renamed from: d */
    public final h83<w10> m10875d(JSONObject jSONObject, String str) {
        final JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            return y73.m4814a(null);
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("images");
        JSONObject optJSONObject2 = optJSONObject.optJSONObject("image");
        if (optJSONArray == null && optJSONObject2 != null) {
            optJSONArray = new JSONArray();
            optJSONArray.put(optJSONObject2);
        }
        return m10863p(optJSONObject.optBoolean("require"), y73.m4805j(m10868k(optJSONArray, false, true), new p03(this, optJSONObject) { // from class: r4.bm1

            /* renamed from: a */
            public final hm1 f21113a;

            /* renamed from: b */
            public final JSONObject f21114b;

            {
                this.f21113a = this;
                this.f21114b = optJSONObject;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj) {
                return this.f21113a.m10872g(this.f21114b, (List) obj);
            }
        }, this.f24685g), null);
    }

    /* renamed from: h */
    public final /* synthetic */ h83 m10871h(C6478yt c6478yt, no2 no2Var, so2 so2Var, String str, String str2, Object obj) {
        cs0 m7400b = this.f24688j.m7400b(c6478yt, no2Var, so2Var);
        final um0 m6486g = um0.m6486g(m7400b);
        io1 m9598b = this.f24690l.m9598b();
        m7400b.mo5057o0().mo7008d0(m9598b, m9598b, m9598b, m9598b, m9598b, false, null, new C7583b(this.f24679a, null, null), null, null, this.f24694p, this.f24693o, this.f24691m, this.f24692n, null, m9598b);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31052k2)).booleanValue()) {
            m7400b.mo5080g0("/getNativeAdViewSignals", t50.f31707s);
        }
        m7400b.mo5080g0("/getNativeClickMeta", t50.f31708t);
        m7400b.mo5057o0().mo7000s0(new qt0(m6486g) { // from class: r4.xl1

            /* renamed from: a */
            public final um0 f33634a;

            {
                this.f33634a = m6486g;
            }

            @Override // p168r4.qt0
            /* renamed from: R */
            public final void mo5285R(boolean z) {
                um0 um0Var = this.f33634a;
                if (z) {
                    um0Var.m6485h();
                } else {
                    um0Var.m6085f(new j52(1, "Image Web View failed to load."));
                }
            }
        });
        m7400b.mo5089c1(str, str2, null);
        return m6486g;
    }

    /* renamed from: k */
    public final h83<List<z10>> m10868k(JSONArray jSONArray, boolean z, boolean z2) {
        int i;
        if (jSONArray != null && jSONArray.length() > 0) {
            ArrayList arrayList = new ArrayList();
            if (z2) {
                i = jSONArray.length();
            } else {
                i = 1;
            }
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(m10867l(jSONArray.optJSONObject(i2), z));
            }
            return y73.m4805j(y73.m4804k(arrayList), wl1.f33249a, this.f24685g);
        }
        return y73.m4814a(Collections.emptyList());
    }

    /* renamed from: n */
    public final h83<cs0> m10865n(JSONObject jSONObject, no2 no2Var, so2 so2Var) {
        final h83<cs0> m12997b = this.f24687i.m12997b(jSONObject.optString("base_url"), jSONObject.optString("html"), no2Var, so2Var, m10862q(jSONObject.optInt("width", 0), jSONObject.optInt("height", 0)));
        return y73.m4806i(m12997b, new e73(m12997b) { // from class: r4.dm1

            /* renamed from: a */
            public final h83 f22336a;

            {
                this.f22336a = m12997b;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                h83 h83Var = this.f22336a;
                cs0 cs0Var = (cs0) obj;
                if (cs0Var != null && cs0Var.mo5084f() != null) {
                    return h83Var;
                }
                throw new j52(1, "Retrieve video view in html5 ad response failed.");
            }
        }, qm0.f30195f);
    }

    /* renamed from: q */
    public final C6478yt m10862q(int i, int i2) {
        if (i == 0) {
            if (i2 != 0) {
                i = 0;
            } else {
                return C6478yt.m4575Y0();
            }
        }
        return new C6478yt(this.f24679a, new C6710g(i, i2));
    }

    /* renamed from: m */
    public static Integer m10866m(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException unused) {
            return null;
        }
    }

    /* renamed from: a */
    public final h83<z10> m10878a(JSONObject jSONObject, String str) {
        return m10867l(jSONObject.optJSONObject(str), this.f24686h.f22043b);
    }
}
