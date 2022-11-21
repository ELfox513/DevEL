package p168r4;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.zzbye;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
import p203v3.C7013g1;
/* renamed from: r4.gq1 */
/* loaded from: classes2.dex */
public final class gq1 {

    /* renamed from: a */
    public final dq1 f24192a;

    /* renamed from: b */
    public final AtomicReference<fb0> f24193b = new AtomicReference<>();

    public gq1(dq1 dq1Var) {
        this.f24192a = dq1Var;
    }

    /* renamed from: a */
    public final void m11064a(fb0 fb0Var) {
        C7013g1.m2669a(this.f24193b, null, fb0Var);
    }

    /* renamed from: d */
    public final boolean m11061d() {
        return this.f24193b.get() != null;
    }

    /* renamed from: b */
    public final zp2 m11063b(String str, JSONObject jSONObject) {
        ib0 mo11587u;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                mo11587u = new ec0(new AdMobAdapter());
            } else if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
                mo11587u = new ec0(new AdUrlAdapter());
            } else if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                mo11587u = new ec0(new zzbye());
            } else {
                fb0 m11060e = m11060e();
                if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    try {
                        String string = jSONObject.getString("class_name");
                        if (m11060e.mo11590A(string)) {
                            mo11587u = m11060e.mo11587u("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
                        } else if (m11060e.mo11589E0(string)) {
                            mo11587u = m11060e.mo11587u(string);
                        } else {
                            mo11587u = m11060e.mo11587u("com.google.ads.mediation.customevent.CustomEventAdapter");
                        }
                    } catch (JSONException e) {
                        cm0.m12439d("Invalid custom event.", e);
                    }
                }
                mo11587u = m11060e.mo11587u(str);
            }
            zp2 zp2Var = new zp2(mo11587u);
            this.f24192a.m11996a(str, zp2Var);
            return zp2Var;
        } catch (Throwable th) {
            throw new mp2(th);
        }
    }

    /* renamed from: e */
    public final fb0 m11060e() {
        fb0 fb0Var = this.f24193b.get();
        if (fb0Var != null) {
            return fb0Var;
        }
        cm0.m12437f("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    /* renamed from: c */
    public final ed0 m11062c(String str) {
        ed0 mo11588s = m11060e().mo11588s(str);
        this.f24192a.m11995b(str, mo11588s);
        return mo11588s;
    }
}
