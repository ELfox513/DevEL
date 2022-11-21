package p016b3;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.badlogic.gdx.net.HttpRequestHeader;
import com.prineside.tdi2.Config;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
import p026c4.C1052m;
import p168r4.C5592av;
import p168r4.C6225rz;
import p168r4.cm0;
import p168r4.h83;
import p168r4.hv1;
import p168r4.iv1;
import p235z2.C7601t;
/* renamed from: b3.c0 */
/* loaded from: classes.dex */
public final class C0463c0 {

    /* renamed from: a */
    public final Object f1579a = new Object();

    /* renamed from: b */
    public String f1580b = "";

    /* renamed from: c */
    public String f1581c = "";

    /* renamed from: d */
    public boolean f1582d = false;

    /* renamed from: e */
    public boolean f1583e = false;

    /* renamed from: f */
    public String f1584f = "";

    /* renamed from: g */
    public iv1 f1585g;

    /* renamed from: a */
    public final void m26412a(iv1 iv1Var) {
        this.f1585g = iv1Var;
    }

    /* renamed from: b */
    public final iv1 m26411b() {
        return this.f1585g;
    }

    /* renamed from: l */
    public final void m26401l(boolean z) {
        synchronized (this.f1579a) {
            this.f1582d = z;
        }
    }

