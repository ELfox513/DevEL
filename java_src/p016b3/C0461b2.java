package p016b3;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p026c4.C1054o;
import p168r4.C5592av;
import p168r4.C6065nn;
import p168r4.C6225rz;
import p168r4.cm0;
import p168r4.h83;
import p168r4.hl0;
import p168r4.qm0;
import p168r4.z00;
import p235z2.C7601t;
/* renamed from: b3.b2 */
/* loaded from: classes.dex */
public final class C0461b2 implements InterfaceC0549y1 {

    /* renamed from: b */
    public boolean f1554b;

    /* renamed from: d */
    public h83<?> f1556d;

    /* renamed from: f */
    public SharedPreferences f1558f;

    /* renamed from: g */
    public SharedPreferences.Editor f1559g;

    /* renamed from: i */
    public String f1561i;

    /* renamed from: j */
    public String f1562j;

    /* renamed from: a */
    public final Object f1553a = new Object();

    /* renamed from: c */
    public final List<Runnable> f1555c = new ArrayList();

    /* renamed from: e */
    public C6065nn f1557e = null;

    /* renamed from: h */
    public boolean f1560h = true;

    /* renamed from: k */
    public boolean f1563k = true;

    /* renamed from: l */
    public hl0 f1564l = new hl0("", 0);

    /* renamed from: m */
    public long f1565m = 0;

    /* renamed from: n */
    public long f1566n = 0;

    /* renamed from: o */
    public int f1567o = -1;

    /* renamed from: p */
    public int f1568p = 0;

    /* renamed from: q */
    public Set<String> f1569q = Collections.emptySet();

    /* renamed from: r */
    public JSONObject f1570r = new JSONObject();

    /* renamed from: s */
    public boolean f1571s = true;

    /* renamed from: t */
    public boolean f1572t = true;

    /* renamed from: u */
    public String f1573u = null;

    /* renamed from: v */
    public String f1574v = "";

    /* renamed from: w */
    public boolean f1575w = false;

    /* renamed from: x */
    public String f1576x = "";

    /* renamed from: y */
    public int f1577y = -1;

    /* renamed from: z */
    public int f1578z = -1;

    /* renamed from: A */
    public long f1552A = 0;

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: T0 */
    public final void mo26216T0(Runnable runnable) {
        this.f1555c.add(runnable);
    }

