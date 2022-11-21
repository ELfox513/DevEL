package p168r4;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.prineside.tdi2.Config;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p004a3.BinderC0073n;
import p004a3.C0064e;
import p016b3.C0497k2;
import p016b3.C0536u1;
import p016b3.C0543w1;
import p016b3.InterfaceC0548y0;
import p026c4.C1054o;
import p026c4.InterfaceC1055p;
import p060f4.InterfaceC3512a;
import p235z2.C7582a;
import p235z2.C7601t;
import p235z2.InterfaceC7593l;
@SuppressLint({"ViewConstructor"})
/* renamed from: r4.xs0 */
/* loaded from: classes2.dex */
public final class xs0 extends WebView implements DownloadListener, ViewTreeObserver.OnGlobalLayoutListener, cs0 {

    /* renamed from: l0 */
    public static final /* synthetic */ int f33708l0 = 0;

    /* renamed from: A */
    public vt0 f33709A;

    /* renamed from: B */
    public final String f33710B;

    /* renamed from: C */
    public boolean f33711C;

    /* renamed from: D */
    public boolean f33712D;

    /* renamed from: E */
    public boolean f33713E;

    /* renamed from: F */
    public boolean f33714F;

    /* renamed from: G */
    public Boolean f33715G;

    /* renamed from: H */
    public boolean f33716H;

    /* renamed from: I */
    public final String f33717I;

    /* renamed from: J */
    public at0 f33718J;

    /* renamed from: K */
    public boolean f33719K;

    /* renamed from: L */
    public boolean f33720L;

    /* renamed from: M */
    public b20 f33721M;

    /* renamed from: N */
    public y10 f33722N;

    /* renamed from: O */
    public InterfaceC5622bo f33723O;

    /* renamed from: P */
    public int f33724P;

    /* renamed from: Q */
    public int f33725Q;

    /* renamed from: R */
    public d00 f33726R;

    /* renamed from: S */
    public final d00 f33727S;

    /* renamed from: T */
    public d00 f33728T;

    /* renamed from: U */
    public final e00 f33729U;

    /* renamed from: V */
    public int f33730V;

    /* renamed from: W */
    public int f33731W;

    /* renamed from: a */
    public final ut0 f33732a;

    /* renamed from: a0 */
    public int f33733a0;

    /* renamed from: b */
    public final C6300u f33734b;

    /* renamed from: b0 */
    public BinderC0073n f33735b0;

    /* renamed from: c0 */
    public boolean f33736c0;

    /* renamed from: d */
    public final r00 f33737d;

    /* renamed from: d0 */
    public final C0536u1 f33738d0;

    /* renamed from: e0 */
    public int f33739e0;

    /* renamed from: f0 */
    public int f33740f0;

    /* renamed from: g0 */
    public int f33741g0;

    /* renamed from: h0 */
    public int f33742h0;

    /* renamed from: i0 */
    public Map<String, qq0> f33743i0;

    /* renamed from: j0 */
    public final WindowManager f33744j0;

    /* renamed from: k */
    public final im0 f33745k;

    /* renamed from: k0 */
    public final C5882ip f33746k0;

    /* renamed from: p */
    public InterfaceC7593l f33747p;

    /* renamed from: q */
    public final C7582a f33748q;

    /* renamed from: r */
    public final DisplayMetrics f33749r;

    /* renamed from: s */
    public final float f33750s;

    /* renamed from: t */
    public no2 f33751t;

    /* renamed from: u */
    public so2 f33752u;

    /* renamed from: v */
    public boolean f33753v;

    /* renamed from: w */
    public boolean f33754w;

    /* renamed from: x */
    public js0 f33755x;

    /* renamed from: y */
    public BinderC0073n f33756y;

    /* renamed from: z */
    public InterfaceC3512a f33757z;

