package p235z2;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import p042d4.C3325e;
import p168r4.C6293tt;
import p168r4.bg2;
import p168r4.cm0;
import p168r4.im0;
import p168r4.w00;
/* renamed from: z2.r */
/* loaded from: classes.dex */
public final class C7599r {

    /* renamed from: a */
    public final Context f37579a;

    /* renamed from: b */
    public final String f37580b;

    /* renamed from: c */
    public final Map<String, String> f37581c = new TreeMap();

    /* renamed from: d */
    public String f37582d;

    /* renamed from: e */
    public String f37583e;

    /* renamed from: f */
    public final String f37584f;

    /* renamed from: a */
    public final String m1002a() {
        return this.f37583e;
    }

    /* renamed from: b */
    public final String m1001b() {
        return this.f37582d;
    }

    /* renamed from: c */
    public final String m1000c() {
        return this.f37580b;
    }

    /* renamed from: d */
    public final String m999d() {
        return this.f37584f;
    }

    /* renamed from: e */
    public final Map<String, String> m998e() {
        return this.f37581c;
    }

    /* renamed from: f */
    public final void m997f(C6293tt c6293tt, im0 im0Var) {
        Bundle bundle;
        this.f37582d = c6293tt.f32003u.f32493a;
        Bundle bundle2 = c6293tt.f32006x;
        if (bundle2 != null) {
            bundle = bundle2.getBundle(AdMobAdapter.class.getName());
        } else {
            bundle = null;
        }
        if (bundle == null) {
            return;
        }
        String m6673e = w00.f33001c.m6673e();
        for (String str : bundle.keySet()) {
            if (m6673e.equals(str)) {
                this.f37583e = bundle.getString(str);
            } else if (str.startsWith("csa_")) {
                this.f37581c.put(str.substring(4), bundle.getString(str));
            }
        }
        this.f37581c.put("SDKVersion", im0Var.f25171a);
        if (w00.f32999a.m6673e().booleanValue()) {
            try {
                Bundle m12772a = bg2.m12772a(this.f37579a, new JSONArray(w00.f33000b.m6673e()));
                for (String str2 : m12772a.keySet()) {
                    this.f37581c.put(str2, m12772a.get(str2).toString());
                }
            } catch (JSONException e) {
                cm0.m12439d("Flag gads:afs:csa_tcf_data_to_collect not a valid JSON array", e);
            }
        }
    }

    public C7599r(Context context, String str) {
        String concat;
        this.f37579a = context.getApplicationContext();
        this.f37580b = str;
        String packageName = context.getPackageName();
        try {
            String str2 = C3325e.m19140a(context).m19143f(context.getPackageName(), 0).versionName;
            StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 1 + String.valueOf(str2).length());
            sb.append(packageName);
            sb.append("-");
            sb.append(str2);
            concat = sb.toString();
        } catch (PackageManager.NameNotFoundException e) {
            cm0.m12439d("Unable to get package version name for reporting", e);
            concat = String.valueOf(packageName).concat("-missing");
        }
        this.f37584f = concat;
    }
}