    /* renamed from: g */
    public final void m26413g() {
        qm0.f30190a.execute(new Runnable(this) { // from class: b3.a2

            /* renamed from: a */
            public final C0461b2 f1546a;

            {
                this.f1546a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f1546a.mo26208a();
            }
        });
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: Q0 */
    public final void mo26220Q0(boolean z) {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30797E6)).booleanValue()) {
            return;
        }
        m26414c();
        synchronized (this.f1553a) {
            if (this.f1575w == z) {
                return;
            }
            this.f1575w = z;
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.putBoolean("linked_device", z);
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: V0 */
    public final void mo26214V0(String str) {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30797E6)).booleanValue()) {
            return;
        }
        m26414c();
        synchronized (this.f1553a) {
            if (this.f1576x.equals(str)) {
                return;
            }
            this.f1576x = str;
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.putString("linked_ad_unit", str);
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: Z0 */
    public final void mo26209Z0(String str) {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31096p6)).booleanValue()) {
            return;
        }
        m26414c();
        synchronized (this.f1553a) {
            if (this.f1574v.equals(str)) {
                return;
            }
            this.f1574v = str;
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.putString("inspector_info", str);
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: a */
    public final C6065nn mo26208a() {
        if (!this.f1554b) {
            return null;
        }
        if ((mo26204e() && mo26202f()) || !z00.f34270b.m6673e().booleanValue()) {
            return null;
        }
        synchronized (this.f1553a) {
            if (Looper.getMainLooper() == null) {
                return null;
            }
            if (this.f1557e == null) {
                this.f1557e = new C6065nn();
            }
            this.f1557e.m9033a();
            cm0.m12438e("start fetching content...");
            return this.f1557e;
        }
    }

    /* renamed from: b */
    public final /* synthetic */ void m26415b(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("admob", 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        synchronized (this.f1553a) {
            this.f1558f = sharedPreferences;
            this.f1559g = edit;
            if (C1054o.m24732i()) {
                NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
            }
            this.f1560h = this.f1558f.getBoolean("use_https", this.f1560h);
            this.f1571s = this.f1558f.getBoolean("content_url_opted_out", this.f1571s);
            this.f1561i = this.f1558f.getString("content_url_hashes", this.f1561i);
            this.f1563k = this.f1558f.getBoolean("gad_idless", this.f1563k);
            this.f1572t = this.f1558f.getBoolean("content_vertical_opted_out", this.f1572t);
            this.f1562j = this.f1558f.getString("content_vertical_hashes", this.f1562j);
            this.f1568p = this.f1558f.getInt("version_code", this.f1568p);
            this.f1564l = new hl0(this.f1558f.getString("app_settings_json", this.f1564l.m10887d()), this.f1558f.getLong("app_settings_last_update_ms", this.f1564l.m10889b()));
            this.f1565m = this.f1558f.getLong("app_last_background_time_ms", this.f1565m);
            this.f1567o = this.f1558f.getInt("request_in_session_count", this.f1567o);
            this.f1566n = this.f1558f.getLong("first_ad_req_time_ms", this.f1566n);
            this.f1569q = this.f1558f.getStringSet("never_pool_slots", this.f1569q);
            this.f1573u = this.f1558f.getString("display_cutout", this.f1573u);
            this.f1577y = this.f1558f.getInt("app_measurement_npa", this.f1577y);
            this.f1578z = this.f1558f.getInt("sd_app_measure_npa", this.f1578z);
            this.f1552A = this.f1558f.getLong("sd_app_measure_npa_ts", this.f1552A);
            this.f1574v = this.f1558f.getString("inspector_info", this.f1574v);
            this.f1575w = this.f1558f.getBoolean("linked_device", this.f1575w);
            this.f1576x = this.f1558f.getString("linked_ad_unit", this.f1576x);
            try {
                this.f1570r = new JSONObject(this.f1558f.getString("native_advanced_settings", "{}"));
            } catch (JSONException e) {
                cm0.m12436g("Could not convert native advanced settings to json object", e);
            }
            m26413g();
        }
    }

    /* renamed from: c */
    public final void m26414c() {
        h83<?> h83Var = this.f1556d;
        if (h83Var == null || h83Var.isDone()) {
            return;
        }
        try {
            this.f1556d.get(1L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            cm0.m12436g("Interrupted while waiting for preferences loaded.", e);
        } catch (CancellationException e2) {
            e = e2;
            cm0.m12439d("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (ExecutionException e3) {
            e = e3;
            cm0.m12439d("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (TimeoutException e4) {
            e = e4;
            cm0.m12439d("Fail to initialize AdSharedPreferenceManager.", e);
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: e0 */
    public final void mo26203e0(final Context context) {
        synchronized (this.f1553a) {
            if (this.f1558f != null) {
                return;
            }
            this.f1556d = qm0.f30190a.mo8014d(new Runnable(this, context, "admob") { // from class: b3.z1

                /* renamed from: a */
                public final C0461b2 f1716a;

                /* renamed from: b */
                public final Context f1717b;

                /* renamed from: d */
                public final String f1718d = "admob";

                {
                    this.f1716a = this;
                    this.f1717b = context;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f1716a.m26415b(this.f1717b, this.f1718d);
                }
            });
            this.f1554b = true;
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: q */
    public final hl0 mo26193q() {
        hl0 hl0Var;
        synchronized (this.f1553a) {
            hl0Var = this.f1564l;
        }
        return hl0Var;
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: y */
    public final boolean mo26190y() {
        boolean z;
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31082o0)).booleanValue()) {
            return false;
        }
        m26414c();
        synchronized (this.f1553a) {
            z = this.f1563k;
        }
        return z;
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: B */
    public final void mo26227B() {
        m26414c();
        synchronized (this.f1553a) {
            this.f1570r = new JSONObject();
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.remove("native_advanced_settings");
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: E */
    public final long mo26226E() {
        long j;
        m26414c();
        synchronized (this.f1553a) {
            j = this.f1566n;
        }
        return j;
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: H */
    public final void mo26225H(String str) {
        m26414c();
        synchronized (this.f1553a) {
            if (str.equals(this.f1561i)) {
                return;
            }
            this.f1561i = str;
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.putString("content_url_hashes", str);
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: J */
    public final String mo26224J() {
        String str;
        m26414c();
        synchronized (this.f1553a) {
            str = this.f1574v;
        }
        return str;
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: N */
    public final long mo26223N() {
        long j;
        m26414c();
        synchronized (this.f1553a) {
            j = this.f1552A;
        }
        return j;
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: O */
    public final JSONObject mo26222O() {
        JSONObject jSONObject;
        m26414c();
        synchronized (this.f1553a) {
            jSONObject = this.f1570r;
        }
        return jSONObject;
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: P0 */
    public final void mo26221P0(String str) {
        m26414c();
        synchronized (this.f1553a) {
            if (str.equals(this.f1562j)) {
                return;
            }
            this.f1562j = str;
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.putString("content_vertical_hashes", str);
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: R0 */
    public final void mo26219R0(String str) {
        m26414c();
        synchronized (this.f1553a) {
            if (TextUtils.equals(this.f1573u, str)) {
                return;
            }
            this.f1573u = str;
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.putString("display_cutout", str);
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: S0 */
    public final void mo26218S0(boolean z) {
        m26414c();
        synchronized (this.f1553a) {
            if (z == this.f1563k) {
                return;
            }
            this.f1563k = z;
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.putBoolean("gad_idless", z);
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: T */
    public final void mo26217T(int i) {
        m26414c();
        synchronized (this.f1553a) {
            if (this.f1568p == i) {
                return;
            }
            this.f1568p = i;
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.putInt("version_code", i);
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: U0 */
    public final void mo26215U0(int i) {
        m26414c();
        synchronized (this.f1553a) {
            if (this.f1578z == i) {
                return;
            }
            this.f1578z = i;
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.putInt("sd_app_measure_npa", i);
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: W0 */
    public final void mo26213W0(long j) {
        m26414c();
        synchronized (this.f1553a) {
            if (this.f1566n == j) {
                return;
            }
            this.f1566n = j;
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.putLong("first_ad_req_time_ms", j);
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: X */
    public final boolean mo26212X() {
        boolean z;
        m26414c();
        synchronized (this.f1553a) {
            z = this.f1575w;
        }
        return z;
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: X0 */
    public final void mo26211X0(long j) {
        m26414c();
        synchronized (this.f1553a) {
            if (this.f1565m == j) {
                return;
            }
            this.f1565m = j;
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.putLong("app_last_background_time_ms", j);
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: Y0 */
    public final void mo26210Y0(String str, String str2, boolean z) {
        m26414c();
        synchronized (this.f1553a) {
            JSONArray optJSONArray = this.f1570r.optJSONArray(str);
            if (optJSONArray == null) {
                optJSONArray = new JSONArray();
            }
            int length = optJSONArray.length();
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject == null) {
                    return;
                }
                if (str2.equals(optJSONObject.optString("template_id"))) {
                    if (z && optJSONObject.optBoolean("uses_media_view", false)) {
                        return;
                    }
                    length = i;
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("template_id", str2);
                jSONObject.put("uses_media_view", z);
                jSONObject.put("timestamp_ms", C7601t.m932k().mo24763a());
                optJSONArray.put(length, jSONObject);
                this.f1570r.put(str, optJSONArray);
            } catch (JSONException e) {
                cm0.m12436g("Could not update native advanced settings", e);
            }
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.putString("native_advanced_settings", this.f1570r.toString());
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: a1 */
    public final void mo26207a1(long j) {
        m26414c();
        synchronized (this.f1553a) {
            if (this.f1552A == j) {
                return;
            }
            this.f1552A = j;
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.putLong("sd_app_measure_npa_ts", j);
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: d */
    public final String mo26206d() {
        String str;
        m26414c();
        synchronized (this.f1553a) {
            str = this.f1561i;
        }
        return str;
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: d0 */
    public final void mo26205d0(int i) {
        m26414c();
        synchronized (this.f1553a) {
            if (this.f1567o == i) {
                return;
            }
            this.f1567o = i;
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.putInt("request_in_session_count", i);
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: e */
    public final boolean mo26204e() {
        boolean z;
        m26414c();
        synchronized (this.f1553a) {
            z = this.f1571s;
        }
        return z;
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: f */
    public final boolean mo26202f() {
        boolean z;
        m26414c();
        synchronized (this.f1553a) {
            z = this.f1572t;
        }
        return z;
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: h */
    public final String mo26201h() {
        String str;
        m26414c();
        synchronized (this.f1553a) {
            str = this.f1562j;
        }
        return str;
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: h0 */
    public final void mo26200h0(String str) {
        m26414c();
        synchronized (this.f1553a) {
            long mo24763a = C7601t.m932k().mo24763a();
            if (str != null && !str.equals(this.f1564l.m10887d())) {
                this.f1564l = new hl0(str, mo24763a);
                SharedPreferences.Editor editor = this.f1559g;
                if (editor != null) {
                    editor.putString("app_settings_json", str);
                    this.f1559g.putLong("app_settings_last_update_ms", mo24763a);
                    this.f1559g.apply();
                }
                m26413g();
                for (Runnable runnable : this.f1555c) {
                    runnable.run();
                }
                return;
            }
            this.f1564l.m10890a(mo24763a);
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: k */
    public final int mo26199k() {
        int i;
        m26414c();
        synchronized (this.f1553a) {
            i = this.f1568p;
        }
        return i;
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: k0 */
    public final String mo26198k0() {
        String str;
        m26414c();
        synchronized (this.f1553a) {
            str = this.f1576x;
        }
        return str;
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: n */
    public final int mo26197n() {
        int i;
        m26414c();
        synchronized (this.f1553a) {
            i = this.f1567o;
        }
        return i;
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: n0 */
    public final void mo26196n0(boolean z) {
        m26414c();
        synchronized (this.f1553a) {
            if (this.f1572t == z) {
                return;
            }
            this.f1572t = z;
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.putBoolean("content_vertical_opted_out", z);
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: o0 */
    public final void mo26195o0(boolean z) {
        m26414c();
        synchronized (this.f1553a) {
            if (this.f1571s == z) {
                return;
            }
            this.f1571s = z;
            SharedPreferences.Editor editor = this.f1559g;
            if (editor != null) {
                editor.putBoolean("content_url_opted_out", z);
                this.f1559g.apply();
            }
            m26413g();
        }
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: p */
    public final hl0 mo26194p() {
        hl0 hl0Var;
        m26414c();
        synchronized (this.f1553a) {
            hl0Var = this.f1564l;
        }
        return hl0Var;
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: v */
    public final String mo26192v() {
        String str;
        m26414c();
        synchronized (this.f1553a) {
            str = this.f1573u;
        }
        return str;
    }

    @Override // p016b3.InterfaceC0549y1
    /* renamed from: w */
    public final long mo26191w() {
        long j;
        m26414c();
        synchronized (this.f1553a) {
            j = this.f1565m;
        }
        return j;
    }
}
