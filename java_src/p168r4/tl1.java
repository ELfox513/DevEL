package p168r4;

import android.text.TextUtils;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.tl1 */
/* loaded from: classes2.dex */
public final class tl1 {

    /* renamed from: a */
    public final i83 f31890a;

    /* renamed from: b */
    public final hm1 f31891b;

    /* renamed from: c */
    public final mm1 f31892c;

    public tl1(i83 i83Var, hm1 hm1Var, mm1 mm1Var) {
        this.f31890a = i83Var;
        this.f31891b = hm1Var;
        this.f31892c = mm1Var;
    }

    /* renamed from: a */
    public final h83<ej1> m6793a(final bp2 bp2Var, final no2 no2Var, final JSONObject jSONObject) {
        h83 m4806i;
        final h83 mo8015c = this.f31890a.mo8015c(new Callable(this, bp2Var, no2Var, jSONObject) { // from class: r4.rl1

            /* renamed from: a */
            public final tl1 f30620a;

            /* renamed from: b */
            public final bp2 f30621b;

            /* renamed from: c */
            public final no2 f30622c;

            /* renamed from: d */
            public final JSONObject f30623d;

            {
                this.f30620a = this;
                this.f30621b = bp2Var;
                this.f30622c = no2Var;
                this.f30623d = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                String str;
                bp2 bp2Var2 = this.f30621b;
                no2 no2Var2 = this.f30622c;
                JSONObject jSONObject2 = this.f30623d;
                ej1 ej1Var = new ej1();
                ej1Var.m11795A(jSONObject2.optInt("template_id", -1));
                ej1Var.m11776T(jSONObject2.optString("custom_template_id"));
                JSONObject optJSONObject = jSONObject2.optJSONObject("omid_settings");
                if (optJSONObject != null) {
                    str = optJSONObject.optString("omid_partner_name");
                } else {
                    str = null;
                }
                ej1Var.m11766b0(str);
                hp2 hp2Var = bp2Var2.f21153a.f34161a;
                if (hp2Var.f24782g.contains(Integer.toString(ej1Var.m11762d0()))) {
                    if (ej1Var.m11762d0() == 3) {
                        if (ej1Var.m11745q() != null) {
                            if (!hp2Var.f24783h.contains(ej1Var.m11745q())) {
                                throw new j52(1, "Unexpected custom template id in the response.");
                            }
                        } else {
                            throw new j52(1, "No custom template id for custom template ad response.");
                        }
                    }
                    ej1Var.m11779Q(jSONObject2.optDouble("rating", -1.0d));
                    String optString = jSONObject2.optString("headline", null);
                    if (no2Var2.f28386I) {
                        C7601t.m939d();
                        String m26324c = C0497k2.m26324c();
                        StringBuilder sb = new StringBuilder(String.valueOf(m26324c).length() + 3 + String.valueOf(optString).length());
                        sb.append(m26324c);
                        sb.append(" : ");
                        sb.append(optString);
                        optString = sb.toString();
                    }
                    ej1Var.m11771Y("headline", optString);
                    ej1Var.m11771Y("body", jSONObject2.optString("body", null));
                    ej1Var.m11771Y("call_to_action", jSONObject2.optString("call_to_action", null));
                    ej1Var.m11771Y("store", jSONObject2.optString("store", null));
                    ej1Var.m11771Y("price", jSONObject2.optString("price", null));
                    ej1Var.m11771Y("advertiser", jSONObject2.optString("advertiser", null));
                    return ej1Var;
                }
                int m11762d0 = ej1Var.m11762d0();
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append("Invalid template ID: ");
                sb2.append(m11762d0);
                throw new j52(1, sb2.toString());
            }
        });
        final h83<List<z10>> m10877b = this.f31891b.m10877b(jSONObject, "images");
        final h83<cs0> m10876c = this.f31891b.m10876c(jSONObject, "images", no2Var, bp2Var.f21154b.f20574b);
        final h83<z10> m10878a = this.f31891b.m10878a(jSONObject, "secondary_image");
        final h83<z10> m10878a2 = this.f31891b.m10878a(jSONObject, "app_icon");
        final h83<w10> m10875d = this.f31891b.m10875d(jSONObject, "attribution");
        final h83<cs0> m10874e = this.f31891b.m10874e(jSONObject, no2Var, bp2Var.f21154b.f20574b);
        final hm1 hm1Var = this.f31891b;
        if (!jSONObject.optBoolean("enable_omid")) {
            m4806i = y73.m4814a(null);
        } else {
            JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
            if (optJSONObject == null) {
                m4806i = y73.m4814a(null);
            } else {
                final String optString = optJSONObject.optString("omid_html");
                if (TextUtils.isEmpty(optString)) {
                    m4806i = y73.m4814a(null);
                } else {
                    m4806i = y73.m4806i(y73.m4814a(null), new e73(hm1Var, optString) { // from class: r4.cm1

                        /* renamed from: a */
                        public final hm1 f21583a;

                        /* renamed from: b */
                        public final String f21584b;

                        {
                            this.f21583a = hm1Var;
                            this.f21584b = optString;
                        }

                        @Override // p168r4.e73
                        /* renamed from: a */
                        public final h83 mo1029a(Object obj) {
                            return this.f21583a.m10873f(this.f21584b, obj);
                        }
                    }, qm0.f30194e);
                }
            }
        }
        final h83 h83Var = m4806i;
        final h83<List<lm1>> m9335a = this.f31892c.m9335a(jSONObject, "custom_assets");
        return y73.m4803l(mo8015c, m10877b, m10876c, m10878a, m10878a2, m10875d, m10874e, h83Var, m9335a).m5812a(new Callable(this, mo8015c, m10877b, m10878a2, m10878a, m10875d, jSONObject, m10874e, m10876c, h83Var, m9335a) { // from class: r4.sl1

            /* renamed from: a */
            public final tl1 f31394a;

            /* renamed from: b */
            public final h83 f31395b;

            /* renamed from: c */
            public final h83 f31396c;

            /* renamed from: d */
            public final h83 f31397d;

            /* renamed from: e */
            public final h83 f31398e;

            /* renamed from: f */
            public final h83 f31399f;

            /* renamed from: g */
            public final JSONObject f31400g;

            /* renamed from: h */
            public final h83 f31401h;

            /* renamed from: i */
            public final h83 f31402i;

            /* renamed from: j */
            public final h83 f31403j;

            /* renamed from: k */
            public final h83 f31404k;

            {
                this.f31394a = this;
                this.f31395b = mo8015c;
                this.f31396c = m10877b;
                this.f31397d = m10878a2;
                this.f31398e = m10878a;
                this.f31399f = m10875d;
                this.f31400g = jSONObject;
                this.f31401h = m10874e;
                this.f31402i = m10876c;
                this.f31403j = h83Var;
                this.f31404k = m9335a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                h83 h83Var2 = this.f31395b;
                h83 h83Var3 = this.f31396c;
                h83 h83Var4 = this.f31397d;
                h83 h83Var5 = this.f31398e;
                h83 h83Var6 = this.f31399f;
                JSONObject jSONObject2 = this.f31400g;
                h83 h83Var7 = this.f31401h;
                h83 h83Var8 = this.f31402i;
                h83 h83Var9 = this.f31403j;
                h83 h83Var10 = this.f31404k;
                ej1 ej1Var = (ej1) h83Var2.get();
                ej1Var.m11784L((List) h83Var3.get());
                ej1Var.m11778R((p20) h83Var4.get());
                ej1Var.m11777S((p20) h83Var5.get());
                ej1Var.m11785K((h20) h83Var6.get());
                ej1Var.m11783M(hm1.m10869j(jSONObject2));
                ej1Var.m11782N(hm1.m10870i(jSONObject2));
                cs0 cs0Var = (cs0) h83Var7.get();
                if (cs0Var != null) {
                    ej1Var.m11775U(cs0Var);
                    ej1Var.m11781O(cs0Var.mo5124I());
                    ej1Var.m11786J(cs0Var.mo5084f());
                }
                cs0 cs0Var2 = (cs0) h83Var8.get();
                if (cs0Var2 != null) {
                    ej1Var.m11774V(cs0Var2);
                    ej1Var.m11780P(cs0Var2.mo5124I());
                }
                cs0 cs0Var3 = (cs0) h83Var9.get();
                if (cs0Var3 != null) {
                    ej1Var.m11773W(cs0Var3);
                }
                for (lm1 lm1Var : (List) h83Var10.get()) {
                    if (lm1Var.f27260a != 1) {
                        ej1Var.m11770Z(lm1Var.f27261b, lm1Var.f27263d);
                    } else {
                        ej1Var.m11771Y(lm1Var.f27261b, lm1Var.f27262c);
                    }
                }
                return ej1Var;
            }
        }, this.f31890a);
    }
}