    public xs0(ut0 ut0Var, vt0 vt0Var, String str, boolean z, boolean z2, C6300u c6300u, r00 r00Var, im0 im0Var, h00 h00Var, InterfaceC7593l interfaceC7593l, C7582a c7582a, C5882ip c5882ip, no2 no2Var, so2 so2Var) {
        super(ut0Var);
        so2 so2Var2;
        this.f33753v = false;
        this.f33754w = false;
        this.f33716H = true;
        this.f33717I = "";
        this.f33739e0 = -1;
        this.f33740f0 = -1;
        this.f33741g0 = -1;
        this.f33742h0 = -1;
        this.f33732a = ut0Var;
        this.f33709A = vt0Var;
        this.f33710B = str;
        this.f33713E = z;
        this.f33734b = c6300u;
        this.f33737d = r00Var;
        this.f33745k = im0Var;
        this.f33747p = interfaceC7593l;
        this.f33748q = c7582a;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.f33744j0 = windowManager;
        C7601t.m939d();
        DisplayMetrics m26317f0 = C0497k2.m26317f0(windowManager);
        this.f33749r = m26317f0;
        this.f33750s = m26317f0.density;
        this.f33746k0 = c5882ip;
        this.f33751t = no2Var;
        this.f33752u = so2Var;
        this.f33738d0 = new C0536u1(ut0Var.m6373a(), this, this, null);
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            cm0.m12439d("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        settings.setUserAgentString(C7601t.m939d().m26339P(ut0Var, im0Var.f25171a));
        C7601t.m937f().mo26290a(getContext(), settings);
        setDownloadListener(this);
        m5047s1();
        if (C1054o.m24737d()) {
            addJavascriptInterface(new ft0(this, new et0(this) { // from class: r4.ct0

                /* renamed from: a */
                public final cs0 f21668a;

                {
                    this.f21668a = this;
                }

                @Override // p168r4.et0
                /* renamed from: a */
                public final void mo11687a(Uri uri) {
                    js0 m5059n1 = ((xs0) this.f21668a).m5059n1();
                    if (m5059n1 == null) {
                        cm0.m12440c("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
                    } else {
                        m5059n1.mo7013E0(uri);
                    }
                }
            }), "googleAdsJsInterface");
        }
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        m5033x1();
        e00 e00Var = new e00(new h00(true, "make_wv", this.f33710B));
        this.f33729U = e00Var;
        e00Var.m11891c().m11027a(null);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue() && (so2Var2 = this.f33752u) != null && so2Var2.f31426b != null) {
            e00Var.m11891c().m11024d("gqi", this.f33752u.f31426b);
        }
        e00Var.m11891c();
        d00 m11022f = h00.m11022f();
        this.f33727S = m11022f;
        e00Var.m11893a("native:view_create", m11022f);
        this.f33728T = null;
        this.f33726R = null;
        C7601t.m937f().mo26288c(ut0Var);
        C7601t.m935h().m9054m();
    }

    @Override // p168r4.po0
    /* renamed from: B */
    public final int mo5136B() {
        return getMeasuredHeight();
    }

    @Override // p168r4.cs0
    /* renamed from: B0 */
    public final synchronized InterfaceC3512a mo5135B0() {
        return this.f33757z;
    }

    @Override // p168r4.cs0
    /* renamed from: C */
    public final synchronized b20 mo5134C() {
        return this.f33721M;
    }

    @Override // p168r4.kt0
    /* renamed from: C0 */
    public final void mo5133C0(C0064e c0064e, boolean z) {
        this.f33755x.m10188Y(c0064e, z);
    }

    @Override // p168r4.cs0, p168r4.po0
    /* renamed from: D */
    public final synchronized void mo5132D(String str, qq0 qq0Var) {
        if (this.f33743i0 == null) {
            this.f33743i0 = new HashMap();
        }
        this.f33743i0.put(str, qq0Var);
    }

    @Override // p168r4.cs0
    /* renamed from: D0 */
    public final Context mo5131D0() {
        return this.f33732a.m6372b();
    }

    @Override // p168r4.cs0
    /* renamed from: E */
    public final void mo5130E() {
        this.f33738d0.m26263b();
    }

    @Override // p168r4.cs0
    /* renamed from: F */
    public final synchronized InterfaceC5622bo mo5129F() {
        return this.f33723O;
    }

    @Override // p168r4.InterfaceC5812gt
    /* renamed from: F0 */
    public final void mo3609F0() {
        js0 js0Var = this.f33755x;
        if (js0Var != null) {
            js0Var.mo3609F0();
        }
    }

    @Override // p168r4.cs0, p168r4.tr0
    /* renamed from: G */
    public final no2 mo5128G() {
        return this.f33751t;
    }

    @Override // p168r4.cs0
    /* renamed from: G0 */
    public final boolean mo5127G0() {
        return false;
    }

    @Override // p168r4.cs0, p168r4.nt0
    /* renamed from: H */
    public final C6300u mo5126H() {
        return this.f33734b;
    }

    @Override // p168r4.cs0, p168r4.pt0
    /* renamed from: I */
    public final View mo5124I() {
        return this;
    }

    @Override // p168r4.cs0
    /* renamed from: I0 */
    public final WebViewClient mo5123I0() {
        return this.f33755x;
    }

    @Override // p168r4.cs0
    /* renamed from: J */
    public final WebView mo5122J() {
        return this;
    }

    @Override // p168r4.cs0, p168r4.po0
    /* renamed from: K */
    public final synchronized void mo5121K(at0 at0Var) {
        if (this.f33718J != null) {
            cm0.m12440c("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.f33718J = at0Var;
        }
    }

    @Override // p168r4.po0
    /* renamed from: L */
    public final int mo5119L() {
        return this.f33731W;
    }

    @Override // p168r4.cs0
    /* renamed from: L0 */
    public final void mo5118L0(no2 no2Var, so2 so2Var) {
        this.f33751t = no2Var;
        this.f33752u = so2Var;
    }

    @Override // p168r4.cs0, p168r4.bt0
    /* renamed from: M */
    public final so2 mo5117M() {
        return this.f33752u;
    }

    @Override // p235z2.InterfaceC7593l
    /* renamed from: M0 */
    public final synchronized void mo1005M0() {
        InterfaceC7593l interfaceC7593l = this.f33747p;
        if (interfaceC7593l != null) {
            interfaceC7593l.mo1005M0();
        }
    }

    @Override // p168r4.po0
    /* renamed from: N */
    public final int mo5116N() {
        return this.f33733a0;
    }

    @Override // p168r4.cs0
    /* renamed from: O */
    public final void mo5115O() {
        throw null;
    }

    @Override // p168r4.cs0
    /* renamed from: O0 */
    public final synchronized boolean mo5114O0() {
        return this.f33711C;
    }

    @Override // p168r4.cs0
    /* renamed from: P */
    public final synchronized String mo5113P() {
        return this.f33710B;
    }

    @Override // p168r4.cs0
    /* renamed from: P0 */
    public final synchronized void mo5112P0(boolean z) {
        if (z) {
            setBackgroundColor(0);
        }
        BinderC0073n binderC0073n = this.f33756y;
        if (binderC0073n != null) {
            binderC0073n.m27694m7(z);
        }
    }

    @Override // p168r4.kt0
    /* renamed from: Q0 */
    public final void mo5111Q0(boolean z, int i, String str, String str2, boolean z2) {
        this.f33755x.m10180j0(z, i, str, str2, z2);
    }

    @Override // p168r4.cs0
    /* renamed from: R */
    public final void mo5110R() {
        setBackgroundColor(0);
    }

    @Override // p168r4.cs0
    /* renamed from: R0 */
    public final synchronized void mo5109R0(b20 b20Var) {
        this.f33721M = b20Var;
    }

    @Override // p168r4.po0
    /* renamed from: S */
    public final void mo5108S(int i) {
        this.f33731W = i;
    }

    @Override // p168r4.kt0
    /* renamed from: S0 */
    public final void mo5107S0(boolean z, int i, boolean z2) {
        this.f33755x.m10185c0(z, i, z2);
    }

    @Override // p168r4.cs0
    /* renamed from: T */
    public final synchronized boolean mo5106T() {
        return this.f33713E;
    }

    @Override // p168r4.po0
    /* renamed from: T0 */
    public final synchronized void mo5105T0(int i) {
        this.f33730V = i;
    }

    @Override // p168r4.cs0
    /* renamed from: U0 */
    public final synchronized boolean mo5104U0() {
        return this.f33724P > 0;
    }

    @Override // p168r4.cs0
    /* renamed from: V0 */
    public final synchronized void mo5103V0(boolean z) {
        this.f33716H = z;
    }

    @Override // p168r4.cs0
    /* renamed from: W0 */
    public final synchronized void mo5101W0() {
        C0543w1.m26251k("Destroying WebView!");
        m5039v1();
        C0497k2.f1630i.post(new vs0(this));
    }

    @Override // p168r4.cs0
    /* renamed from: X0 */
    public final synchronized void mo5099X0(BinderC0073n binderC0073n) {
        this.f33735b0 = binderC0073n;
    }

    @Override // p168r4.InterfaceC6064nm
    /* renamed from: Y */
    public final void mo4017Y(C6026mm c6026mm) {
        boolean z;
        synchronized (this) {
            z = c6026mm.f27782j;
            this.f33719K = z;
        }
        m5031y1(z);
    }

    @Override // p168r4.cs0
    /* renamed from: Y0 */
    public final synchronized void mo5098Y0(boolean z) {
        String str;
        boolean z2 = this.f33713E;
        this.f33713E = z;
        m5047s1();
        if (z != z2) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30846L)).booleanValue() || !this.f33709A.m6018g()) {
                fe0 fe0Var = new fe0(this, "");
                if (true != z) {
                    str = "default";
                } else {
                    str = "expanded";
                }
                fe0Var.m11553f(str);
            }
        }
    }

    @Override // p168r4.cs0
    /* renamed from: Z */
    public final synchronized BinderC0073n mo5097Z() {
        return this.f33756y;
    }

    @Override // p235z2.InterfaceC7593l
    /* renamed from: Z0 */
    public final synchronized void mo1004Z0() {
        InterfaceC7593l interfaceC7593l = this.f33747p;
        if (interfaceC7593l != null) {
            interfaceC7593l.mo1004Z0();
        }
    }

    @Override // p168r4.cf1
    /* renamed from: a */
    public final void mo5096a() {
        js0 js0Var = this.f33755x;
        if (js0Var != null) {
            js0Var.mo5096a();
        }
    }

    @Override // p168r4.cs0
    /* renamed from: a0 */
    public final void mo5095a0(boolean z) {
        this.f33755x.m10182g(z);
    }

    @Override // p168r4.cs0
    /* renamed from: a1 */
    public final void mo5094a1(String str, InterfaceC1055p<u50<? super cs0>> interfaceC1055p) {
        js0 js0Var = this.f33755x;
        if (js0Var != null) {
            js0Var.m10195C0(str, interfaceC1055p);
        }
    }

    @Override // p168r4.po0
    /* renamed from: b0 */
    public final void mo5093b0(int i) {
        this.f33733a0 = i;
    }

    @Override // p168r4.cs0
    /* renamed from: b1 */
    public final synchronized boolean mo5092b1() {
        return this.f33716H;
    }

    @Override // p168r4.po0
    /* renamed from: c0 */
    public final synchronized qq0 mo5090c0(String str) {
        Map<String, qq0> map = this.f33743i0;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    @Override // p168r4.cs0
    /* renamed from: c1 */
    public final synchronized void mo5089c1(String str, String str2, String str3) {
        String str4;
        if (!mo5083f0()) {
            String[] strArr = new String[1];
            String str5 = (String) C5592av.m12935c().m8098c(C6225rz.f30838K);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("version", str5);
                jSONObject.put("sdk", "Google Mobile Ads");
                jSONObject.put("sdkVersion", "12.4.51-000");
                str4 = "<script>Object.defineProperty(window,'MRAID_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
            } catch (JSONException e) {
                cm0.m12436g("Unable to build MRAID_ENV", e);
                str4 = null;
            }
            strArr[0] = str4;
            super.loadDataWithBaseURL(str, lt0.m9566a(str2, strArr), "text/html", "UTF-8", null);
            return;
        }
        cm0.m12437f("#004 The webview is destroyed. Ignoring action.");
    }

    @Override // p168r4.po0
    /* renamed from: d */
    public final do0 mo5088d() {
        return null;
    }

    @Override // p168r4.cs0
    /* renamed from: d1 */
    public final synchronized void mo5087d1(BinderC0073n binderC0073n) {
        this.f33756y = binderC0073n;
    }

    @Override // android.webkit.WebView, p168r4.cs0
    public final synchronized void destroy() {
        m5033x1();
        this.f33738d0.m26262c();
        BinderC0073n binderC0073n = this.f33756y;
        if (binderC0073n != null) {
            binderC0073n.m27702a();
            this.f33756y.mo5750m();
            this.f33756y = null;
        }
        this.f33757z = null;
        this.f33755x.m10194H0();
        this.f33723O = null;
        this.f33747p = null;
        setOnClickListener(null);
        setOnTouchListener(null);
        if (this.f33712D) {
            return;
        }
        C7601t.m917z().m10563d(this);
        m5036w1();
        this.f33712D = true;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30992c7)).booleanValue()) {
            C0543w1.m26251k("Initiating WebView self destruct sequence in 3...");
            C0543w1.m26251k("Loading blank page in WebView, 2...");
            m5053p1("about:blank");
            return;
        }
        C0543w1.m26251k("Destroying the WebView immediately...");
        mo5101W0();
    }

    @Override // p168r4.po0
    /* renamed from: e0 */
    public final void mo5086e0(int i) {
    }

    @Override // android.webkit.WebView
    @TargetApi(19)
    public final synchronized void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        if (mo5083f0()) {
            cm0.m12434i("#004 The webview is destroyed. Ignoring action.", null);
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
                return;
            }
            return;
        }
        super.evaluateJavascript(str, valueCallback);
    }

    @Override // p168r4.cs0, p168r4.po0
    /* renamed from: f */
    public final synchronized at0 mo5084f() {
        return this.f33718J;
    }

    @Override // p168r4.cs0
    /* renamed from: f0 */
    public final synchronized boolean mo5083f0() {
        return this.f33712D;
    }

    public final void finalize() {
        try {
            synchronized (this) {
                if (!this.f33712D) {
                    this.f33755x.m10194H0();
                    C7601t.m917z().m10563d(this);
                    m5036w1();
                    m5039v1();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // p168r4.cs0
    /* renamed from: g0 */
    public final void mo5080g0(String str, u50<? super cs0> u50Var) {
        js0 js0Var = this.f33755x;
        if (js0Var != null) {
            js0Var.m10178n0(str, u50Var);
        }
    }

    @Override // p168r4.cs0, p168r4.gt0, p168r4.po0
    /* renamed from: h */
    public final Activity mo5078h() {
        return this.f33732a.m6373a();
    }

    @Override // p168r4.cs0
    /* renamed from: h0 */
    public final synchronized void mo5077h0(y10 y10Var) {
        this.f33722N = y10Var;
    }

    @Override // p168r4.cs0, p168r4.po0
    /* renamed from: i */
    public final C7582a mo5075i() {
        return this.f33748q;
    }

    /* renamed from: i1 */
    public final synchronized void m5074i1(String str) {
        if (!mo5083f0()) {
            loadUrl(str);
        } else {
            cm0.m12437f("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // p168r4.po0
    /* renamed from: j */
    public final d00 mo5073j() {
        return this.f33727S;
    }

    @Override // p168r4.kt0
    /* renamed from: j0 */
    public final void mo5072j0(InterfaceC0548y0 interfaceC0548y0, c12 c12Var, ls1 ls1Var, xt2 xt2Var, String str, String str2, int i) {
        this.f33755x.m10187b0(interfaceC0548y0, c12Var, ls1Var, xt2Var, str, str2, i);
    }

    @TargetApi(19)
    /* renamed from: j1 */
    public final synchronized void m5071j1(String str, ValueCallback<String> valueCallback) {
        if (!mo5083f0()) {
            evaluateJavascript(str, null);
        } else {
            cm0.m12437f("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // p168r4.po0
    /* renamed from: k */
    public final void mo5070k() {
        BinderC0073n mo5097Z = mo5097Z();
        if (mo5097Z != null) {
            mo5097Z.m27705L();
        }
    }

    @Override // p168r4.po0
    /* renamed from: l */
    public final synchronized String mo5067l() {
        return this.f33717I;
    }

    @Override // p168r4.cs0
    /* renamed from: l0 */
    public final synchronized void mo5066l0(boolean z) {
        BinderC0073n binderC0073n = this.f33756y;
        if (binderC0073n != null) {
            binderC0073n.m27695l7(this.f33755x.mo7007e(), z);
        } else {
            this.f33711C = z;
        }
    }

    /* renamed from: l1 */
    public final void m5065l1(Boolean bool) {
        synchronized (this) {
            this.f33715G = bool;
        }
        C7601t.m935h().m9061f(bool);
    }

    @Override // android.webkit.WebView, p168r4.cs0
    public final synchronized void loadData(String str, String str2, String str3) {
        if (!mo5083f0()) {
            super.loadData(str, str2, str3);
        } else {
            cm0.m12437f("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // android.webkit.WebView, p168r4.cs0
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (!mo5083f0()) {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } else {
            cm0.m12437f("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // android.webkit.WebView, p168r4.cs0
    public final synchronized void loadUrl(String str) {
        if (!mo5083f0()) {
            super.loadUrl(str);
        } else {
            cm0.m12437f("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // p168r4.cs0, p168r4.po0
    /* renamed from: m */
    public final e00 mo5064m() {
        return this.f33729U;
    }

    @Override // p168r4.kt0
    /* renamed from: m0 */
    public final void mo5063m0(boolean z, int i, String str, boolean z2) {
        this.f33755x.m10183e0(z, i, str, z2);
    }

    /* renamed from: m1 */
    public final synchronized Boolean m5062m1() {
        return this.f33715G;
    }

    @Override // p168r4.cs0, p168r4.ot0, p168r4.po0
    /* renamed from: n */
    public final im0 mo5061n() {
        return this.f33745k;
    }

    @Override // p168r4.po0
    /* renamed from: n0 */
    public final void mo5060n0(boolean z) {
        this.f33755x.m10184d(false);
    }

    /* renamed from: n1 */
    public final js0 m5059n1() {
        return this.f33755x;
    }

    @Override // p168r4.po0
    /* renamed from: o */
    public final synchronized int mo5058o() {
        return this.f33730V;
    }

    @Override // p168r4.cs0
    /* renamed from: o0 */
    public final /* bridge */ /* synthetic */ st0 mo5057o0() {
        return this.f33755x;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final synchronized void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!mo5083f0()) {
            this.f33738d0.m26261d();
        }
        boolean z = this.f33719K;
        js0 js0Var = this.f33755x;
        if (js0Var != null && js0Var.m10196B()) {
            if (!this.f33720L) {
                this.f33755x.m10192N();
                this.f33755x.m10191Q();
                this.f33720L = true;
            }
            m5076h1();
            z = true;
        }
        m5031y1(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        js0 js0Var;
        synchronized (this) {
            if (!mo5083f0()) {
                this.f33738d0.m26260e();
            }
            super.onDetachedFromWindow();
            if (this.f33720L && (js0Var = this.f33755x) != null && js0Var.m10196B() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.f33755x.m10192N();
                this.f33755x.m10191Q();
                this.f33720L = false;
            }
        }
        m5031y1(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x01c7 A[Catch: all -> 0x01ed, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:8:0x000d, B:10:0x0013, B:12:0x0017, B:15:0x0021, B:17:0x0029, B:20:0x002e, B:22:0x0036, B:24:0x0048, B:27:0x004d, B:29:0x0054, B:33:0x005e, B:36:0x0063, B:39:0x0076, B:45:0x0088, B:43:0x0082, B:48:0x0095, B:50:0x009d, B:52:0x00af, B:55:0x00b6, B:57:0x00d2, B:59:0x00db, B:58:0x00d7, B:62:0x00e0, B:65:0x00e5, B:67:0x00ed, B:70:0x00f8, B:79:0x011e, B:81:0x0125, B:86:0x012d, B:88:0x013f, B:90:0x014d, B:99:0x0162, B:101:0x01af, B:102:0x01b3, B:104:0x01ba, B:109:0x01c7, B:111:0x01cd, B:112:0x01d0, B:114:0x01d4, B:115:0x01dd, B:118:0x01e8), top: B:124:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x013f A[Catch: all -> 0x01ed, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:8:0x000d, B:10:0x0013, B:12:0x0017, B:15:0x0021, B:17:0x0029, B:20:0x002e, B:22:0x0036, B:24:0x0048, B:27:0x004d, B:29:0x0054, B:33:0x005e, B:36:0x0063, B:39:0x0076, B:45:0x0088, B:43:0x0082, B:48:0x0095, B:50:0x009d, B:52:0x00af, B:55:0x00b6, B:57:0x00d2, B:59:0x00db, B:58:0x00d7, B:62:0x00e0, B:65:0x00e5, B:67:0x00ed, B:70:0x00f8, B:79:0x011e, B:81:0x0125, B:86:0x012d, B:88:0x013f, B:90:0x014d, B:99:0x0162, B:101:0x01af, B:102:0x01b3, B:104:0x01ba, B:109:0x01c7, B:111:0x01cd, B:112:0x01d0, B:114:0x01d4, B:115:0x01dd, B:118:0x01e8), top: B:124:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0162 A[Catch: all -> 0x01ed, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:8:0x000d, B:10:0x0013, B:12:0x0017, B:15:0x0021, B:17:0x0029, B:20:0x002e, B:22:0x0036, B:24:0x0048, B:27:0x004d, B:29:0x0054, B:33:0x005e, B:36:0x0063, B:39:0x0076, B:45:0x0088, B:43:0x0082, B:48:0x0095, B:50:0x009d, B:52:0x00af, B:55:0x00b6, B:57:0x00d2, B:59:0x00db, B:58:0x00d7, B:62:0x00e0, B:65:0x00e5, B:67:0x00ed, B:70:0x00f8, B:79:0x011e, B:81:0x0125, B:86:0x012d, B:88:0x013f, B:90:0x014d, B:99:0x0162, B:101:0x01af, B:102:0x01b3, B:104:0x01ba, B:109:0x01c7, B:111:0x01cd, B:112:0x01d0, B:114:0x01d4, B:115:0x01dd, B:118:0x01e8), top: B:124:0x0001 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    @android.annotation.SuppressLint({"DrawAllocation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void onMeasure(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.xs0.onMeasure(int, int):void");
    }

    @Override // p168r4.po0
    /* renamed from: p */
    public final synchronized String mo5055p() {
        so2 so2Var = this.f33752u;
        if (so2Var != null) {
            return so2Var.f31426b;
        }
        return null;
    }

    @Override // p168r4.cs0
    /* renamed from: p0 */
    public final synchronized void mo5054p0(boolean z) {
        BinderC0073n binderC0073n;
        int i = this.f33724P + (true != z ? -1 : 1);
        this.f33724P = i;
        if (i > 0 || (binderC0073n = this.f33756y) == null) {
            return;
        }
        binderC0073n.m27704N();
    }

    /* renamed from: p1 */
    public final synchronized void m5053p1(String str) {
        try {
            super.loadUrl("about:blank");
        } catch (Throwable th) {
            C7601t.m935h().m9056k(th, "AdWebViewImpl.loadUrlUnsafe");
            cm0.m12436g("Could not call loadUrl in destroy(). ", th);
        }
    }

    @Override // p168r4.s80
    /* renamed from: q */
    public final void mo5052q(String str) {
        throw null;
    }

    /* renamed from: q1 */
    public final synchronized void m5050q1() {
        Boolean m9060g = C7601t.m935h().m9060g();
        this.f33715G = m9060g;
        if (m9060g == null) {
            try {
                evaluateJavascript("(function(){})()", null);
                m5065l1(Boolean.TRUE);
            } catch (IllegalStateException unused) {
                m5065l1(Boolean.FALSE);
            }
        }
    }

    @Override // p168r4.cs0, p168r4.mt0
    /* renamed from: r */
    public final synchronized vt0 mo5049r() {
        return this.f33709A;
    }

    /* renamed from: s1 */
    public final synchronized void m5047s1() {
        no2 no2Var = this.f33751t;
        if (no2Var != null && no2Var.f28423j0) {
            cm0.m12442a("Disabling hardware acceleration on an overlay.");
            m5044t1();
            return;
        }
        if (!this.f33713E && !this.f33709A.m6018g()) {
            if (Build.VERSION.SDK_INT < 18) {
                cm0.m12442a("Disabling hardware acceleration on an AdView.");
                m5044t1();
                return;
            }
            cm0.m12442a("Enabling hardware acceleration on an AdView.");
            m5042u1();
            return;
        }
        cm0.m12442a("Enabling hardware acceleration on an overlay.");
        m5042u1();
    }

    /* renamed from: t1 */
    public final synchronized void m5044t1() {
        if (!this.f33714F) {
            setLayerType(1, null);
        }
        this.f33714F = true;
    }

    @Override // p168r4.cs0
    /* renamed from: u0 */
    public final synchronized void mo5043u0(vt0 vt0Var) {
        this.f33709A = vt0Var;
        requestLayout();
    }

    /* renamed from: u1 */
    public final synchronized void m5042u1() {
        if (this.f33714F) {
            setLayerType(0, null);
        }
        this.f33714F = false;
    }

    @Override // p168r4.po0
    /* renamed from: v */
    public final int mo5041v() {
        return getMeasuredWidth();
    }

    @Override // p168r4.cs0
    /* renamed from: v0 */
    public final void mo5040v0(String str, u50<? super cs0> u50Var) {
        js0 js0Var = this.f33755x;
        if (js0Var != null) {
            js0Var.m10197A0(str, u50Var);
        }
    }

    /* renamed from: v1 */
    public final synchronized void m5039v1() {
        if (this.f33736c0) {
            return;
        }
        this.f33736c0 = true;
        C7601t.m935h().m9053n();
    }

    @Override // p168r4.cs0
    /* renamed from: w */
    public final synchronized void mo5038w(int i) {
        BinderC0073n binderC0073n = this.f33756y;
        if (binderC0073n != null) {
            binderC0073n.m27693n7(i);
        }
    }

    @Override // p168r4.cs0
    /* renamed from: w0 */
    public final void mo5037w0() {
        throw null;
    }

    /* renamed from: w1 */
    public final synchronized void m5036w1() {
        Map<String, qq0> map = this.f33743i0;
        if (map != null) {
            for (qq0 qq0Var : map.values()) {
                qq0Var.release();
            }
        }
        this.f33743i0 = null;
    }

    @Override // p168r4.cs0
    /* renamed from: x */
    public final synchronized BinderC0073n mo5035x() {
        return this.f33735b0;
    }

    @Override // p168r4.cs0
    /* renamed from: y0 */
    public final synchronized void mo5032y0(InterfaceC3512a interfaceC3512a) {
        this.f33757z = interfaceC3512a;
    }

    @Override // p168r4.po0
    /* renamed from: z */
    public final synchronized void mo5030z() {
        y10 y10Var = this.f33722N;
        if (y10Var != null) {
            y10Var.zza();
        }
    }

    @Override // p168r4.cs0
    /* renamed from: z0 */
    public final synchronized void mo5029z0(InterfaceC5622bo interfaceC5622bo) {
        this.f33723O = interfaceC5622bo;
    }

    @Override // p168r4.cs0
    /* renamed from: W */
    public final h83<String> mo5102W() {
        r00 r00Var = this.f33737d;
        if (r00Var == null) {
            return y73.m4814a(null);
        }
        return r00Var.m7632b();
    }

    @Override // p168r4.e80
    /* renamed from: c */
    public final void mo5091c(String str, JSONObject jSONObject) {
        String str2;
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("',");
        sb.append(jSONObject2);
        sb.append(");");
        String sb2 = sb.toString();
        if (sb2.length() != 0) {
            str2 = "Dispatching AFMA event: ".concat(sb2);
        } else {
            str2 = new String("Dispatching AFMA event: ");
        }
        cm0.m12442a(str2);
        m5068k1(sb.toString());
    }

    @Override // p168r4.po0
    /* renamed from: e1 */
    public final void mo5085e1(boolean z, long j) {
        String str;
        HashMap hashMap = new HashMap(2);
        if (true != z) {
            str = "0";
        } else {
            str = Config.SITE_API_VERSION;
        }
        hashMap.put("success", str);
        hashMap.put("duration", Long.toString(j));
        mo5125H0("onCacheAccessComplete", hashMap);
    }

    /* renamed from: h1 */
    public final boolean m5076h1() {
        int i;
        int i2;
        boolean z = false;
        if (!this.f33755x.mo7007e() && !this.f33755x.m10196B()) {
            return false;
        }
        C6479yu.m4568a();
        DisplayMetrics displayMetrics = this.f33749r;
        int m6113o = vl0.m6113o(displayMetrics, displayMetrics.widthPixels);
        C6479yu.m4568a();
        DisplayMetrics displayMetrics2 = this.f33749r;
        int m6113o2 = vl0.m6113o(displayMetrics2, displayMetrics2.heightPixels);
        Activity m6373a = this.f33732a.m6373a();
        if (m6373a != null && m6373a.getWindow() != null) {
            C7601t.m939d();
            int[] m26302t = C0497k2.m26302t(m6373a);
            C6479yu.m4568a();
            int m6113o3 = vl0.m6113o(this.f33749r, m26302t[0]);
            C6479yu.m4568a();
            i2 = vl0.m6113o(this.f33749r, m26302t[1]);
            i = m6113o3;
        } else {
            i = m6113o;
            i2 = m6113o2;
        }
        int i3 = this.f33740f0;
        if (i3 == m6113o && this.f33739e0 == m6113o2 && this.f33741g0 == i && this.f33742h0 == i2) {
            return false;
        }
        z = (i3 == m6113o && this.f33739e0 == m6113o2) ? true : true;
        this.f33740f0 = m6113o;
        this.f33739e0 = m6113o2;
        this.f33741g0 = i;
        this.f33742h0 = i2;
        new fe0(this, "").m11552g(m6113o, m6113o2, i, i2, this.f33749r.density, this.f33744j0.getDefaultDisplay().getRotation());
        return z;
    }

    @Override // p168r4.cs0
    /* renamed from: k0 */
    public final void mo5069k0() {
        if (this.f33726R == null) {
            C6484yz.m4506a(this.f33729U.m11891c(), this.f33727S, "aes2");
            this.f33729U.m11891c();
            d00 m11022f = h00.m11022f();
            this.f33726R = m11022f;
            this.f33729U.m11893a("native:view_show", m11022f);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f33745k.f25171a);
        mo5125H0("onshow", hashMap);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            C7601t.m939d();
            C0497k2.m26306p(getContext(), intent);
        } catch (ActivityNotFoundException unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length());
            sb.append("Couldn't find an Activity to view url/mimetype: ");
            sb.append(str);
            sb.append(" / ");
            sb.append(str4);
            cm0.m12442a(sb.toString());
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue <= 0.0f || canScrollVertically(-1)) {
                if (axisValue >= 0.0f || canScrollVertically(1)) {
                    if (axisValue2 <= 0.0f || canScrollHorizontally(-1)) {
                        if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                            return false;
                        }
                    } else {
                        return false;
                    }
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f33755x.m10196B() && !this.f33755x.m10193L()) {
            synchronized (this) {
                b20 b20Var = this.f33721M;
                if (b20Var != null) {
                    b20Var.mo9611a(motionEvent);
                }
            }
        } else {
            C6300u c6300u = this.f33734b;
            if (c6300u != null) {
                c6300u.m6681d(motionEvent);
            }
            r00 r00Var = this.f33737d;
            if (r00Var != null) {
                r00Var.m7633a(motionEvent);
            }
        }
        if (mo5083f0()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // p168r4.cs0
    /* renamed from: q0 */
    public final void mo5051q0(Context context) {
        this.f33732a.setBaseContext(context);
        this.f33738d0.m26264a(this.f33732a.m6373a());
    }

    /* renamed from: r1 */
    public final void m5048r1() {
        C6484yz.m4506a(this.f33729U.m11891c(), this.f33727S, "aeh2");
    }

    @Override // p168r4.cs0
    /* renamed from: t */
    public final void mo5046t() {
        if (this.f33728T == null) {
            this.f33729U.m11891c();
            d00 m11022f = h00.m11022f();
            this.f33728T = m11022f;
            this.f33729U.m11893a("native:view_load", m11022f);
        }
    }

    @Override // p168r4.cs0
    /* renamed from: x0 */
    public final void mo5034x0(int i) {
        if (i == 0) {
            C6484yz.m4506a(this.f33729U.m11891c(), this.f33727S, "aebb2");
        }
        m5048r1();
        this.f33729U.m11891c();
        this.f33729U.m11891c().m11024d("close_type", String.valueOf(i));
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.f33745k.f25171a);
        mo5125H0("onhide", hashMap);
    }

    /* renamed from: x1 */
    public final void m5033x1() {
        e00 e00Var = this.f33729U;
        if (e00Var == null) {
            return;
        }
        h00 m11891c = e00Var.m11891c();
        C6410wz m9062e = C7601t.m935h().m9062e();
        if (m9062e != null) {
            m9062e.m5541b(m11891c);
        }
    }

    /* renamed from: y1 */
    public final void m5031y1(boolean z) {
        String str;
        HashMap hashMap = new HashMap();
        if (true != z) {
            str = "0";
        } else {
            str = Config.SITE_API_VERSION;
        }
        hashMap.put("isVisible", str);
        mo5125H0("onAdVisibilityChanged", hashMap);
    }

    @Override // p168r4.e80
    /* renamed from: H0 */
    public final void mo5125H0(String str, Map<String, ?> map) {
        try {
            mo5091c(str, C7601t.m939d().m26338Q(map));
        } catch (JSONException unused) {
            cm0.m12437f("Could not convert parameters to JSON.");
        }
    }

    @Override // p168r4.s80
    /* renamed from: K0 */
    public final void mo5120K0(String str, JSONObject jSONObject) {
        mo5081g(str, jSONObject.toString());
    }

    @Override // p168r4.cs0
    /* renamed from: X */
    public final void mo5100X() {
        m5048r1();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f33745k.f25171a);
        mo5125H0("onhide", hashMap);
    }

    @Override // p168r4.s80
    /* renamed from: g */
    public final void mo5081g(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("(");
        sb.append(str2);
        sb.append(");");
        m5068k1(sb.toString());
    }

    /* renamed from: k1 */
    public final void m5068k1(String str) {
        String str2;
        String str3;
        if (C1054o.m24735f()) {
            if (m5062m1() == null) {
                m5050q1();
            }
            if (m5062m1().booleanValue()) {
                m5071j1(str, null);
                return;
            }
            if (str.length() != 0) {
                str3 = "javascript:".concat(str);
            } else {
                str3 = new String("javascript:");
            }
            m5074i1(str3);
            return;
        }
        if (str.length() != 0) {
            str2 = "javascript:".concat(str);
        } else {
            str2 = new String("javascript:");
        }
        m5074i1(str2);
    }

    @Override // android.webkit.WebView, android.view.View
    @TargetApi(21)
    public final void onDraw(Canvas canvas) {
        if (mo5083f0()) {
            return;
        }
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean m5076h1 = m5076h1();
        BinderC0073n mo5097Z = mo5097Z();
        if (mo5097Z != null && m5076h1) {
            mo5097Z.m27699h7();
        }
    }

    @Override // android.webkit.WebView, p168r4.cs0
    public final void onPause() {
        if (mo5083f0()) {
            return;
        }
        try {
            super.onPause();
        } catch (Exception e) {
            cm0.m12439d("Could not pause webview.", e);
        }
    }

    @Override // android.webkit.WebView, p168r4.cs0
    public final void onResume() {
        if (mo5083f0()) {
            return;
        }
        try {
            super.onResume();
        } catch (Exception e) {
            cm0.m12439d("Could not resume webview.", e);
        }
    }

    @Override // android.webkit.WebView, p168r4.cs0
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof js0) {
            this.f33755x = (js0) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (mo5083f0()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            cm0.m12439d("Could not stop loading webview.", e);
        }
    }

    @Override // p168r4.cs0
    /* renamed from: t0 */
    public final boolean mo5045t0(final boolean z, final int i) {
        destroy();
        this.f33746k0.m10582b(new InterfaceC5845hp(z, i) { // from class: r4.ts0

            /* renamed from: a */
            public final boolean f31977a;

            /* renamed from: b */
            public final int f31978b;

            {
                this.f31977a = z;
                this.f31978b = i;
            }

            @Override // p168r4.InterfaceC5845hp
            /* renamed from: a */
            public final void mo6727a(C6438xq c6438xq) {
                boolean z2 = this.f31977a;
                int i2 = this.f31978b;
                int i3 = xs0.f33708l0;
                C5738et m11371D = C5775ft.m11371D();
                if (m11371D.m11690v() != z2) {
                    m11371D.m11689x(z2);
                }
                m11371D.m11688z(i2);
                c6438xq.m5174J(m11371D.m9614o());
            }
        });
        this.f33746k0.m10581c(10003);
        return true;
    }
}
