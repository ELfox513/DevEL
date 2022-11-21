package p184t2;

import androidx.annotation.RecentlyNonNull;
import org.json.JSONException;
import org.json.JSONObject;
import p168r4.C5664cu;
import p168r4.C5996lt;
/* renamed from: t2.j */
/* loaded from: classes.dex */
public final class C6713j {

    /* renamed from: a */
    public final C5664cu f35356a;

    /* renamed from: b */
    public final C6702a f35357b;

    public C6713j(C5664cu c5664cu) {
        this.f35356a = c5664cu;
        C5996lt c5996lt = c5664cu.f21677d;
        this.f35357b = c5996lt == null ? null : c5996lt.m9568X0();
    }

    /* renamed from: a */
    public static C6713j m3569a(C5664cu c5664cu) {
        if (c5664cu != null) {
            return new C6713j(c5664cu);
        }
        return null;
    }

    @RecentlyNonNull
    public String toString() {
        try {
            return m3568b().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    @RecentlyNonNull
    /* renamed from: b */
    public final JSONObject m3568b() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Adapter", this.f35356a.f21675a);
        jSONObject.put("Latency", this.f35356a.f21676b);
        JSONObject jSONObject2 = new JSONObject();
        for (String str : this.f35356a.f21678k.keySet()) {
            jSONObject2.put(str, this.f35356a.f21678k.get(str));
        }
        jSONObject.put("Credentials", jSONObject2);
        C6702a c6702a = this.f35357b;
        if (c6702a == null) {
            jSONObject.put("Ad Error", "null");
        } else {
            jSONObject.put("Ad Error", c6702a.mo3563e());
        }
        return jSONObject;
    }
}
