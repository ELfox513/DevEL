package p184t2;

import androidx.annotation.RecentlyNonNull;
import org.json.JSONException;
import org.json.JSONObject;
import p168r4.C5996lt;
/* renamed from: t2.a */
/* loaded from: classes.dex */
public class C6702a {

    /* renamed from: a */
    public final int f35316a;

    /* renamed from: b */
    public final String f35317b;

    /* renamed from: c */
    public final String f35318c;

    /* renamed from: d */
    public final C6702a f35319d;

    public C6702a(int i, @RecentlyNonNull String str, @RecentlyNonNull String str2) {
        this(i, str, str2, null);
    }

    public C6702a(int i, @RecentlyNonNull String str, @RecentlyNonNull String str2, C6702a c6702a) {
        this.f35316a = i;
        this.f35317b = str;
        this.f35318c = str2;
        this.f35319d = c6702a;
    }

    /* renamed from: a */
    public int m3613a() {
        return this.f35316a;
    }

    /* renamed from: b */
    public String m3612b() {
        return this.f35318c;
    }

    /* renamed from: c */
    public String m3611c() {
        return this.f35317b;
    }

    @RecentlyNonNull
    public String toString() {
        try {
            return mo3563e().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    /* renamed from: d */
    public final C5996lt m3610d() {
        C5996lt c5996lt;
        C6702a c6702a = this.f35319d;
        if (c6702a == null) {
            c5996lt = null;
        } else {
            c5996lt = new C5996lt(c6702a.f35316a, c6702a.f35317b, c6702a.f35318c, null, null);
        }
        return new C5996lt(this.f35316a, this.f35317b, this.f35318c, c5996lt, null);
    }

    @RecentlyNonNull
    /* renamed from: e */
    public JSONObject mo3563e() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Code", this.f35316a);
        jSONObject.put("Message", this.f35317b);
        jSONObject.put("Domain", this.f35318c);
        C6702a c6702a = this.f35319d;
        if (c6702a == null) {
            jSONObject.put("Cause", "null");
        } else {
            jSONObject.put("Cause", c6702a.mo3563e());
        }
        return jSONObject;
    }
}
