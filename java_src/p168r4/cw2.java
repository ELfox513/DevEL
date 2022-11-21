package p168r4;

import android.os.Build;
import android.webkit.WebView;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: r4.cw2 */
/* loaded from: classes2.dex */
public class cw2 {

    /* renamed from: a */
    public bx2 f21924a;

    /* renamed from: b */
    public long f21925b;

    /* renamed from: c */
    public int f21926c;

    /* renamed from: a */
    public void mo11337a() {
    }

    /* renamed from: b */
    public void mo11336b() {
        this.f21924a.clear();
    }

    /* renamed from: c */
    public final void m12296c(WebView webView) {
        this.f21924a = new bx2(webView);
    }

    /* renamed from: d */
    public final WebView m12295d() {
        return this.f21924a.get();
    }

    /* renamed from: e */
    public final boolean m12294e() {
        return this.f21924a.get() != null;
    }

    /* renamed from: f */
    public final void m12293f(String str, long j) {
        if (j >= this.f21925b) {
            this.f21926c = 2;
            tv2.m6708a().m6704e(m12295d(), str);
        }
    }

    /* renamed from: g */
    public final void m12292g(String str, long j) {
        if (j < this.f21925b || this.f21926c == 3) {
            return;
        }
        this.f21926c = 3;
        tv2.m6708a().m6704e(m12295d(), str);
    }

    /* renamed from: h */
    public void mo11335h(cv2 cv2Var, av2 av2Var) {
        m12291i(cv2Var, av2Var, null);
    }

    /* renamed from: j */
    public final void m12290j(float f) {
        tv2.m6708a().m6703f(m12295d(), f);
    }

    /* renamed from: k */
    public final void m12289k() {
        this.f21925b = System.nanoTime();
        this.f21926c = 1;
    }

    public cw2() {
        m12289k();
        this.f21924a = new bx2(null);
    }

    /* renamed from: i */
    public final void m12291i(cv2 cv2Var, av2 av2Var, JSONObject jSONObject) {
        String m12341h = cv2Var.m12341h();
        JSONObject jSONObject2 = new JSONObject();
        gw2.m11044c(jSONObject2, "environment", "app");
        gw2.m11044c(jSONObject2, "adSessionType", av2Var.m12926i());
        JSONObject jSONObject3 = new JSONObject();
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("; ");
        sb.append(str2);
        gw2.m11044c(jSONObject3, "deviceType", sb.toString());
        gw2.m11044c(jSONObject3, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        gw2.m11044c(jSONObject3, "os", "Android");
        gw2.m11044c(jSONObject2, "deviceInfo", jSONObject3);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        gw2.m11044c(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        gw2.m11044c(jSONObject4, "partnerName", av2Var.m12932c().m10785b());
        gw2.m11044c(jSONObject4, "partnerVersion", av2Var.m12932c().m10784c());
        gw2.m11044c(jSONObject2, "omidNativeInfo", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        gw2.m11044c(jSONObject5, "libraryVersion", "1.3.3-google_20200416");
        gw2.m11044c(jSONObject5, "appId", rv2.m7319a().m7318b().getApplicationContext().getPackageName());
        gw2.m11044c(jSONObject2, "app", jSONObject5);
        if (av2Var.m12928g() != null) {
            gw2.m11044c(jSONObject2, "contentUrl", av2Var.m12928g());
        }
        gw2.m11044c(jSONObject2, "customReferenceData", av2Var.m12927h());
        JSONObject jSONObject6 = new JSONObject();
        Iterator<iv2> it = av2Var.m12931d().iterator();
        if (!it.hasNext()) {
            tv2.m6708a().m6706c(m12295d(), m12341h, jSONObject2, jSONObject6, jSONObject);
        } else {
            it.next();
            throw null;
        }
    }
}
