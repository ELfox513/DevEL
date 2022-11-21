package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
import org.json.JSONObject;
import p235z2.C7583b;
import p235z2.C7601t;
/* renamed from: r4.an1 */
/* loaded from: classes2.dex */
public final class an1 {

    /* renamed from: a */
    public final hp2 f20547a;

    /* renamed from: b */
    public final Executor f20548b;

    /* renamed from: c */
    public final rp1 f20549c;

    /* renamed from: d */
    public final lo1 f20550d;

    /* renamed from: e */
    public final Context f20551e;

    /* renamed from: f */
    public final ls1 f20552f;

    /* renamed from: g */
    public final xt2 f20553g;

    /* renamed from: h */
    public final pu2 f20554h;

    /* renamed from: i */
    public final c12 f20555i;

    public an1(hp2 hp2Var, Executor executor, rp1 rp1Var, Context context, ls1 ls1Var, xt2 xt2Var, pu2 pu2Var, c12 c12Var, lo1 lo1Var) {
        this.f20547a = hp2Var;
        this.f20548b = executor;
        this.f20549c = rp1Var;
        this.f20551e = context;
        this.f20552f = ls1Var;
        this.f20553g = xt2Var;
        this.f20554h = pu2Var;
        this.f20555i = c12Var;
        this.f20550d = lo1Var;
    }

    /* renamed from: a */
    public final h83<cs0> m12998a(final JSONObject jSONObject) {
        return y73.m4806i(y73.m4806i(y73.m4814a(null), new e73(this) { // from class: r4.qm1

            /* renamed from: a */
            public final an1 f30196a;

            {
                this.f30196a = this;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f30196a.m12996c(obj);
            }
        }, this.f20548b), new e73(this, jSONObject) { // from class: r4.om1

            /* renamed from: a */
            public final an1 f29069a;

            /* renamed from: b */
            public final JSONObject f29070b;

            {
                this.f29069a = this;
                this.f29070b = jSONObject;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f29069a.m12993f(this.f29070b, (cs0) obj);
            }
        }, this.f20548b);
    }

    /* renamed from: b */
    public final h83<cs0> m12997b(final String str, final String str2, final no2 no2Var, final so2 so2Var, final C6478yt c6478yt) {
        return y73.m4806i(y73.m4814a(null), new e73(this, c6478yt, no2Var, so2Var, str, str2) { // from class: r4.pm1

            /* renamed from: a */
            public final an1 f29516a;

            /* renamed from: b */
            public final C6478yt f29517b;

            /* renamed from: c */
            public final no2 f29518c;

            /* renamed from: d */
            public final so2 f29519d;

            /* renamed from: e */
            public final String f29520e;

            /* renamed from: f */
            public final String f29521f;

            {
                this.f29516a = this;
                this.f29517b = c6478yt;
                this.f29518c = no2Var;
                this.f29519d = so2Var;
                this.f29520e = str;
                this.f29521f = str2;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f29516a.m12995d(this.f29517b, this.f29518c, this.f29519d, this.f29520e, this.f29521f, obj);
            }
        }, this.f20548b);
    }

