package p168r4;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.lq1 */
/* loaded from: classes2.dex */
public final class lq1 {

    /* renamed from: a */
    public final Map<String, Map<String, JSONObject>> f27326a = new ConcurrentHashMap();

    /* renamed from: b */
    public JSONObject f27327b;

    /* renamed from: c */
    public final Executor f27328c;

    /* renamed from: d */
    public boolean f27329d;

    /* renamed from: e */
    public JSONObject f27330e;

    public lq1(Executor executor) {
        this.f27328c = executor;
    }

    /* renamed from: e */
    public final /* synthetic */ void m9580e() {
        this.f27328c.execute(new Runnable(this) { // from class: r4.kq1

            /* renamed from: a */
            public final lq1 f26527a;

            {
                this.f26527a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f26527a.m9579f();
            }
        });
    }

    /* renamed from: g */
    public final synchronized void m9579f() {
        JSONObject jSONObject;
        Map<String, JSONObject> map;
        this.f27329d = true;
        hl0 mo26194p = C7601t.m935h().m9051p().mo26194p();
        if (mo26194p == null) {
            return;
        }
        JSONObject m10884g = mo26194p.m10884g();
        if (m10884g == null) {
            return;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31140v2)).booleanValue()) {
            jSONObject = m10884g.optJSONObject("common_settings");
        } else {
            jSONObject = null;
        }
        this.f27327b = jSONObject;
        this.f27330e = m10884g.optJSONObject("ad_unit_patterns");
        JSONArray optJSONArray = m10884g.optJSONArray("ad_unit_id_settings");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    String optString = optJSONObject.optString("ad_unit_id");
                    String optString2 = optJSONObject.optString("format");
                    JSONObject optJSONObject2 = optJSONObject.optJSONObject("request_signals");
                    if (optString != null && optJSONObject2 != null && optString2 != null) {
                        if (this.f27326a.containsKey(optString2)) {
                            map = this.f27326a.get(optString2);
                        } else {
                            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                            this.f27326a.put(optString2, concurrentHashMap);
                            map = concurrentHashMap;
                        }
                        map.put(optString, optJSONObject2);
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final JSONObject m9583b(String str, String str2) {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31132u2)).booleanValue() || str == null || str2 == null) {
            return null;
        }
        if (!this.f27329d) {
            m9579f();
        }
        Map<String, JSONObject> map = this.f27326a.get(str2);
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = map.get(str);
        if (jSONObject != null) {
            return jSONObject;
        }
        String m9016a = nq1.m9016a(this.f27330e, str, str2);
        if (m9016a == null) {
            return null;
        }
        return map.get(m9016a);
    }

    /* renamed from: c */
    public final JSONObject m9582c() {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31140v2)).booleanValue()) {
            return null;
        }
        return this.f27327b;
    }

    /* renamed from: a */
    public final void m9584a() {
        C7601t.m935h().m9051p().mo26216T0(new Runnable(this) { // from class: r4.iq1

            /* renamed from: a */
            public final lq1 f25252a;

            {
                this.f25252a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f25252a.m9580e();
            }
        });
        this.f27328c.execute(new Runnable(this) { // from class: r4.jq1

            /* renamed from: a */
            public final lq1 f26099a;

            {
                this.f26099a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f26099a.m9581d();
            }
        });
    }
}