    /* renamed from: o */
    public static final String m26398o(Context context, String str, String str2) {
        String str3;
        String str4;
        String str5;
        HashMap hashMap = new HashMap();
        hashMap.put(HttpRequestHeader.UserAgent, C7601t.m939d().m26339P(context, str2));
        h83<String> m26253b = new C0539v0(context).m26253b(0, str, hashMap, null);
        try {
            return m26253b.get(((Integer) C5592av.m12935c().m8098c(C6225rz.f31029h3)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                str5 = "Interrupted while retrieving a response from: ".concat(valueOf);
            } else {
                str5 = new String("Interrupted while retrieving a response from: ");
            }
            cm0.m12439d(str5, e);
            m26253b.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            String valueOf2 = String.valueOf(str);
            if (valueOf2.length() != 0) {
                str4 = "Timeout while retrieving a response from: ".concat(valueOf2);
            } else {
                str4 = new String("Timeout while retrieving a response from: ");
            }
            cm0.m12439d(str4, e2);
            m26253b.cancel(true);
            return null;
        } catch (Exception e3) {
            String valueOf3 = String.valueOf(str);
            if (valueOf3.length() != 0) {
                str3 = "Error retrieving a response from: ".concat(valueOf3);
            } else {
                str3 = new String("Error retrieving a response from: ");
            }
            cm0.m12439d(str3, e3);
            return null;
        }
    }

    /* renamed from: c */
    public final void m26410c(Context context) {
        iv1 iv1Var;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30797E6)).booleanValue() && (iv1Var = this.f1585g) != null) {
            iv1Var.m10497k(new BinderC0550z(this, context), hv1.DEBUG_MENU);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0074  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m26409d(android.content.Context r4, java.lang.String r5, java.lang.String r6) {
        /*
            r3 = this;
            r4.jz<java.lang.String> r0 = p168r4.C6225rz.f31005e3
            r4.pz r1 = p168r4.C5592av.m12935c()
            java.lang.Object r0 = r1.m8098c(r0)
            java.lang.String r0 = (java.lang.String) r0
            android.net.Uri r0 = r3.m26397p(r4, r0, r5, r6)
            java.lang.String r0 = r0.toString()
            java.lang.String r4 = m26398o(r4, r0, r6)
            boolean r6 = android.text.TextUtils.isEmpty(r4)
            r0 = 0
            if (r6 == 0) goto L25
            java.lang.String r4 = "Not linked for in app preview."
            p168r4.cm0.m12442a(r4)
            return r0
        L25:
            java.lang.String r4 = r4.trim()
            org.json.JSONObject r6 = new org.json.JSONObject     // Catch: org.json.JSONException -> L83
            r6.<init>(r4)     // Catch: org.json.JSONException -> L83
            java.lang.String r4 = "gct"
            java.lang.String r4 = r6.optString(r4)     // Catch: org.json.JSONException -> L83
            java.lang.String r1 = "status"
            java.lang.String r6 = r6.optString(r1)     // Catch: org.json.JSONException -> L83
            r3.f1584f = r6     // Catch: org.json.JSONException -> L83
            r4.jz<java.lang.Boolean> r6 = p168r4.C6225rz.f30797E6     // Catch: org.json.JSONException -> L83
            r4.pz r1 = p168r4.C5592av.m12935c()     // Catch: org.json.JSONException -> L83
            java.lang.Object r6 = r1.m8098c(r6)     // Catch: org.json.JSONException -> L83
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch: org.json.JSONException -> L83
            boolean r6 = r6.booleanValue()     // Catch: org.json.JSONException -> L83
            r1 = 1
            if (r6 == 0) goto L79
            java.lang.String r6 = "0"
            java.lang.String r2 = r3.f1584f     // Catch: org.json.JSONException -> L83
            boolean r6 = r6.equals(r2)     // Catch: org.json.JSONException -> L83
            if (r6 != 0) goto L66
            java.lang.String r6 = "2"
            java.lang.String r2 = r3.f1584f     // Catch: org.json.JSONException -> L83
            boolean r6 = r6.equals(r2)     // Catch: org.json.JSONException -> L83
            if (r6 == 0) goto L64
            goto L66
        L64:
            r6 = 0
            goto L67
        L66:
            r6 = 1
        L67:
            r3.m26403j(r6)     // Catch: org.json.JSONException -> L83
            r4.nl0 r2 = p235z2.C7601t.m935h()     // Catch: org.json.JSONException -> L83
            b3.y1 r2 = r2.m9051p()     // Catch: org.json.JSONException -> L83
            if (r1 == r6) goto L76
            java.lang.String r5 = ""
        L76:
            r2.mo26214V0(r5)     // Catch: org.json.JSONException -> L83
        L79:
            java.lang.Object r5 = r3.f1579a
            monitor-enter(r5)
            r3.f1581c = r4     // Catch: java.lang.Throwable -> L80
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L80
            return r1
        L80:
            r4 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L80
            throw r4
        L83:
            r4 = move-exception
            java.lang.String r5 = "Fail to get in app preview response json."
            p168r4.cm0.m12436g(r5, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p016b3.C0463c0.m26409d(android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    /* renamed from: e */
    public final boolean m26408e(Context context, String str, String str2) {
        String m26398o = m26398o(context, m26397p(context, (String) C5592av.m12935c().m8098c(C6225rz.f31013f3), str, str2).toString(), str2);
        if (TextUtils.isEmpty(m26398o)) {
            cm0.m12442a("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = Config.SITE_API_VERSION.equals(new JSONObject(m26398o.trim()).optString("debug_mode"));
            m26403j(equals);
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30797E6)).booleanValue()) {
                InterfaceC0549y1 m9051p = C7601t.m935h().m9051p();
                if (true != equals) {
                    str = "";
                }
                m9051p.mo26214V0(str);
            }
            return equals;
        } catch (JSONException e) {
            cm0.m12436g("Fail to get debug mode response json.", e);
            return false;
        }
    }

    /* renamed from: h */
    public final void m26405h(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = m26397p(context, (String) C5592av.m12935c().m8098c(C6225rz.f31021g3), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        C7601t.m939d();
        C0497k2.m26308n(context, str, buildUpon.build().toString());
    }

    /* renamed from: i */
    public final String m26404i() {
        String str;
        synchronized (this.f1579a) {
            str = this.f1581c;
        }
        return str;
    }

    /* renamed from: j */
    public final void m26403j(boolean z) {
        synchronized (this.f1579a) {
            this.f1583e = z;
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30797E6)).booleanValue()) {
                C7601t.m935h().m9051p().mo26220Q0(z);
                iv1 iv1Var = this.f1585g;
                if (iv1Var != null) {
                    iv1Var.m10506b(z);
                }
            }
        }
    }

    /* renamed from: k */
    public final boolean m26402k() {
        boolean z;
        synchronized (this.f1579a) {
            z = this.f1583e;
        }
        return z;
    }

    /* renamed from: m */
    public final boolean m26400m() {
        boolean z;
        synchronized (this.f1579a) {
            z = this.f1582d;
        }
        return z;
    }

    /* renamed from: n */
    public final void m26399n(Context context, String str, boolean z, boolean z2) {
        if (!(context instanceof Activity)) {
            cm0.m12438e("Can not create dialog without Activity Context");
        } else {
            C0497k2.f1630i.post(new RunnableC0459b0(this, context, str, z, z2));
        }
    }

    /* renamed from: f */
    public final void m26407f(Context context, String str, String str2) {
        C7601t.m939d();
        C0497k2.m26298x(context, m26397p(context, (String) C5592av.m12935c().m8098c(C6225rz.f30997d3), str, str2));
    }

    /* renamed from: g */
    public final boolean m26406g(Context context, String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2) && m26400m()) {
            cm0.m12442a("Sending troubleshooting signals to the server.");
            m26405h(context, str, str2, str3);
            return true;
        }
        return false;
    }

    /* renamed from: p */
    public final Uri m26397p(Context context, String str, String str2, String str3) {
        String str4;
        String str5;
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        synchronized (this.f1579a) {
            if (TextUtils.isEmpty(this.f1580b)) {
                C7601t.m939d();
                try {
                    str5 = new String(C1052m.m24742d(context.openFileInput("debug_signals_id.txt"), true), "UTF-8");
                } catch (IOException unused) {
                    cm0.m12442a("Error reading from internal storage.");
                    str5 = "";
                }
                this.f1580b = str5;
                if (TextUtils.isEmpty(str5)) {
                    C7601t.m939d();
                    this.f1580b = UUID.randomUUID().toString();
                    C7601t.m939d();
                    String str6 = this.f1580b;
                    try {
                        FileOutputStream openFileOutput = context.openFileOutput("debug_signals_id.txt", 0);
                        openFileOutput.write(str6.getBytes("UTF-8"));
                        openFileOutput.close();
                    } catch (Exception e) {
                        cm0.m12439d("Error writing to file in internal storage.", e);
                    }
                }
            }
            str4 = this.f1580b;
        }
        buildUpon.appendQueryParameter("linkedDeviceId", str4);
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }
}
