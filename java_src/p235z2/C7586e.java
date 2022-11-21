package p235z2;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import org.json.JSONObject;
import p016b3.C0543w1;
import p042d4.C3325e;
import p168r4.C5592av;
import p168r4.C6225rz;
import p168r4.ba0;
import p168r4.cm0;
import p168r4.e73;
import p168r4.ea0;
import p168r4.h83;
import p168r4.hl0;
import p168r4.i83;
import p168r4.im0;
import p168r4.qm0;
import p168r4.t90;
import p168r4.tm0;
import p168r4.y73;
import p168r4.y90;
/* renamed from: z2.e */
/* loaded from: classes.dex */
public final class C7586e {

    /* renamed from: a */
    public Context f37546a;

    /* renamed from: b */
    public long f37547b = 0;

    /* renamed from: a */
    public final void m1028a(Context context, im0 im0Var, String str, Runnable runnable) {
        m1026c(context, im0Var, true, null, str, null, runnable);
    }

    /* renamed from: b */
    public final void m1027b(Context context, im0 im0Var, String str, hl0 hl0Var) {
        m1026c(context, im0Var, false, hl0Var, hl0Var != null ? hl0Var.m10886e() : null, str, null);
    }

    /* renamed from: c */
    public final void m1026c(Context context, im0 im0Var, boolean z, hl0 hl0Var, String str, String str2, Runnable runnable) {
        PackageInfo m19143f;
        if (C7601t.m932k().mo24762b() - this.f37547b < 5000) {
            cm0.m12437f("Not retrying to fetch app settings");
            return;
        }
        this.f37547b = C7601t.m932k().mo24762b();
        if (hl0Var != null) {
            if (C7601t.m932k().mo24763a() - hl0Var.m10889b() <= ((Long) C5592av.m12935c().m8098c(C6225rz.f31156x2)).longValue() && hl0Var.m10888c()) {
                return;
            }
        }
        if (context == null) {
            cm0.m12437f("Context not provided to fetch application settings");
        } else if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            cm0.m12437f("App settings could not be fetched. Required parameters missing");
        } else {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
            this.f37546a = applicationContext;
            ea0 m6598b = C7601t.m926q().m6598b(this.f37546a, im0Var);
            y90<JSONObject> y90Var = ba0.f20928b;
            t90 m11838a = m6598b.m11838a("google.afma.config.fetchAppSettings", y90Var, y90Var);
            try {
                JSONObject jSONObject = new JSONObject();
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("app_id", str);
                } else if (!TextUtils.isEmpty(str2)) {
                    jSONObject.put("ad_unit_id", str2);
                }
                jSONObject.put("is_init", z);
                jSONObject.put("pn", context.getPackageName());
                jSONObject.put("experiment_ids", TextUtils.join(",", C6225rz.m7276c()));
                try {
                    ApplicationInfo applicationInfo = this.f37546a.getApplicationInfo();
                    if (applicationInfo != null && (m19143f = C3325e.m19140a(context).m19143f(applicationInfo.packageName, 0)) != null) {
                        jSONObject.put("version", m19143f.versionCode);
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    C0543w1.m26251k("Error fetching PackageInfo.");
                }
                h83 mo6896b = m11838a.mo6896b(jSONObject);
                e73 e73Var = C7585d.f37545a;
                i83 i83Var = qm0.f30195f;
                h83 m4806i = y73.m4806i(mo6896b, e73Var, i83Var);
                if (runnable != null) {
                    mo6896b.mo6087c(runnable, i83Var);
                }
                tm0.m6790a(m4806i, "ConfigLoader.maybeFetchNewAppSettings");
            } catch (Exception e) {
                cm0.m12439d("Error requesting application settings", e);
            }
        }
    }
}
