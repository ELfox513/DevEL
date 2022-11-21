package p168r4;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.InterfaceC0549y1;
import p235z2.C7601t;
/* renamed from: r4.jk0 */
/* loaded from: classes2.dex */
public abstract class jk0 {

    /* renamed from: a */
    public static jk0 f26062a;

    /* renamed from: a */
    public abstract fj0 mo8791a();

    /* renamed from: b */
    public abstract kj0 mo8790b();

    /* renamed from: c */
    public abstract ok0 mo8789c();

    /* renamed from: d */
    public static synchronized jk0 m10256d(Context context) {
        synchronized (jk0.class) {
            jk0 jk0Var = f26062a;
            if (jk0Var != null) {
                return jk0Var;
            }
            Context applicationContext = context.getApplicationContext();
            C6225rz.m7278a(applicationContext);
            InterfaceC0549y1 m9051p = C7601t.m935h().m9051p();
            m9051p.mo26203e0(applicationContext);
            mj0 mj0Var = new mj0(null);
            mj0Var.m9376a(applicationContext);
            mj0Var.m9375b(C7601t.m932k());
            mj0Var.m9374c(m9051p);
            mj0Var.m9373d(C7601t.m942a());
            jk0 m9372e = mj0Var.m9372e();
            f26062a = m9372e;
            m9372e.mo8791a().m11503a();
            f26062a.mo8790b().m10019e();
            final ok0 mo8789c = f26062a.mo8789c();
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31058l0)).booleanValue()) {
                final HashMap hashMap = new HashMap();
                try {
                    JSONObject jSONObject = new JSONObject((String) C5592av.m12935c().m8098c(C6225rz.f31074n0));
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        HashSet hashSet = new HashSet();
                        JSONArray optJSONArray = jSONObject.optJSONArray(next);
                        if (optJSONArray != null) {
                            for (int i = 0; i < optJSONArray.length(); i++) {
                                String optString = optJSONArray.optString(i);
                                if (optString != null) {
                                    hashSet.add(optString);
                                }
                            }
                            hashMap.put(next, hashSet);
                        }
                    }
                    for (String str : hashMap.keySet()) {
                        mo8789c.m8785c(str);
                    }
                    mo8789c.m8786b(new nk0(mo8789c, hashMap) { // from class: r4.lk0

                        /* renamed from: a */
                        public final ok0 f27238a;

                        /* renamed from: b */
                        public final Map f27239b;

                        {
                            this.f27238a = mo8789c;
                            this.f27239b = hashMap;
                        }

                        @Override // p168r4.nk0
                        /* renamed from: a */
                        public final void mo9076a(SharedPreferences sharedPreferences, String str2, String str3) {
                            this.f27238a.m8784d(this.f27239b, sharedPreferences, str2, str3);
                        }
                    });
                } catch (JSONException e) {
                    cm0.m12441b("Failed to parse listening list", e);
                }
            }
            return f26062a;
        }
    }
}
