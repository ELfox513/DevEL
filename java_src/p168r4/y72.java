package p168r4;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0543w1;
import p235z2.C7601t;
/* renamed from: r4.y72 */
/* loaded from: classes2.dex */
public final class y72 {

    /* renamed from: a */
    public final Map<String, a82> f33992a = new HashMap();

    /* renamed from: b */
    public final Map<String, c82> f33993b = new HashMap();

    /* renamed from: c */
    public final Map<String, Map<String, List<a82>>> f33994c = new HashMap();

    /* renamed from: d */
    public final Executor f33995d;

    /* renamed from: e */
    public JSONObject f33996e;

    /* renamed from: b */
    public final synchronized Map<String, c82> m4825b() {
        return s33.m7224b(this.f33993b);
    }

    /* renamed from: c */
    public final synchronized Map<String, List<Bundle>> m4824c(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            Map<String, List<a82>> map = this.f33994c.get(str);
            if (map == null) {
                return s33.m7225a();
            }
            List<a82> list = map.get(str2);
            if (list == null) {
                list = map.get(nq1.m9016a(this.f33996e, str2, str));
            }
            if (list == null) {
                return s33.m7225a();
            }
            HashMap hashMap = new HashMap();
            for (a82 a82Var : list) {
                String str3 = a82Var.f20415a;
                if (!hashMap.containsKey(str3)) {
                    hashMap.put(str3, new ArrayList());
                }
                ((List) hashMap.get(str3)).add(a82Var.f20417c);
            }
            return s33.m7224b(hashMap);
        }
        return s33.m7225a();
    }

    /* renamed from: d */
    public final synchronized void m4823d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f33992a.containsKey(str)) {
            return;
        }
        this.f33992a.put(str, new a82(str, "", new Bundle()));
    }

    /* renamed from: e */
    public final /* synthetic */ void m4822e() {
        this.f33995d.execute(new Runnable(this) { // from class: r4.x72

            /* renamed from: a */
            public final y72 f33506a;

            {
                this.f33506a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f33506a.m4821f();
            }
        });
    }

    /* renamed from: g */
    public final synchronized void m4821f() {
        this.f33993b.clear();
        this.f33992a.clear();
        m4818i();
        m4819h();
    }

    /* renamed from: h */
    public final synchronized void m4819h() {
        if (!k10.f26211e.m6673e().booleanValue()) {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31027h1)).booleanValue()) {
                JSONObject m10884g = C7601t.m935h().m9051p().mo26194p().m10884g();
                if (m10884g == null) {
                    return;
                }
                try {
                    JSONArray jSONArray = m10884g.getJSONArray("signal_adapters");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        Bundle m4815l = m4815l(jSONObject.optJSONObject("data"));
                        String optString = jSONObject.optString("adapter_class_name");
                        boolean optBoolean = jSONObject.optBoolean("render", false);
                        boolean optBoolean2 = jSONObject.optBoolean("collect_signals", false);
                        if (!TextUtils.isEmpty(optString)) {
                            this.f33993b.put(optString, new c82(optString, optBoolean2, optBoolean, m4815l));
                        }
                    }
                } catch (JSONException e) {
                    C0543w1.m26250l("Malformed config loading JSON.", e);
                }
            }
        }
    }

    /* renamed from: i */
    public final synchronized void m4818i() {
        JSONArray optJSONArray;
        JSONObject m10884g = C7601t.m935h().m9051p().mo26194p().m10884g();
        if (m10884g != null) {
            try {
                JSONArray optJSONArray2 = m10884g.optJSONArray("ad_unit_id_settings");
                this.f33996e = m10884g.optJSONObject("ad_unit_patterns");
                if (optJSONArray2 != null) {
                    for (int i = 0; i < optJSONArray2.length(); i++) {
                        JSONObject jSONObject = optJSONArray2.getJSONObject(i);
                        String optString = jSONObject.optString("ad_unit_id", "");
                        String optString2 = jSONObject.optString("format", "");
                        ArrayList arrayList = new ArrayList();
                        JSONObject optJSONObject = jSONObject.optJSONObject("mediation_config");
                        if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray("ad_networks")) != null) {
                            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                arrayList.addAll(m4817j(optJSONArray.getJSONObject(i2), optString2));
                            }
                        }
                        m4816k(optString2, optString, arrayList);
                    }
                }
            } catch (JSONException e) {
                C0543w1.m26250l("Malformed config loading JSON.", e);
            }
        }
    }

    /* renamed from: j */
    public final synchronized List<a82> m4817j(JSONObject jSONObject, String str) {
        ArrayList arrayList = new ArrayList();
        if (jSONObject == null) {
            return arrayList;
        }
        Bundle m4815l = m4815l(jSONObject.optJSONObject("data"));
        JSONArray optJSONArray = jSONObject.optJSONArray("rtb_adapters");
        if (optJSONArray == null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            String optString = optJSONArray.optString(i, "");
            if (!TextUtils.isEmpty(optString)) {
                arrayList2.add(optString);
            }
        }
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            String str2 = (String) arrayList2.get(i2);
            m4823d(str2);
            if (this.f33992a.get(str2) != null) {
                arrayList.add(new a82(str2, str, m4815l));
            }
        }
        return arrayList;
    }

    /* renamed from: k */
    public final synchronized void m4816k(String str, String str2, List<a82> list) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            Map<String, List<a82>> map = this.f33994c.get(str);
            if (map == null) {
                map = new HashMap<>();
            }
            this.f33994c.put(str, map);
            List<a82> list2 = map.get(str2);
            if (list2 == null) {
                list2 = new ArrayList<>();
            }
            list2.addAll(list);
            map.put(str2, list2);
        }
    }

    /* renamed from: l */
    public static final Bundle m4815l(JSONObject jSONObject) {
        Bundle bundle = new Bundle();
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                bundle.putString(next, jSONObject.optString(next, ""));
            }
        }
        return bundle;
    }

    public y72(Executor executor) {
        this.f33995d = executor;
    }

    /* renamed from: a */
    public final void m4826a() {
        C7601t.m935h().m9051p().mo26216T0(new Runnable(this) { // from class: r4.v72

            /* renamed from: a */
            public final y72 f32640a;

            {
                this.f32640a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f32640a.m4822e();
            }
        });
        this.f33995d.execute(new Runnable(this) { // from class: r4.w72

            /* renamed from: a */
            public final y72 f33132a;

            {
                this.f33132a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f33132a.m4821f();
            }
        });
    }
}
