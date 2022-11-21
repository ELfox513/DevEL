package p070g5;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.badlogic.gdx.net.HttpStatus;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
import p018b5.AbstractC0851r6;
import p018b5.C0603cd;
import p018b5.C0654fd;
import p018b5.C0795o1;
import p026c4.C1048i;
import p026c4.InterfaceC1045f;
import p042d4.C3325e;
import p220x3.C7297q;
/* renamed from: g5.b5 */
/* loaded from: classes2.dex */
public final class C3611b5 implements InterfaceC3875x5 {

    /* renamed from: H */
    public static volatile C3611b5 f16235H;

    /* renamed from: A */
    public volatile Boolean f16236A;

    /* renamed from: B */
    public Boolean f16237B;

    /* renamed from: C */
    public Boolean f16238C;

    /* renamed from: D */
    public volatile boolean f16239D;

    /* renamed from: E */
    public int f16240E;

    /* renamed from: G */
    public final long f16242G;

    /* renamed from: a */
    public final Context f16243a;

    /* renamed from: b */
    public final String f16244b;

    /* renamed from: c */
    public final String f16245c;

    /* renamed from: d */
    public final String f16246d;

    /* renamed from: e */
    public final boolean f16247e;

    /* renamed from: f */
    public final C3605b f16248f;

    /* renamed from: g */
    public final C3665g f16249g;

    /* renamed from: h */
    public final C3670g4 f16250h;

    /* renamed from: i */
    public final C3789q3 f16251i;

    /* renamed from: j */
    public final C3886y4 f16252j;

    /* renamed from: k */
    public final C3747m9 f16253k;

    /* renamed from: l */
    public final C3700ia f16254l;

    /* renamed from: m */
    public final C3729l3 f16255m;

    /* renamed from: n */
    public final InterfaceC1045f f16256n;

    /* renamed from: o */
    public final C3865w7 f16257o;

    /* renamed from: p */
    public final C3697i7 f16258p;

    /* renamed from: q */
    public final C3632d2 f16259q;

    /* renamed from: r */
    public final C3745m7 f16260r;

    /* renamed from: s */
    public final String f16261s;

    /* renamed from: t */
    public C3705j3 f16262t;

    /* renamed from: u */
    public C3866w8 f16263u;

    /* renamed from: v */
    public C3761o f16264v;

    /* renamed from: w */
    public C3681h3 f16265w;

    /* renamed from: y */
    public Boolean f16267y;

    /* renamed from: z */
    public long f16268z;

    /* renamed from: x */
    public boolean f16266x = false;

    /* renamed from: F */
    public final AtomicInteger f16241F = new AtomicInteger(0);

