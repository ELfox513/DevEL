package p168r4;

import android.content.Context;
import android.content.SharedPreferences;
import com.badlogic.gdx.Net;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import org.json.JSONException;
import org.json.JSONObject;
import p185t3.C6756m;
import p235z2.C7601t;
/* renamed from: r4.yg0 */
/* loaded from: classes2.dex */
public final class yg0 extends zg0 {

    /* renamed from: a */
    public final Object f34070a = new Object();

    /* renamed from: b */
    public final Context f34071b;

    /* renamed from: c */
    public SharedPreferences f34072c;

    /* renamed from: d */
    public final t90<JSONObject, JSONObject> f34073d;

    public yg0(Context context, t90<JSONObject, JSONObject> t90Var) {
        this.f34071b = context.getApplicationContext();
        this.f34073d = t90Var;
    }

    /* renamed from: b */
    public static JSONObject m4724b(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", im0.m10595X0().f25171a);
            jSONObject.put("mf", f10.f23242a.m6673e());
            jSONObject.put("cl", "407425155");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", Net.HttpMethods.HEAD);
            jSONObject.put("admob_module_version", C6756m.f35427a);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.m23005c(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", C6756m.f35427a);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // p168r4.zg0
    /* renamed from: a */
    public final h83<Void> mo4258a() {
        synchronized (this.f34070a) {
            if (this.f34072c == null) {
                this.f34072c = this.f34071b.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        if (C7601t.m932k().mo24763a() - this.f34072c.getLong("js_last_update", 0L) < f10.f23243b.m6673e().longValue()) {
            return y73.m4814a(null);
        }
        return y73.m4805j(this.f34073d.mo6896b(m4724b(this.f34071b)), new p03(this) { // from class: r4.xg0

            /* renamed from: a */
            public final yg0 f33599a;

            {
                this.f33599a = this;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj) {
                this.f33599a.m4723c((JSONObject) obj);
                return null;
            }
        }, qm0.f30195f);
    }

    /* renamed from: c */
    public final /* synthetic */ Void m4723c(JSONObject jSONObject) {
        C6225rz.m7277b(this.f34071b, 1, jSONObject);
        this.f34072c.edit().putLong("js_last_update", C7601t.m932k().mo24763a()).apply();
        return null;
    }
}
