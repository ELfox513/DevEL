package p070g5;

import android.content.SharedPreferences;
import android.util.Pair;
import p211w2.C7171a;
import p220x3.C7297q;
/* renamed from: g5.g4 */
/* loaded from: classes2.dex */
public final class C3670g4 extends AbstractC3863w5 {

    /* renamed from: x */
    public static final Pair<String, Long> f16495x = new Pair<>("", 0L);

    /* renamed from: c */
    public SharedPreferences f16496c;

    /* renamed from: d */
    public C3634d4 f16497d;

    /* renamed from: e */
    public final C3610b4 f16498e;

    /* renamed from: f */
    public final C3610b4 f16499f;

    /* renamed from: g */
    public final C3646e4 f16500g;

    /* renamed from: h */
    public String f16501h;

    /* renamed from: i */
    public boolean f16502i;

    /* renamed from: j */
    public long f16503j;

    /* renamed from: k */
    public final C3610b4 f16504k;

    /* renamed from: l */
    public final C3897z3 f16505l;

    /* renamed from: m */
    public final C3646e4 f16506m;

    /* renamed from: n */
    public final C3897z3 f16507n;

    /* renamed from: o */
    public final C3610b4 f16508o;

    /* renamed from: p */
    public boolean f16509p;

    /* renamed from: q */
    public final C3897z3 f16510q;

    /* renamed from: r */
    public final C3897z3 f16511r;

    /* renamed from: s */
    public final C3610b4 f16512s;

    /* renamed from: t */
    public final C3646e4 f16513t;

    /* renamed from: u */
    public final C3646e4 f16514u;

    /* renamed from: v */
    public final C3610b4 f16515v;

    /* renamed from: w */
    public final C3598a4 f16516w;

    @Override // p070g5.AbstractC3863w5
    /* renamed from: e */
    public final boolean mo17838e() {
        return true;
    }

    /* renamed from: p */
    public final boolean m18346p() {
        SharedPreferences sharedPreferences = this.f16496c;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.contains("deferred_analytics_collection");
    }

    /* renamed from: r */
    public final boolean m18344r(int i) {
        return C3677h.m18269l(i, m18352j().getInt("consent_source", 100));
    }

    @Override // p070g5.AbstractC3863w5
    /* renamed from: d */
    public final void mo17923d() {
        SharedPreferences sharedPreferences = this.f17008a.mo17856O().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f16496c = sharedPreferences;
        boolean z = sharedPreferences.getBoolean("has_been_opened", false);
        this.f16509p = z;
        if (!z) {
            SharedPreferences.Editor edit = this.f16496c.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.f17008a.m18513u();
        this.f16497d = new C3634d4(this, "health_monitor", Math.max(0L, C3621c3.f16361d.m18550a(null).longValue()), null);
    }

    /* renamed from: k */
    public final Pair<String, Boolean> m18351k(String str) {
        mo17839c();
        long mo24762b = this.f17008a.mo17854Q().mo24762b();
        String str2 = this.f16501h;
        if (str2 != null && mo24762b < this.f16503j) {
            return new Pair<>(str2, Boolean.valueOf(this.f16502i));
        }
        this.f16503j = mo24762b + this.f17008a.m18513u().m18366m(str, C3621c3.f16359c);
        C7171a.m2240e(true);
        try {
            C7171a.C7172a m2243b = C7171a.m2243b(this.f17008a.mo17856O());
            this.f16501h = "";
            String m2232a = m2243b.m2232a();
            if (m2232a != null) {
                this.f16501h = m2232a;
            }
            this.f16502i = m2243b.m2231b();
        } catch (Exception e) {
            this.f17008a.mo17858F().m18019l().m18041b("Unable to get advertising id", e);
            this.f16501h = "";
        }
        C7171a.m2240e(false);
        return new Pair<>(this.f16501h, Boolean.valueOf(this.f16502i));
    }

    /* renamed from: q */
    public final boolean m18345q(long j) {
        if (j - this.f16504k.m18548a() > this.f16508o.m18548a()) {
            return true;
        }
        return false;
    }

    public C3670g4(C3611b5 c3611b5) {
        super(c3611b5);
        this.f16504k = new C3610b4(this, "session_timeout", 1800000L);
        this.f16505l = new C3897z3(this, "start_new_session", true);
        this.f16508o = new C3610b4(this, "last_pause_time", 0L);
        this.f16506m = new C3646e4(this, "non_personalized_ads", null);
        this.f16507n = new C3897z3(this, "allow_remote_dynamite", false);
        this.f16498e = new C3610b4(this, "first_open_time", 0L);
        this.f16499f = new C3610b4(this, "app_install_time", 0L);
        this.f16500g = new C3646e4(this, "app_instance_id", null);
        this.f16510q = new C3897z3(this, "app_backgrounded", false);
        this.f16511r = new C3897z3(this, "deep_link_retrieval_complete", false);
        this.f16512s = new C3610b4(this, "deep_link_retrieval_attempts", 0L);
        this.f16513t = new C3646e4(this, "firebase_feature_rollouts", null);
        this.f16514u = new C3646e4(this, "deferred_attribution_cache", null);
        this.f16515v = new C3610b4(this, "deferred_attribution_cache_timestamp", 0L);
        this.f16516w = new C3598a4(this, "default_event_parameters", null);
    }

    /* renamed from: j */
    public final SharedPreferences m18352j() {
        mo17839c();
        m17922f();
        C7297q.m1883j(this.f16496c);
        return this.f16496c;
    }

    /* renamed from: l */
    public final C3677h m18350l() {
        mo17839c();
        return C3677h.m18279b(m18352j().getString("consent_settings", "G1"));
    }

    /* renamed from: m */
    public final Boolean m18349m() {
        mo17839c();
        if (m18352j().contains("measurement_enabled")) {
            return Boolean.valueOf(m18352j().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    /* renamed from: n */
    public final void m18348n(Boolean bool) {
        mo17839c();
        SharedPreferences.Editor edit = m18352j().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
    }

    /* renamed from: o */
    public final void m18347o(boolean z) {
        mo17839c();
        this.f17008a.mo17858F().m18014q().m18041b("App measurement setting deferred collection", Boolean.valueOf(z));
        SharedPreferences.Editor edit = m18352j().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }
}