    /* renamed from: o */
    public static final void m18519o() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    /* renamed from: p */
    public static final void m18518p(C3851v5 c3851v5) {
        if (c3851v5 == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    /* renamed from: A */
    public final C3670g4 m18546A() {
        m18518p(this.f16250h);
        return this.f16250h;
    }

    /* renamed from: B */
    public final C3886y4 m18545B() {
        return this.f16252j;
    }

    /* renamed from: D */
    public final C3697i7 m18543D() {
        m18517q(this.f16258p);
        return this.f16258p;
    }

    /* renamed from: E */
    public final C3745m7 m18542E() {
        m18516r(this.f16260r);
        return this.f16260r;
    }

    @Override // p070g5.InterfaceC3875x5
    /* renamed from: F */
    public final C3789q3 mo17858F() {
        m18516r(this.f16251i);
        return this.f16251i;
    }

    @Override // p070g5.InterfaceC3875x5
    /* renamed from: G */
    public final C3605b mo17857G() {
        return this.f16248f;
    }

    /* renamed from: H */
    public final C3865w7 m18541H() {
        m18517q(this.f16257o);
        return this.f16257o;
    }

    /* renamed from: I */
    public final C3866w8 m18540I() {
        m18517q(this.f16263u);
        return this.f16263u;
    }

    /* renamed from: J */
    public final C3747m9 m18539J() {
        m18517q(this.f16253k);
        return this.f16253k;
    }

    /* renamed from: K */
    public final C3700ia m18538K() {
        m18518p(this.f16254l);
        return this.f16254l;
    }

    /* renamed from: L */
    public final String m18537L() {
        return this.f16244b;
    }

    /* renamed from: M */
    public final String m18536M() {
        return this.f16245c;
    }

    /* renamed from: N */
    public final String m18535N() {
        return this.f16246d;
    }

    @Override // p070g5.InterfaceC3875x5
    /* renamed from: O */
    public final Context mo17856O() {
        return this.f16243a;
    }

    @Override // p070g5.InterfaceC3875x5
    /* renamed from: P */
    public final C3886y4 mo17855P() {
        m18516r(this.f16252j);
        return this.f16252j;
    }

    @Override // p070g5.InterfaceC3875x5
    /* renamed from: Q */
    public final InterfaceC1045f mo17854Q() {
        return this.f16256n;
    }

    /* renamed from: R */
    public final String m18534R() {
        return this.f16261s;
    }

    /* renamed from: b */
    public final void m18532b() {
        this.f16241F.incrementAndGet();
    }

    /* renamed from: d */
    public final void m18530d() {
        this.f16240E++;
    }

    /* renamed from: f */
    public final void m18528f(boolean z) {
        this.f16236A = Boolean.valueOf(z);
    }

    /* renamed from: g */
    public final void m18527g(boolean z) {
        mo17855P().mo17839c();
        this.f16239D = z;
    }

    /* renamed from: i */
    public final boolean m18525i() {
        return this.f16236A != null && this.f16236A.booleanValue();
    }

    /* renamed from: j */
    public final boolean m18524j() {
        return m18515s() == 0;
    }

    /* renamed from: k */
    public final boolean m18523k() {
        mo17855P().mo17839c();
        return this.f16239D;
    }

    /* renamed from: l */
    public final boolean m18522l() {
        return TextUtils.isEmpty(this.f16244b);
    }

    /* renamed from: n */
    public final boolean m18520n() {
        return this.f16247e;
    }

    /* renamed from: t */
    public final C3632d2 m18514t() {
        C3632d2 c3632d2 = this.f16259q;
        if (c3632d2 != null) {
            return c3632d2;
        }
        throw new IllegalStateException("Component not created");
    }

    /* renamed from: u */
    public final C3665g m18513u() {
        return this.f16249g;
    }

    /* renamed from: v */
    public final C3761o m18512v() {
        m18516r(this.f16264v);
        return this.f16264v;
    }

    /* renamed from: w */
    public final C3681h3 m18511w() {
        m18517q(this.f16265w);
        return this.f16265w;
    }

    /* renamed from: x */
    public final C3705j3 m18510x() {
        m18517q(this.f16262t);
        return this.f16262t;
    }

    /* renamed from: y */
    public final C3729l3 m18509y() {
        return this.f16255m;
    }

    /* renamed from: z */
    public final C3789q3 m18508z() {
        C3789q3 c3789q3 = this.f16251i;
        if (c3789q3 == null || !c3789q3.m17919i()) {
            return null;
        }
        return this.f16251i;
    }

    /* renamed from: C */
    public static C3611b5 m18544C(Context context, C0795o1 c0795o1, Long l) {
        Bundle bundle;
        if (c0795o1 != null && (c0795o1.f2074p == null || c0795o1.f2075q == null)) {
            c0795o1 = new C0795o1(c0795o1.f2070a, c0795o1.f2071b, c0795o1.f2072d, c0795o1.f2073k, null, null, c0795o1.f2076r, null);
        }
        C7297q.m1883j(context);
        C7297q.m1883j(context.getApplicationContext());
        if (f16235H == null) {
            synchronized (C3611b5.class) {
                if (f16235H == null) {
                    f16235H = new C3611b5(new C3660f6(context, c0795o1, l));
                }
            }
        } else if (c0795o1 != null && (bundle = c0795o1.f2076r) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            C7297q.m1883j(f16235H);
            f16235H.f16236A = Boolean.valueOf(c0795o1.f2076r.getBoolean("dataCollectionDefaultEnabled"));
        }
        C7297q.m1883j(f16235H);
        return f16235H;
    }

    /* renamed from: q */
    public static final void m18517q(AbstractC3658f4 abstractC3658f4) {
        if (abstractC3658f4 != null) {
            if (abstractC3658f4.m18381h()) {
                return;
            }
            String valueOf = String.valueOf(abstractC3658f4.getClass());
            StringBuilder sb = new StringBuilder(valueOf.length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
        throw new IllegalStateException("Component not created");
    }

    /* renamed from: r */
    public static final void m18516r(AbstractC3863w5 abstractC3863w5) {
        if (abstractC3863w5 != null) {
            if (abstractC3863w5.m17919i()) {
                return;
            }
            String valueOf = String.valueOf(abstractC3863w5.getClass());
            StringBuilder sb = new StringBuilder(valueOf.length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
        throw new IllegalStateException("Component not created");
    }

    /* renamed from: c */
    public final /* synthetic */ void m18531c(String str, int i, Throwable th, byte[] bArr, Map map) {
        List<ResolveInfo> queryIntentActivities;
        if (i != 200 && i != 204) {
            if (i == 304) {
                i = HttpStatus.SC_NOT_MODIFIED;
            }
            mo17858F().m18013r().m18040c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i), th);
        }
        if (th == null) {
            m18546A().f16511r.m17814a(true);
            if (bArr != null && bArr.length != 0) {
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    String optString = jSONObject.optString("deeplink", "");
                    String optString2 = jSONObject.optString("gclid", "");
                    double optDouble = jSONObject.optDouble("timestamp", 0.0d);
                    if (TextUtils.isEmpty(optString)) {
                        mo17858F().m18019l().m18042a("Deferred Deep Link is empty.");
                        return;
                    }
                    C3700ia m18538K = m18538K();
                    C3611b5 c3611b5 = m18538K.f17008a;
                    if (!TextUtils.isEmpty(optString) && (queryIntentActivities = m18538K.f17008a.f16243a.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0)) != null && !queryIntentActivities.isEmpty()) {
                        Bundle bundle = new Bundle();
                        bundle.putString("gclid", optString2);
                        bundle.putString("_cis", "ddp");
                        this.f16258p.m18216p("auto", "_cmp", bundle);
                        C3700ia m18538K2 = m18538K();
                        if (!TextUtils.isEmpty(optString)) {
                            try {
                                SharedPreferences.Editor edit = m18538K2.f17008a.f16243a.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                                edit.putString("deeplink", optString);
                                edit.putLong("timestamp", Double.doubleToRawLongBits(optDouble));
                                if (edit.commit()) {
                                    m18538K2.f17008a.f16243a.sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
                                    return;
                                }
                                return;
                            } catch (RuntimeException e) {
                                m18538K2.f17008a.mo17858F().m18018m().m18041b("Failed to persist Deferred Deep Link. exception", e);
                                return;
                            }
                        }
                        return;
                    }
                    mo17858F().m18013r().m18040c("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                    return;
                } catch (JSONException e2) {
                    mo17858F().m18018m().m18041b("Failed to parse the Deferred Deep Link response. exception", e2);
                    return;
                }
            }
            mo17858F().m18019l().m18042a("Deferred Deep Link response empty.");
            return;
        }
        mo17858F().m18013r().m18040c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i), th);
    }

    /* renamed from: m */
    public final boolean m18521m() {
        boolean z;
        if (this.f16266x) {
            mo17855P().mo17839c();
            Boolean bool = this.f16267y;
            if (bool == null || this.f16268z == 0 || (!bool.booleanValue() && Math.abs(this.f16256n.mo24762b() - this.f16268z) > 1000)) {
                this.f16268z = this.f16256n.mo24762b();
                boolean z2 = true;
                if (m18538K().m18193R("android.permission.INTERNET") && m18538K().m18193R("android.permission.ACCESS_NETWORK_STATE") && (C3325e.m19140a(this.f16243a).m19142g() || this.f16249g.m18378B() || (C3700ia.m18187X(this.f16243a) && C3700ia.m18186Y(this.f16243a, false)))) {
                    z = true;
                } else {
                    z = false;
                }
                Boolean valueOf = Boolean.valueOf(z);
                this.f16267y = valueOf;
                if (valueOf.booleanValue()) {
                    if (!m18538K().m18200H(m18511w().m18256p(), m18511w().m18259m(), m18511w().m18257o()) && TextUtils.isEmpty(m18511w().m18259m())) {
                        z2 = false;
                    }
                    this.f16267y = Boolean.valueOf(z2);
                }
            }
            return this.f16267y.booleanValue();
        }
        throw new IllegalStateException("AppMeasurement is not initialized");
    }

    public C3611b5(C3660f6 c3660f6) {
        long mo24763a;
        Bundle bundle;
        boolean z = false;
        C7297q.m1883j(c3660f6);
        C3605b c3605b = new C3605b(c3660f6.f16477a);
        this.f16248f = c3605b;
        C3896z2.f17123a = c3605b;
        Context context = c3660f6.f16477a;
        this.f16243a = context;
        this.f16244b = c3660f6.f16478b;
        this.f16245c = c3660f6.f16479c;
        this.f16246d = c3660f6.f16480d;
        this.f16247e = c3660f6.f16484h;
        this.f16236A = c3660f6.f16481e;
        this.f16261s = c3660f6.f16486j;
        this.f16239D = true;
        C0795o1 c0795o1 = c3660f6.f16483g;
        if (c0795o1 != null && (bundle = c0795o1.f2076r) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.f16237B = (Boolean) obj;
            }
            Object obj2 = c0795o1.f2076r.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.f16238C = (Boolean) obj2;
            }
        }
        AbstractC0851r6.m25428d(context);
        InterfaceC1045f m24760d = C1048i.m24760d();
        this.f16256n = m24760d;
        Long l = c3660f6.f16485i;
        if (l != null) {
            mo24763a = l.longValue();
        } else {
            mo24763a = m24760d.mo24763a();
        }
        this.f16242G = mo24763a;
        this.f16249g = new C3665g(this);
        C3670g4 c3670g4 = new C3670g4(this);
        c3670g4.m17921g();
        this.f16250h = c3670g4;
        C3789q3 c3789q3 = new C3789q3(this);
        c3789q3.m17921g();
        this.f16251i = c3789q3;
        C3700ia c3700ia = new C3700ia(this);
        c3700ia.m17921g();
        this.f16254l = c3700ia;
        this.f16255m = new C3729l3(new C3648e6(c3660f6, this));
        this.f16259q = new C3632d2(this);
        C3865w7 c3865w7 = new C3865w7(this);
        c3865w7.m18383e();
        this.f16257o = c3865w7;
        C3697i7 c3697i7 = new C3697i7(this);
        c3697i7.m18383e();
        this.f16258p = c3697i7;
        C3747m9 c3747m9 = new C3747m9(this);
        c3747m9.m18383e();
        this.f16253k = c3747m9;
        C3745m7 c3745m7 = new C3745m7(this);
        c3745m7.m17921g();
        this.f16260r = c3745m7;
        C3886y4 c3886y4 = new C3886y4(this);
        c3886y4.m17921g();
        this.f16252j = c3886y4;
        C0795o1 c0795o12 = c3660f6.f16483g;
        z = (c0795o12 == null || c0795o12.f2071b == 0) ? true : true;
        if (context.getApplicationContext() instanceof Application) {
            C3697i7 m18543D = m18543D();
            if (m18543D.f17008a.f16243a.getApplicationContext() instanceof Application) {
                Application application = (Application) m18543D.f17008a.f16243a.getApplicationContext();
                if (m18543D.f16618c == null) {
                    m18543D.f16618c = new C3673g7(m18543D, null);
                }
                if (z) {
                    application.unregisterActivityLifecycleCallbacks(m18543D.f16618c);
                    application.registerActivityLifecycleCallbacks(m18543D.f16618c);
                    m18543D.f17008a.mo17858F().m18014q().m18042a("Registered activity lifecycle callback");
                }
            }
        } else {
            mo17858F().m18013r().m18042a("Application context is not an Application");
        }
        c3886y4.m17826u(new RunnableC3599a5(this, c3660f6));
    }

    /* renamed from: a */
    public static /* bridge */ /* synthetic */ void m18533a(C3611b5 c3611b5, C3660f6 c3660f6) {
        String str;
        c3611b5.mo17855P().mo17839c();
        c3611b5.f16249g.m18361r();
        C3761o c3761o = new C3761o(c3611b5);
        c3761o.m17921g();
        c3611b5.f16264v = c3761o;
        C3681h3 c3681h3 = new C3681h3(c3611b5, c3660f6.f16482f);
        c3681h3.m18383e();
        c3611b5.f16265w = c3681h3;
        C3705j3 c3705j3 = new C3705j3(c3611b5);
        c3705j3.m18383e();
        c3611b5.f16262t = c3705j3;
        C3866w8 c3866w8 = new C3866w8(c3611b5);
        c3866w8.m18383e();
        c3611b5.f16263u = c3866w8;
        c3611b5.f16254l.m17920h();
        c3611b5.f16250h.m17920h();
        c3611b5.f16265w.m18382f();
        C3765o3 m18015p = c3611b5.mo17858F().m18015p();
        c3611b5.f16249g.m18367l();
        m18015p.m18041b("App measurement initialized, version", 43042L);
        c3611b5.mo17858F().m18015p().m18042a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String m18258n = c3681h3.m18258n();
        if (TextUtils.isEmpty(c3611b5.f16244b)) {
            if (c3611b5.m18538K().m18192S(m18258n)) {
                c3611b5.mo17858F().m18015p().m18042a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                C3765o3 m18015p2 = c3611b5.mo17858F().m18015p();
                String valueOf = String.valueOf(m18258n);
                if (valueOf.length() != 0) {
                    str = "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf);
                } else {
                    str = new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ");
                }
                m18015p2.m18042a(str);
            }
        }
        c3611b5.mo17858F().m18019l().m18042a("Debug-level message logging enabled");
        if (c3611b5.f16240E != c3611b5.f16241F.get()) {
            c3611b5.mo17858F().m18018m().m18040c("Not all components initialized", Integer.valueOf(c3611b5.f16240E), Integer.valueOf(c3611b5.f16241F.get()));
        }
        c3611b5.f16266x = true;
    }

    /* renamed from: e */
    public final void m18529e() {
        mo17855P().mo17839c();
        m18516r(m18542E());
        String m18258n = m18511w().m18258n();
        Pair<String, Boolean> m18351k = m18546A().m18351k(m18258n);
        if (this.f16249g.m18357v() && !((Boolean) m18351k.second).booleanValue() && !TextUtils.isEmpty((CharSequence) m18351k.first)) {
            C3745m7 m18542E = m18542E();
            m18542E.m17922f();
            ConnectivityManager connectivityManager = (ConnectivityManager) m18542E.f17008a.f16243a.getSystemService("connectivity");
            NetworkInfo networkInfo = null;
            if (connectivityManager != null) {
                try {
                    networkInfo = connectivityManager.getActiveNetworkInfo();
                } catch (SecurityException unused) {
                }
            }
            if (networkInfo != null && networkInfo.isConnected()) {
                C3700ia m18538K = m18538K();
                m18511w().f17008a.f16249g.m18367l();
                URL m18169m = m18538K.m18169m(43042L, m18258n, (String) m18351k.first, m18546A().f16512s.m18548a() - 1);
                if (m18169m != null) {
                    C3745m7 m18542E2 = m18542E();
                    C3898z4 c3898z4 = new C3898z4(this);
                    m18542E2.mo17839c();
                    m18542E2.m17922f();
                    C7297q.m1883j(m18169m);
                    C7297q.m1883j(c3898z4);
                    m18542E2.f17008a.mo17855P().m17827t(new RunnableC3733l7(m18542E2, m18258n, m18169m, null, null, c3898z4, null));
                    return;
                }
                return;
            }
            mo17858F().m18013r().m18042a("Network is not available for Deferred Deep Link request. Skipping");
            return;
        }
        mo17858F().m18019l().m18042a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
    }

    /* renamed from: h */
    public final void m18526h(C0795o1 c0795o1) {
        C3677h c3677h;
        mo17855P().mo17839c();
        C3677h m18350l = m18546A().m18350l();
        C3670g4 m18546A = m18546A();
        C3611b5 c3611b5 = m18546A.f17008a;
        m18546A.mo17839c();
        int i = 100;
        int i2 = m18546A.m18352j().getInt("consent_source", 100);
        C3665g c3665g = this.f16249g;
        C3611b5 c3611b52 = c3665g.f17008a;
        Boolean m18364o = c3665g.m18364o("google_analytics_default_allow_ad_storage");
        C3665g c3665g2 = this.f16249g;
        C3611b5 c3611b53 = c3665g2.f17008a;
        Boolean m18364o2 = c3665g2.m18364o("google_analytics_default_allow_analytics_storage");
        if ((m18364o != null || m18364o2 != null) && m18546A().m18344r(-10)) {
            c3677h = new C3677h(m18364o, m18364o2);
            i = -10;
        } else {
            if (!TextUtils.isEmpty(m18511w().m18256p()) && (i2 == 0 || i2 == 30 || i2 == 10 || i2 == 30 || i2 == 30 || i2 == 40)) {
                m18543D().m18250B(C3677h.f16563c, -10, this.f16242G);
            } else {
                C0654fd.m25939b();
                if ((!this.f16249g.m18356w(null, C3621c3.f16398v0) || TextUtils.isEmpty(m18511w().m18256p())) && c0795o1 != null && c0795o1.f2076r != null && m18546A().m18344r(30)) {
                    c3677h = C3677h.m18280a(c0795o1.f2076r);
                    if (!c3677h.equals(C3677h.f16563c)) {
                        i = 30;
                    }
                }
            }
            c3677h = null;
        }
        if (c3677h != null) {
            m18543D().m18250B(c3677h, i, this.f16242G);
            m18350l = c3677h;
        }
        m18543D().m18246H(m18350l);
        if (m18546A().f16498e.m18548a() == 0) {
            mo17858F().m18014q().m18041b("Persisting first open", Long.valueOf(this.f16242G));
            m18546A().f16498e.m18547b(this.f16242G);
        }
        m18543D().f16629n.m17995c();
        if (!m18521m()) {
            if (m18524j()) {
                if (!m18538K().m18193R("android.permission.INTERNET")) {
                    mo17858F().m18018m().m18042a("App is missing INTERNET permission");
                }
                if (!m18538K().m18193R("android.permission.ACCESS_NETWORK_STATE")) {
                    mo17858F().m18018m().m18042a("App is missing ACCESS_NETWORK_STATE permission");
                }
                if (!C3325e.m19140a(this.f16243a).m19142g() && !this.f16249g.m18378B()) {
                    if (!C3700ia.m18187X(this.f16243a)) {
                        mo17858F().m18018m().m18042a("AppMeasurementReceiver not registered/enabled");
                    }
                    if (!C3700ia.m18186Y(this.f16243a, false)) {
                        mo17858F().m18018m().m18042a("AppMeasurementService not registered/enabled");
                    }
                }
                mo17858F().m18018m().m18042a("Uploading is not possible. App measurement disabled");
            }
        } else {
            if (!TextUtils.isEmpty(m18511w().m18256p()) || !TextUtils.isEmpty(m18511w().m18259m())) {
                C3700ia m18538K = m18538K();
                String m18256p = m18511w().m18256p();
                C3670g4 m18546A2 = m18546A();
                m18546A2.mo17839c();
                String string = m18546A2.m18352j().getString("gmp_app_id", null);
                String m18259m = m18511w().m18259m();
                C3670g4 m18546A3 = m18546A();
                m18546A3.mo17839c();
                if (m18538K.m18183b0(m18256p, string, m18259m, m18546A3.m18352j().getString("admob_app_id", null))) {
                    mo17858F().m18015p().m18042a("Rechecking which service to use due to a GMP App Id change");
                    C3670g4 m18546A4 = m18546A();
                    m18546A4.mo17839c();
                    Boolean m18349m = m18546A4.m18349m();
                    SharedPreferences.Editor edit = m18546A4.m18352j().edit();
                    edit.clear();
                    edit.apply();
                    if (m18349m != null) {
                        m18546A4.m18348n(m18349m);
                    }
                    m18510x().m18142l();
                    this.f16263u.m17887N();
                    this.f16263u.m17888M();
                    m18546A().f16498e.m18547b(this.f16242G);
                    m18546A().f16500g.m18387b(null);
                }
                C3670g4 m18546A5 = m18546A();
                String m18256p2 = m18511w().m18256p();
                m18546A5.mo17839c();
                SharedPreferences.Editor edit2 = m18546A5.m18352j().edit();
                edit2.putString("gmp_app_id", m18256p2);
                edit2.apply();
                C3670g4 m18546A6 = m18546A();
                String m18259m2 = m18511w().m18259m();
                m18546A6.mo17839c();
                SharedPreferences.Editor edit3 = m18546A6.m18352j().edit();
                edit3.putString("admob_app_id", m18259m2);
                edit3.apply();
            }
            if (!m18546A().m18350l().m18270k()) {
                m18546A().f16500g.m18387b(null);
            }
            m18543D().m18208x(m18546A().f16500g.m18388a());
            C0603cd.m26095b();
            if (this.f16249g.m18356w(null, C3621c3.f16376k0)) {
                try {
                    m18538K().f17008a.f16243a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                } catch (ClassNotFoundException unused) {
                    if (!TextUtils.isEmpty(m18546A().f16513t.m18388a())) {
                        mo17858F().m18013r().m18042a("Remote config removed with active feature rollouts");
                        m18546A().f16513t.m18387b(null);
                    }
                }
            }
            if (!TextUtils.isEmpty(m18511w().m18256p()) || !TextUtils.isEmpty(m18511w().m18259m())) {
                boolean m18524j = m18524j();
                if (!m18546A().m18346p() && !this.f16249g.m18353z()) {
                    m18546A().m18347o(!m18524j);
                }
                if (m18524j) {
                    m18543D().m18224g0();
                }
                m18539J().f16736d.m18066a();
                m18540I().m17885S(new AtomicReference<>());
                m18540I().m17872q(m18546A().f16516w.m18555a());
            }
        }
        m18546A().f16507n.m17814a(true);
    }

    /* renamed from: s */
    public final int m18515s() {
        mo17855P().mo17839c();
        if (this.f16249g.m18353z()) {
            return 1;
        }
        Boolean bool = this.f16238C;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        mo17855P().mo17839c();
        if (!this.f16239D) {
            return 8;
        }
        Boolean m18349m = m18546A().m18349m();
        if (m18349m != null) {
            if (m18349m.booleanValue()) {
                return 0;
            }
            return 3;
        }
        C3665g c3665g = this.f16249g;
        C3605b c3605b = c3665g.f17008a.f16248f;
        Boolean m18364o = c3665g.m18364o("firebase_analytics_collection_enabled");
        if (m18364o != null) {
            if (m18364o.booleanValue()) {
                return 0;
            }
            return 4;
        }
        Boolean bool2 = this.f16237B;
        if (bool2 != null) {
            if (bool2.booleanValue()) {
                return 0;
            }
            return 5;
        } else if (!this.f16249g.m18356w(null, C3621c3.f16349U) || this.f16236A == null || this.f16236A.booleanValue()) {
            return 0;
        } else {
            return 7;
        }
    }
}
