package p168r4;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.iv1 */
/* loaded from: classes2.dex */
public final class iv1 implements qv1, su1 {

    /* renamed from: a */
    public final pv1 f25468a;

    /* renamed from: b */
    public final rv1 f25469b;

    /* renamed from: c */
    public final tu1 f25470c;

    /* renamed from: d */
    public final cv1 f25471d;

    /* renamed from: e */
    public final ru1 f25472e;

    /* renamed from: f */
    public final String f25473f;

    /* renamed from: l */
    public boolean f25479l;

    /* renamed from: m */
    public int f25480m;

    /* renamed from: n */
    public boolean f25481n;

    /* renamed from: h */
    public String f25475h = "{}";

    /* renamed from: i */
    public String f25476i = "";

    /* renamed from: j */
    public long f25477j = Long.MAX_VALUE;

    /* renamed from: k */
    public dv1 f25478k = dv1.NONE;

    /* renamed from: o */
    public hv1 f25482o = hv1.UNKNOWN;

    /* renamed from: g */
    public final Map<String, List<vu1>> f25474g = new HashMap();

    /* renamed from: d */
    public final synchronized boolean m10504d() {
        return this.f25479l;
    }

    /* renamed from: e */
    public final void m10503e(dv1 dv1Var) {
        m10492p(dv1Var, true);
    }

    /* renamed from: f */
    public final dv1 m10502f() {
        return this.f25478k;
    }

