package p168r4;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
import p026c4.C1054o;
/* renamed from: r4.m42 */
/* loaded from: classes2.dex */
public final class m42 implements g42<zi1> {

    /* renamed from: a */
    public final sh1 f27485a;

    /* renamed from: b */
    public final i83 f27486b;

    /* renamed from: c */
    public final tl1 f27487c;

    /* renamed from: d */
    public final aq2<fo1> f27488d;

    /* renamed from: e */
    public final lo1 f27489e;

    public m42(sh1 sh1Var, i83 i83Var, tl1 tl1Var, aq2<fo1> aq2Var, lo1 lo1Var) {
        this.f27485a = sh1Var;
        this.f27486b = i83Var;
        this.f27487c = tl1Var;
        this.f27488d = aq2Var;
        this.f27489e = lo1Var;
    }

    @Override // p168r4.q12
    /* renamed from: a */
    public final boolean mo4841a(bp2 bp2Var, no2 no2Var) {
        uo2 uo2Var = no2Var.f28432s;
        return (uo2Var == null || uo2Var.f32344c == null) ? false : true;
    }

    @Override // p168r4.q12
    /* renamed from: b */
    public final h83<List<h83<zi1>>> mo4840b(final bp2 bp2Var, final no2 no2Var) {
        return y73.m4806i(y73.m4806i(this.f27488d.m12970b(), new e73(this, no2Var) { // from class: r4.h42

            /* renamed from: a */
            public final m42 f24440a;

            /* renamed from: b */
            public final no2 f24441b;

            {
                this.f24440a = this;
                this.f24441b = no2Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f24440a.m9490f(this.f24441b, (fo1) obj);
            }
        }, this.f27486b), new e73(this, bp2Var, no2Var) { // from class: r4.i42

            /* renamed from: a */
            public final m42 f24964a;

            /* renamed from: b */
            public final bp2 f24965b;

            /* renamed from: c */
            public final no2 f24966c;

            {
                this.f24964a = this;
                this.f24965b = bp2Var;
                this.f24966c = no2Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f24964a.m9491e(this.f24965b, this.f24966c, (JSONArray) obj);
            }
        }, this.f27486b);
    }

    /* renamed from: d */
    public final /* synthetic */ h83 m9492d(fo1 fo1Var, JSONObject jSONObject) {
        this.f27488d.m12969c(y73.m4814a(fo1Var));
        if (jSONObject.optBoolean("success")) {
            return y73.m4814a(jSONObject.getJSONObject("json").getJSONArray("ads"));
        }
        throw new s90("process json failed");
    }

    /* renamed from: f */
    public final /* synthetic */ h83 m9490f(no2 no2Var, final fo1 fo1Var) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("isNonagon", true);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31016f6)).booleanValue() && C1054o.m24729l()) {
            jSONObject.put("skipDeepLinkValidation", true);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("response", no2Var.f28432s.f32344c);
        jSONObject2.put("sdk_params", jSONObject);
        return y73.m4806i(fo1Var.m11453d("google.afma.nativeAds.preProcessJson", jSONObject2), new e73(this, fo1Var) { // from class: r4.j42

            /* renamed from: a */
            public final m42 f25888a;

            /* renamed from: b */
            public final fo1 f25889b;

            {
                this.f25888a = this;
                this.f25889b = fo1Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f25888a.m9492d(this.f25889b, (JSONObject) obj);
            }
        }, this.f27486b);
    }

    /* renamed from: g */
    public final h83<zi1> m9489g(final bp2 bp2Var, final no2 no2Var, final JSONObject jSONObject) {
        final h83<fo1> m12970b = this.f27488d.m12970b();
        final h83<ej1> m6793a = this.f27487c.m6793a(bp2Var, no2Var, jSONObject);
        return y73.m4801n(m12970b, m6793a).m5812a(new Callable(this, m6793a, m12970b, bp2Var, no2Var, jSONObject) { // from class: r4.l42

            /* renamed from: a */
            public final m42 f27070a;

            /* renamed from: b */
            public final h83 f27071b;

            /* renamed from: c */
            public final h83 f27072c;

            /* renamed from: d */
            public final bp2 f27073d;

            /* renamed from: e */
            public final no2 f27074e;

            /* renamed from: f */
            public final JSONObject f27075f;

            {
                this.f27070a = this;
                this.f27071b = m6793a;
                this.f27072c = m12970b;
                this.f27073d = bp2Var;
                this.f27074e = no2Var;
                this.f27075f = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f27070a.m9493c(this.f27071b, this.f27072c, this.f27073d, this.f27074e, this.f27075f);
            }
        }, this.f27486b);
    }

    /* renamed from: c */
    public final /* synthetic */ zi1 m9493c(h83 h83Var, h83 h83Var2, bp2 bp2Var, no2 no2Var, JSONObject jSONObject) {
        ej1 ej1Var = (ej1) h83Var.get();
        fo1 fo1Var = (fo1) h83Var2.get();
        fj1 mo7159c = this.f27485a.mo7159c(new x31(bp2Var, no2Var, null), new qj1(ej1Var), new fi1(jSONObject, fo1Var));
        mo7159c.mo5992i().m7780b();
        mo7159c.mo5991j().m12731a(fo1Var);
        mo7159c.mo5990k().m4184a(ej1Var.m11744r());
        mo7159c.mo5989l().m9990a(this.f27489e);
        return mo7159c.mo5993h();
    }

    /* renamed from: e */
    public final /* synthetic */ h83 m9491e(bp2 bp2Var, no2 no2Var, JSONArray jSONArray) {
        if (jSONArray.length() == 0) {
            return y73.m4812c(new sv1(3));
        }
        if (bp2Var.f21153a.f34161a.f24786k > 1) {
            int length = jSONArray.length();
            this.f27488d.m12971a(Math.min(length, bp2Var.f21153a.f34161a.f24786k));
            ArrayList arrayList = new ArrayList(bp2Var.f21153a.f34161a.f24786k);
            for (int i = 0; i < bp2Var.f21153a.f34161a.f24786k; i++) {
                if (i < length) {
                    arrayList.add(m9489g(bp2Var, no2Var, jSONArray.getJSONObject(i)));
                } else {
                    arrayList.add(y73.m4812c(new sv1(3)));
                }
            }
            return y73.m4814a(arrayList);
        }
        return y73.m4805j(m9489g(bp2Var, no2Var, jSONArray.getJSONObject(0)), k42.f26288a, this.f27486b);
    }
}