    /* renamed from: i */
    public static final void m12990i(cs0 cs0Var) {
        cs0Var.mo5080g0("/videoClicked", t50.f31696h);
        cs0Var.mo5057o0().mo7004i0(true);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31052k2)).booleanValue()) {
            cs0Var.mo5080g0("/getNativeAdViewSignals", t50.f31707s);
        }
        cs0Var.mo5080g0("/getNativeClickMeta", t50.f31708t);
    }

    /* renamed from: c */
    public final /* synthetic */ h83 m12996c(Object obj) {
        cs0 m7400b = this.f20549c.m7400b(C6478yt.m4575Y0(), null, null);
        final um0 m6486g = um0.m6486g(m7400b);
        m12991h(m7400b);
        m7400b.mo5057o0().mo7010V(new rt0(m6486g) { // from class: r4.rm1

            /* renamed from: a */
            public final um0 f30630a;

            {
                this.f30630a = m6486g;
            }

            @Override // p168r4.rt0
            /* renamed from: a */
            public final void mo7341a() {
                this.f30630a.m6485h();
            }
        });
        m7400b.loadUrl((String) C5592av.m12935c().m8098c(C6225rz.f31044j2));
        return m6486g;
    }

    /* renamed from: d */
    public final /* synthetic */ h83 m12995d(C6478yt c6478yt, no2 no2Var, so2 so2Var, String str, String str2, Object obj) {
        final cs0 m7400b = this.f20549c.m7400b(c6478yt, no2Var, so2Var);
        final um0 m6486g = um0.m6486g(m7400b);
        if (this.f20547a.f24777b != null) {
            m12991h(m7400b);
            m7400b.mo5043u0(vt0.m6020e());
        } else {
            io1 m9598b = this.f20550d.m9598b();
            m7400b.mo5057o0().mo7008d0(m9598b, m9598b, m9598b, m9598b, m9598b, false, null, new C7583b(this.f20551e, null, null), null, null, this.f20555i, this.f20554h, this.f20552f, this.f20553g, null, m9598b);
            m12990i(m7400b);
        }
        m7400b.mo5057o0().mo7000s0(new qt0(this, m7400b, m6486g) { // from class: r4.sm1

            /* renamed from: a */
            public final an1 f31413a;

            /* renamed from: b */
            public final cs0 f31414b;

            /* renamed from: d */
            public final um0 f31415d;

            {
                this.f31413a = this;
                this.f31414b = m7400b;
                this.f31415d = m6486g;
            }

            @Override // p168r4.qt0
            /* renamed from: R */
            public final void mo5285R(boolean z) {
                this.f31413a.m12994e(this.f31414b, this.f31415d, z);
            }
        });
        m7400b.mo5089c1(str, str2, null);
        return m6486g;
    }

    /* renamed from: e */
    public final /* synthetic */ void m12994e(cs0 cs0Var, um0 um0Var, boolean z) {
        if (z) {
            if (this.f20547a.f24776a != null && cs0Var.mo5084f() != null) {
                cs0Var.mo5084f().m12948g7(this.f20547a.f24776a);
            }
            um0Var.m6485h();
            return;
        }
        um0Var.m6085f(new j52(1, "Html video Web View failed to load."));
    }

    /* renamed from: g */
    public final /* synthetic */ void m12992g(cs0 cs0Var, um0 um0Var, boolean z) {
        if (this.f20547a.f24776a != null && cs0Var.mo5084f() != null) {
            cs0Var.mo5084f().m12948g7(this.f20547a.f24776a);
        }
        um0Var.m6485h();
    }

    /* renamed from: f */
    public final /* synthetic */ h83 m12993f(JSONObject jSONObject, final cs0 cs0Var) {
        final um0 m6486g = um0.m6486g(cs0Var);
        if (this.f20547a.f24777b != null) {
            cs0Var.mo5043u0(vt0.m6020e());
        } else {
            cs0Var.mo5043u0(vt0.m6021d());
        }
        cs0Var.mo5057o0().mo7000s0(new qt0(this, cs0Var, m6486g) { // from class: r4.tm1

            /* renamed from: a */
            public final an1 f31898a;

            /* renamed from: b */
            public final cs0 f31899b;

            /* renamed from: d */
            public final um0 f31900d;

            {
                this.f31898a = this;
                this.f31899b = cs0Var;
                this.f31900d = m6486g;
            }

            @Override // p168r4.qt0
            /* renamed from: R */
            public final void mo5285R(boolean z) {
                this.f31898a.m12992g(this.f31899b, this.f31900d, z);
            }
        });
        cs0Var.mo5120K0("google.afma.nativeAds.renderVideo", jSONObject);
        return m6486g;
    }

    /* renamed from: h */
    public final void m12991h(cs0 cs0Var) {
        m12990i(cs0Var);
        cs0Var.mo5080g0("/video", t50.f31700l);
        cs0Var.mo5080g0("/videoMeta", t50.f31701m);
        cs0Var.mo5080g0("/precache", new rq0());
        cs0Var.mo5080g0("/delayPageLoaded", t50.f31704p);
        cs0Var.mo5080g0("/instrument", t50.f31702n);
        cs0Var.mo5080g0("/log", t50.f31695g);
        cs0Var.mo5080g0("/click", t50.m6909b(null));
        if (this.f20547a.f24777b != null) {
            cs0Var.mo5057o0().mo7001r0(true);
            cs0Var.mo5080g0("/open", new g60(null, null, null, null, null));
        } else {
            cs0Var.mo5057o0().mo7001r0(false);
        }
        if (C7601t.m942a().m10622g(cs0Var.getContext())) {
            cs0Var.mo5080g0("/logScionEvent", new a60(cs0Var.getContext()));
        }
    }
}