    /* renamed from: g */
    public final synchronized String m10501g() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31096p6)).booleanValue() && m10494n()) {
            if (this.f25477j < C7601t.m932k().mo24763a() / 1000) {
                this.f25475h = "{}";
                this.f25477j = Long.MAX_VALUE;
                return "";
            } else if (this.f25475h.equals("{}")) {
                return "";
            } else {
                return this.f25475h;
            }
        }
        return "";
    }

    /* renamed from: h */
    public final synchronized String m10500h() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        try {
            jSONObject.put("isTestMode", this.f25479l);
            jSONObject.put("gesture", this.f25478k);
            if (this.f25477j > C7601t.m932k().mo24763a() / 1000) {
                jSONObject.put("networkExtras", this.f25475h);
                jSONObject.put("networkExtrasExpirationSecs", this.f25477j);
            }
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    /* renamed from: i */
    public final synchronized void m10499i(String str, long j) {
        this.f25475h = str;
        this.f25477j = j;
        m10487u();
    }

    /* renamed from: j */
    public final synchronized void m10498j(String str, vu1 vu1Var) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31096p6)).booleanValue() && m10494n()) {
            if (this.f25480m >= ((Integer) C5592av.m12935c().m8098c(C6225rz.f31112r6)).intValue()) {
                cm0.m12437f("Maximum number of ad requests stored reached. Dropping the current request.");
                return;
            }
            if (!this.f25474g.containsKey(str)) {
                this.f25474g.put(str, new ArrayList());
            }
            this.f25480m++;
            this.f25474g.get(str).add(vu1Var);
        }
    }

    /* renamed from: k */
    public final synchronized void m10497k(InterfaceC6481yw interfaceC6481yw, hv1 hv1Var) {
        if (!m10494n()) {
            try {
                interfaceC6481yw.mo4541q0(dq2.m11989d(18, null, null));
                return;
            } catch (RemoteException unused) {
                cm0.m12437f("Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.");
                return;
            }
        }
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31096p6)).booleanValue()) {
            try {
                interfaceC6481yw.mo4541q0(dq2.m11989d(1, null, null));
                return;
            } catch (RemoteException unused2) {
                cm0.m12437f("Ad inspector had an internal error.");
                return;
            }
        }
        this.f25482o = hv1Var;
        this.f25468a.m8127b(interfaceC6481yw, new v50(this));
        return;
    }

    /* renamed from: l */
    public final synchronized void m10496l(String str) {
        this.f25476i = str;
    }

    /* renamed from: m */
    public final synchronized JSONObject m10495m() {
        JSONObject jSONObject;
        String str;
        jSONObject = new JSONObject();
        try {
            jSONObject.put("platform", "ANDROID");
            jSONObject.put("internalSdkVersion", this.f25473f);
            jSONObject.put("adapters", this.f25471d.m12346b());
            if (this.f25477j < C7601t.m932k().mo24763a() / 1000) {
                this.f25475h = "{}";
            }
            jSONObject.put("networkExtras", this.f25475h);
            jSONObject.put("adSlots", m10491q());
            jSONObject.put("appInfo", this.f25472e.m7336a());
            String m10887d = C7601t.m935h().m9051p().mo26194p().m10887d();
            if (!TextUtils.isEmpty(m10887d)) {
                jSONObject.put("cld", new JSONObject(m10887d));
            }
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30805F6)).booleanValue() && !TextUtils.isEmpty(this.f25476i)) {
                String valueOf = String.valueOf(this.f25476i);
                if (valueOf.length() != 0) {
                    str = "Policy violation data: ".concat(valueOf);
                } else {
                    str = new String("Policy violation data: ");
                }
                cm0.m12442a(str);
                jSONObject.put("policyViolations", new JSONObject(this.f25476i));
            }
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30797E6)).booleanValue()) {
                jSONObject.put("openAction", this.f25482o);
                jSONObject.put("gesture", this.f25478k);
            }
        } catch (JSONException e) {
            C7601t.m935h().m9055l(e, "Inspector.toJson");
            cm0.m12436g("Ad inspector encountered an error", e);
        }
        return jSONObject;
    }

    /* renamed from: n */
    public final synchronized boolean m10494n() {
        boolean z;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30797E6)).booleanValue()) {
            if (!this.f25479l && !C7601t.m929n().m26402k()) {
                z = false;
            } else {
                z = true;
            }
            return z;
        }
        return this.f25479l;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036 A[Catch: all -> 0x003d, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0007, B:9:0x000b, B:11:0x001d, B:13:0x0027, B:18:0x0036, B:14:0x002b, B:16:0x0031), top: B:26:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003b A[DONT_GENERATE] */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void m10493o(boolean r2, boolean r3) {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.f25479l     // Catch: java.lang.Throwable -> L3d
            if (r0 != r2) goto L7
            monitor-exit(r1)
            return
        L7:
            r1.f25479l = r2     // Catch: java.lang.Throwable -> L3d
            if (r2 == 0) goto L2b
            r4.jz<java.lang.Boolean> r2 = p168r4.C6225rz.f30797E6     // Catch: java.lang.Throwable -> L3d
            r4.pz r0 = p168r4.C5592av.m12935c()     // Catch: java.lang.Throwable -> L3d
            java.lang.Object r2 = r0.m8098c(r2)     // Catch: java.lang.Throwable -> L3d
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.Throwable -> L3d
            boolean r2 = r2.booleanValue()     // Catch: java.lang.Throwable -> L3d
            if (r2 == 0) goto L27
            b3.c0 r2 = p235z2.C7601t.m929n()     // Catch: java.lang.Throwable -> L3d
            boolean r2 = r2.m26402k()     // Catch: java.lang.Throwable -> L3d
            if (r2 != 0) goto L2b
        L27:
            r1.m10489s()     // Catch: java.lang.Throwable -> L3d
            goto L34
        L2b:
            boolean r2 = r1.m10494n()     // Catch: java.lang.Throwable -> L3d
            if (r2 != 0) goto L34
            r1.m10488t()     // Catch: java.lang.Throwable -> L3d
        L34:
            if (r3 == 0) goto L3b
            r1.m10487u()     // Catch: java.lang.Throwable -> L3d
            monitor-exit(r1)
            return
        L3b:
            monitor-exit(r1)
            return
        L3d:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.iv1.m10493o(boolean, boolean):void");
    }

    /* renamed from: p */
    public final synchronized void m10492p(dv1 dv1Var, boolean z) {
        if (this.f25478k == dv1Var) {
            return;
        }
        if (m10494n()) {
            m10488t();
        }
        this.f25478k = dv1Var;
        if (m10494n()) {
            m10489s();
        }
        if (z) {
            m10487u();
        }
    }

    /* renamed from: q */
    public final synchronized JSONObject m10491q() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        for (Map.Entry<String, List<vu1>> entry : this.f25474g.entrySet()) {
            JSONArray jSONArray = new JSONArray();
            for (vu1 vu1Var : entry.getValue()) {
                if (vu1Var.m6005a()) {
                    jSONArray.put(vu1Var.m6004b());
                }
            }
            if (jSONArray.length() > 0) {
                jSONObject.put(entry.getKey(), jSONArray);
            }
        }
        return jSONObject;
    }

    /* renamed from: r */
    public final void m10490r() {
        this.f25481n = true;
        this.f25471d.m12347a();
        this.f25468a.m8128a(this);
        this.f25469b.m7322a(this);
        this.f25470c.m6719a(this);
        m10486v(C7601t.m935h().m9051p().mo26224J());
    }

    /* renamed from: s */
    public final synchronized void m10489s() {
        dv1 dv1Var = dv1.NONE;
        int ordinal = this.f25478k.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                return;
            }
            this.f25470c.m6718b();
            return;
        }
        this.f25469b.m7321b();
    }

    /* renamed from: t */
    public final synchronized void m10488t() {
        dv1 dv1Var = dv1.NONE;
        int ordinal = this.f25478k.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                return;
            }
            this.f25470c.m6717c();
            return;
        }
        this.f25469b.m7320c();
    }

    /* renamed from: u */
    public final void m10487u() {
        C7601t.m935h().m9051p().mo26209Z0(m10500h());
    }

    /* renamed from: v */
    public final synchronized void m10486v(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            m10493o(jSONObject.optBoolean("isTestMode", false), false);
            m10492p(dv1.m11902c(jSONObject.optString("gesture", "NONE")), false);
            this.f25475h = jSONObject.optString("networkExtras", "{}");
            this.f25477j = jSONObject.optLong("networkExtrasExpirationSecs", Long.MAX_VALUE);
        } catch (JSONException unused) {
        }
    }

    /* renamed from: a */
    public final void m10507a() {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31096p6)).booleanValue()) {
            return;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30797E6)).booleanValue() && C7601t.m935h().m9051p().mo26212X()) {
            m10490r();
            return;
        }
        String mo26224J = C7601t.m935h().m9051p().mo26224J();
        if (TextUtils.isEmpty(mo26224J)) {
            return;
        }
        try {
            if (new JSONObject(mo26224J).optBoolean("isTestMode", false)) {
                m10490r();
            }
        } catch (JSONException unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000a, code lost:
        if (r2 != false) goto L5;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10506b(boolean r2) {
        /*
            r1 = this;
            boolean r0 = r1.f25481n
            if (r0 != 0) goto La
            if (r2 == 0) goto L15
            r1.m10490r()
            goto Lc
        La:
            if (r2 == 0) goto L15
        Lc:
            boolean r2 = r1.f25479l
            if (r2 == 0) goto L11
            goto L15
        L11:
            r1.m10489s()
            return
        L15:
            boolean r2 = r1.m10494n()
            if (r2 != 0) goto L1e
            r1.m10488t()
        L1e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.iv1.m10506b(boolean):void");
    }

    /* renamed from: c */
    public final void m10505c(boolean z) {
        if (!this.f25481n && z) {
            m10490r();
        }
        m10493o(z, true);
    }

    public iv1(pv1 pv1Var, rv1 rv1Var, tu1 tu1Var, Context context, im0 im0Var, cv1 cv1Var) {
        this.f25468a = pv1Var;
        this.f25469b = rv1Var;
        this.f25470c = tu1Var;
        this.f25472e = new ru1(context);
        this.f25473f = im0Var.f25171a;
        this.f25471d = cv1Var;
        C7601t.m929n().m26412a(this);
    }
}
