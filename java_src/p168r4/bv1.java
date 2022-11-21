package p168r4;

import org.json.JSONObject;
/* renamed from: r4.bv1 */
/* loaded from: classes2.dex */
public final class bv1 {

    /* renamed from: a */
    public final String f21229a;

    /* renamed from: b */
    public final String f21230b;

    /* renamed from: c */
    public final int f21231c;

    /* renamed from: d */
    public final String f21232d;

    /* renamed from: e */
    public final int f21233e;

    public bv1(String str, String str2, int i, String str3, int i2) {
        this.f21229a = str;
        this.f21230b = str2;
        this.f21231c = i;
        this.f21232d = str3;
        this.f21233e = i2;
    }

    /* renamed from: a */
    public final JSONObject m12690a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("adapterClassName", this.f21229a);
        jSONObject.put("version", this.f21230b);
        jSONObject.put("status", this.f21231c);
        jSONObject.put("description", this.f21232d);
        jSONObject.put("initializationLatencyMillis", this.f21233e);
        return jSONObject;
    }
}
