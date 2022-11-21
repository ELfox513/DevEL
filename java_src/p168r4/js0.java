package p168r4;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.TrafficStats;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.badlogic.gdx.net.HttpResponseHeader;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import p004a3.BinderC0073n;
import p004a3.C0064e;
import p004a3.C0074o;
import p004a3.InterfaceC0076q;
import p004a3.InterfaceC0083x;
import p016b3.C0497k2;
import p016b3.C0543w1;
import p016b3.InterfaceC0548y0;
import p026c4.InterfaceC1055p;
import p038d0.C3218s0;
import p235z2.C7583b;
import p235z2.C7601t;
/* renamed from: r4.js0 */
/* loaded from: classes2.dex */
public class js0 extends WebViewClient implements st0 {

    /* renamed from: N */
    public static final /* synthetic */ int f26108N = 0;

    /* renamed from: A */
    public boolean f26109A;

    /* renamed from: B */
    public InterfaceC0083x f26110B;

    /* renamed from: C */
    public ee0 f26111C;

    /* renamed from: D */
    public C7583b f26112D;

    /* renamed from: E */
    public zd0 f26113E;

    /* renamed from: F */
    public ej0 f26114F;

    /* renamed from: G */
    public pu2 f26115G;

    /* renamed from: H */
    public boolean f26116H;

    /* renamed from: I */
    public boolean f26117I;

    /* renamed from: J */
    public int f26118J;

    /* renamed from: K */
    public boolean f26119K;

    /* renamed from: L */
    public final HashSet<String> f26120L;

    /* renamed from: M */
    public View.OnAttachStateChangeListener f26121M;

    /* renamed from: a */
    public final cs0 f26122a;

    /* renamed from: b */
    public final C5882ip f26123b;

    /* renamed from: d */
    public final HashMap<String, List<u50<? super cs0>>> f26124d;

    /* renamed from: k */
    public final Object f26125k;

    /* renamed from: p */
    public InterfaceC5812gt f26126p;

    /* renamed from: q */
    public InterfaceC0076q f26127q;

    /* renamed from: r */
    public qt0 f26128r;

    /* renamed from: s */
    public rt0 f26129s;

    /* renamed from: t */
    public t40 f26130t;

    /* renamed from: u */
    public v40 f26131u;

    /* renamed from: v */
    public cf1 f26132v;

    /* renamed from: w */
    public boolean f26133w;

    /* renamed from: x */
    public boolean f26134x;

    /* renamed from: y */
    public boolean f26135y;

    /* renamed from: z */
    public boolean f26136z;

    @Override // p168r4.InterfaceC5812gt
    /* renamed from: F0 */
    public final void mo3609F0() {
        InterfaceC5812gt interfaceC5812gt = this.f26126p;
        if (interfaceC5812gt != null) {
            interfaceC5812gt.mo3609F0();
        }
    }

    @Override // p168r4.st0
    /* renamed from: N0 */
    public final void mo7011N0(int i, int i2) {
        zd0 zd0Var = this.f26113E;
        if (zd0Var != null) {
            zd0Var.m4294l(i, i2);
        }
    }

    @Override // p168r4.st0
    /* renamed from: V */
    public final void mo7010V(rt0 rt0Var) {
        this.f26129s = rt0Var;
    }

    @Override // p168r4.cf1
    /* renamed from: a */
    public final void mo5096a() {
        cf1 cf1Var = this.f26132v;
        if (cf1Var != null) {
            cf1Var.mo5096a();
        }
    }

    @Override // p168r4.st0
    /* renamed from: b */
    public final C7583b mo7009b() {
        return this.f26112D;
    }

    /* renamed from: b0 */
    public final void m10187b0(InterfaceC0548y0 interfaceC0548y0, c12 c12Var, ls1 ls1Var, xt2 xt2Var, String str, String str2, int i) {
        cs0 cs0Var = this.f26122a;
        m10179m0(new AdOverlayInfoParcel(cs0Var, cs0Var.mo5061n(), interfaceC0548y0, c12Var, ls1Var, xt2Var, str, str2, i));
    }

    /* renamed from: d */
    public final void m10184d(boolean z) {
        this.f26133w = false;
    }

    @Override // p168r4.st0
    /* renamed from: d0 */
    public final void mo7008d0(InterfaceC5812gt interfaceC5812gt, t40 t40Var, InterfaceC0076q interfaceC0076q, v40 v40Var, InterfaceC0083x interfaceC0083x, boolean z, x50 x50Var, C7583b c7583b, ge0 ge0Var, ej0 ej0Var, c12 c12Var, pu2 pu2Var, ls1 ls1Var, xt2 xt2Var, v50 v50Var, cf1 cf1Var) {
        C7583b c7583b2 = c7583b == null ? new C7583b(this.f26122a.getContext(), ej0Var, null) : c7583b;
        this.f26113E = new zd0(this.f26122a, ge0Var);
        this.f26114F = ej0Var;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30775C0)).booleanValue()) {
            m10178n0("/adMetadata", new s40(t40Var));
        }
        if (v40Var != null) {
            m10178n0("/appEvent", new u40(v40Var));
        }
        m10178n0("/backButton", t50.f31698j);
        m10178n0("/refresh", t50.f31699k);
        m10178n0("/canOpenApp", t50.f31690b);
        m10178n0("/canOpenURLs", t50.f31689a);
        m10178n0("/canOpenIntents", t50.f31691c);
        m10178n0("/close", t50.f31692d);
        m10178n0("/customClose", t50.f31693e);
        m10178n0("/instrument", t50.f31702n);
        m10178n0("/delayPageLoaded", t50.f31704p);
        m10178n0("/delayPageClosed", t50.f31705q);
        m10178n0("/getLocationInfo", t50.f31706r);
        m10178n0("/log", t50.f31695g);
        m10178n0("/mraid", new b60(c7583b2, this.f26113E, ge0Var));
        ee0 ee0Var = this.f26111C;
        if (ee0Var != null) {
            m10178n0("/mraidLoaded", ee0Var);
        }
        m10178n0("/open", new g60(c7583b2, this.f26113E, c12Var, ls1Var, xt2Var));
        m10178n0("/precache", new rq0());
        m10178n0("/touch", t50.f31697i);
        m10178n0("/video", t50.f31700l);
        m10178n0("/videoMeta", t50.f31701m);
        if (c12Var != null && pu2Var != null) {
            m10178n0("/click", rp2.m7399a(c12Var, pu2Var, cf1Var));
            m10178n0("/httpTrack", rp2.m7398b(c12Var, pu2Var));
        } else {
            m10178n0("/click", t50.m6909b(cf1Var));
            m10178n0("/httpTrack", t50.f31694f);
        }
        if (C7601t.m942a().m10622g(this.f26122a.getContext())) {
            m10178n0("/logScionEvent", new a60(this.f26122a.getContext()));
        }
        if (x50Var != null) {
            m10178n0("/setInterstitialProperties", new w50(x50Var, null));
        }
        if (v50Var != null) {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31096p6)).booleanValue()) {
                m10178n0("/inspectorNetworkExtras", v50Var);
            }
        }
        this.f26126p = interfaceC5812gt;
        this.f26127q = interfaceC0076q;
        this.f26130t = t40Var;
        this.f26131u = v40Var;
        this.f26110B = interfaceC0083x;
        this.f26112D = c7583b2;
        this.f26132v = cf1Var;
        this.f26133w = z;
        this.f26115G = pu2Var;
    }

    /* renamed from: g */
    public final void m10182g(boolean z) {
        this.f26119K = z;
    }

    @Override // p168r4.st0
    /* renamed from: k */
    public final void mo7003k() {
        this.f26118J--;
        m10189U();
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.f26134x = true;
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.f26122a.mo5045t0(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    /* renamed from: p */
    public final /* synthetic */ void m10176p(View view, ej0 ej0Var, int i) {
        m10175q(view, ej0Var, i - 1);
    }

    /* renamed from: s */
    public final void m10174s() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f26121M;
        if (onAttachStateChangeListener == null) {
            return;
        }
        ((View) this.f26122a).removeOnAttachStateChangeListener(onAttachStateChangeListener);
    }

    @Override // p168r4.st0
    /* renamed from: s0 */
    public final void mo7000s0(qt0 qt0Var) {
        this.f26128r = qt0Var;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return m10186c(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    public js0(cs0 cs0Var, C5882ip c5882ip, boolean z) {
        ee0 ee0Var = new ee0(cs0Var, cs0Var.mo5131D0(), new C5596az(cs0Var.getContext()));
        this.f26124d = new HashMap<>();
        this.f26125k = new Object();
        this.f26123b = c5882ip;
        this.f26122a = cs0Var;
        this.f26135y = z;
        this.f26111C = ee0Var;
        this.f26113E = null;
        this.f26120L = new HashSet<>(Arrays.asList(((String) C5592av.m12935c().m8098c(C6225rz.f30922U3)).split(",")));
    }

    /* renamed from: A */
    public static final boolean m10198A(boolean z, cs0 cs0Var) {
        if (z && !cs0Var.mo5049r().m6018g() && !cs0Var.mo5113P().equals("interstitial_mb")) {
            return true;
        }
        return false;
    }

    /* renamed from: u */
    public static WebResourceResponse m10173u() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31138v0)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    /* renamed from: A0 */
    public final void m10197A0(String str, u50<? super cs0> u50Var) {
        synchronized (this.f26125k) {
            List<u50<? super cs0>> list = this.f26124d.get(str);
            if (list == null) {
                return;
            }
            list.remove(u50Var);
        }
    }

    /* renamed from: B */
    public final boolean m10196B() {
        boolean z;
        synchronized (this.f26125k) {
            z = this.f26136z;
        }
        return z;
    }

    /* renamed from: C0 */
    public final void m10195C0(String str, InterfaceC1055p<u50<? super cs0>> interfaceC1055p) {
        synchronized (this.f26125k) {
            List<u50<? super cs0>> list = this.f26124d.get(str);
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (u50<? super cs0> u50Var : list) {
                if (interfaceC1055p.apply(u50Var)) {
                    arrayList.add(u50Var);
                }
            }
            list.removeAll(arrayList);
        }
    }

    /* renamed from: H0 */
    public final void m10194H0() {
        ej0 ej0Var = this.f26114F;
        if (ej0Var != null) {
            ej0Var.mo4693g();
            this.f26114F = null;
        }
        m10174s();
        synchronized (this.f26125k) {
            this.f26124d.clear();
            this.f26126p = null;
            this.f26127q = null;
            this.f26128r = null;
            this.f26129s = null;
            this.f26130t = null;
            this.f26131u = null;
            this.f26133w = false;
            this.f26135y = false;
            this.f26136z = false;
            this.f26110B = null;
            this.f26112D = null;
            this.f26111C = null;
            zd0 zd0Var = this.f26113E;
            if (zd0Var != null) {
                zd0Var.m4297i(true);
                this.f26113E = null;
            }
            this.f26115G = null;
        }
    }

    @Override // p168r4.st0
    /* renamed from: J0 */
    public final void mo7012J0(int i, int i2, boolean z) {
        ee0 ee0Var = this.f26111C;
        if (ee0Var != null) {
            ee0Var.m11809h(i, i2);
        }
        zd0 zd0Var = this.f26113E;
        if (zd0Var != null) {
            zd0Var.m4296j(i, i2, false);
        }
    }

    /* renamed from: L */
    public final boolean m10193L() {
        boolean z;
        synchronized (this.f26125k) {
            z = this.f26109A;
        }
        return z;
    }

    /* renamed from: N */
    public final ViewTreeObserver.OnGlobalLayoutListener m10192N() {
        synchronized (this.f26125k) {
        }
        return null;
    }

    /* renamed from: Q */
    public final ViewTreeObserver.OnScrollChangedListener m10191Q() {
        synchronized (this.f26125k) {
        }
        return null;
    }

    /* renamed from: U */
    public final void m10189U() {
        if (this.f26128r != null && ((this.f26116H && this.f26118J <= 0) || this.f26117I || this.f26134x)) {
            boolean z = true;
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue() && this.f26122a.mo5064m() != null) {
                C6484yz.m4506a(this.f26122a.mo5064m().m11891c(), this.f26122a.mo5073j(), "awfllc");
            }
            this.f26128r.mo5285R((this.f26117I || this.f26134x) ? false : false);
            this.f26128r = null;
        }
        this.f26122a.mo5046t();
    }

    /* renamed from: Y */
    public final void m10188Y(C0064e c0064e, boolean z) {
        InterfaceC5812gt interfaceC5812gt;
        InterfaceC0076q interfaceC0076q;
        cf1 cf1Var;
        boolean mo5106T = this.f26122a.mo5106T();
        boolean m10198A = m10198A(mo5106T, this.f26122a);
        boolean z2 = true;
        if (!m10198A && z) {
            z2 = false;
        }
        if (m10198A) {
            interfaceC5812gt = null;
        } else {
            interfaceC5812gt = this.f26126p;
        }
        if (mo5106T) {
            interfaceC0076q = null;
        } else {
            interfaceC0076q = this.f26127q;
        }
        InterfaceC0083x interfaceC0083x = this.f26110B;
        im0 mo5061n = this.f26122a.mo5061n();
        cs0 cs0Var = this.f26122a;
        if (z2) {
            cf1Var = null;
        } else {
            cf1Var = this.f26132v;
        }
        m10179m0(new AdOverlayInfoParcel(c0064e, interfaceC5812gt, interfaceC0076q, interfaceC0083x, mo5061n, cs0Var, cf1Var));
    }

    /* renamed from: c */
    public final WebResourceResponse m10186c(String str, Map<String, String> map) {
        C6177qo m8240f;
        try {
            if (g10.f23822a.m6673e().booleanValue() && this.f26115G != null && "oda".equals(Uri.parse(str).getScheme())) {
                this.f26115G.m8184b(str);
                return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
            }
            String m10015a = kk0.m10015a(str, this.f26122a.getContext(), this.f26119K);
            if (!m10015a.equals(str)) {
                return m10172v(m10015a, map);
            }
            C6288to m6775X0 = C6288to.m6775X0(Uri.parse(str));
            if (m6775X0 != null && (m8240f = C7601t.m933j().m8240f(m6775X0)) != null && m8240f.zza()) {
                return new WebResourceResponse("", "", m8240f.m7771X0());
            }
            if (bm0.m12756j() && c10.f21304b.m6673e().booleanValue()) {
                return m10172v(str, map);
            }
            return null;
        } catch (Exception | NoClassDefFoundError e) {
            C7601t.m935h().m9056k(e, "AdWebViewClient.interceptRequest");
            return m10173u();
        }
    }

    /* renamed from: c0 */
    public final void m10185c0(boolean z, int i, boolean z2) {
        InterfaceC5812gt interfaceC5812gt;
        cf1 cf1Var;
        boolean m10198A = m10198A(this.f26122a.mo5106T(), this.f26122a);
        boolean z3 = true;
        if (!m10198A && z2) {
            z3 = false;
        }
        if (m10198A) {
            interfaceC5812gt = null;
        } else {
            interfaceC5812gt = this.f26126p;
        }
        InterfaceC0076q interfaceC0076q = this.f26127q;
        InterfaceC0083x interfaceC0083x = this.f26110B;
        cs0 cs0Var = this.f26122a;
        im0 mo5061n = cs0Var.mo5061n();
        if (z3) {
            cf1Var = null;
        } else {
            cf1Var = this.f26132v;
        }
        m10179m0(new AdOverlayInfoParcel(interfaceC5812gt, interfaceC0076q, interfaceC0083x, cs0Var, z, i, mo5061n, cf1Var));
    }

    @Override // p168r4.st0
    /* renamed from: e */
    public final boolean mo7007e() {
        boolean z;
        synchronized (this.f26125k) {
            z = this.f26135y;
        }
        return z;
    }

    /* renamed from: e0 */
    public final void m10183e0(boolean z, int i, String str, boolean z2) {
        InterfaceC5812gt interfaceC5812gt;
        is0 is0Var;
        cf1 cf1Var;
        boolean mo5106T = this.f26122a.mo5106T();
        boolean m10198A = m10198A(mo5106T, this.f26122a);
        boolean z3 = true;
        if (!m10198A && z2) {
            z3 = false;
        }
        if (m10198A) {
            interfaceC5812gt = null;
        } else {
            interfaceC5812gt = this.f26126p;
        }
        if (mo5106T) {
            is0Var = null;
        } else {
            is0Var = new is0(this.f26122a, this.f26127q);
        }
        t40 t40Var = this.f26130t;
        v40 v40Var = this.f26131u;
        InterfaceC0083x interfaceC0083x = this.f26110B;
        cs0 cs0Var = this.f26122a;
        im0 mo5061n = cs0Var.mo5061n();
        if (z3) {
            cf1Var = null;
        } else {
            cf1Var = this.f26132v;
        }
        m10179m0(new AdOverlayInfoParcel(interfaceC5812gt, is0Var, t40Var, v40Var, interfaceC0083x, cs0Var, z, i, str, mo5061n, cf1Var));
    }

    @Override // p168r4.st0
    /* renamed from: h */
    public final void mo7006h() {
        ej0 ej0Var = this.f26114F;
        if (ej0Var != null) {
            WebView mo5122J = this.f26122a.mo5122J();
            if (C3218s0.m19330v(mo5122J)) {
                m10175q(mo5122J, ej0Var, 10);
                return;
            }
            m10174s();
            gs0 gs0Var = new gs0(this, ej0Var);
            this.f26121M = gs0Var;
            ((View) this.f26122a).addOnAttachStateChangeListener(gs0Var);
        }
    }

    @Override // p168r4.st0
    /* renamed from: i */
    public final void mo7005i() {
        synchronized (this.f26125k) {
        }
        this.f26118J++;
        m10189U();
    }

    @Override // p168r4.st0
    /* renamed from: i0 */
    public final void mo7004i0(boolean z) {
        synchronized (this.f26125k) {
            this.f26136z = true;
        }
    }

    /* renamed from: j0 */
    public final void m10180j0(boolean z, int i, String str, String str2, boolean z2) {
        InterfaceC5812gt interfaceC5812gt;
        is0 is0Var;
        cf1 cf1Var;
        boolean mo5106T = this.f26122a.mo5106T();
        boolean m10198A = m10198A(mo5106T, this.f26122a);
        boolean z3 = true;
        if (!m10198A && z2) {
            z3 = false;
        }
        if (m10198A) {
            interfaceC5812gt = null;
        } else {
            interfaceC5812gt = this.f26126p;
        }
        if (mo5106T) {
            is0Var = null;
        } else {
            is0Var = new is0(this.f26122a, this.f26127q);
        }
        t40 t40Var = this.f26130t;
        v40 v40Var = this.f26131u;
        InterfaceC0083x interfaceC0083x = this.f26110B;
        cs0 cs0Var = this.f26122a;
        im0 mo5061n = cs0Var.mo5061n();
        if (z3) {
            cf1Var = null;
        } else {
            cf1Var = this.f26132v;
        }
        m10179m0(new AdOverlayInfoParcel(interfaceC5812gt, is0Var, t40Var, v40Var, interfaceC0083x, cs0Var, z, i, str, str2, mo5061n, cf1Var));
    }

    @Override // p168r4.st0
    /* renamed from: l */
    public final void mo7002l() {
        C5882ip c5882ip = this.f26123b;
        if (c5882ip != null) {
            c5882ip.m10581c(10005);
        }
        this.f26117I = true;
        m10189U();
        this.f26122a.destroy();
    }

    /* renamed from: m0 */
    public final void m10179m0(AdOverlayInfoParcel adOverlayInfoParcel) {
        boolean z;
        C0064e c0064e;
        zd0 zd0Var = this.f26113E;
        if (zd0Var != null) {
            z = zd0Var.m4295k();
        } else {
            z = false;
        }
        C7601t.m940c();
        C0074o.m27689a(this.f26122a.getContext(), adOverlayInfoParcel, !z);
        ej0 ej0Var = this.f26114F;
        if (ej0Var != null) {
            String str = adOverlayInfoParcel.f7642w;
            if (str == null && (c0064e = adOverlayInfoParcel.f7631a) != null) {
                str = c0064e.f101b;
            }
            ej0Var.mo4700A(str);
        }
    }

    /* renamed from: n0 */
    public final void m10178n0(String str, u50<? super cs0> u50Var) {
        synchronized (this.f26125k) {
            List<u50<? super cs0>> list = this.f26124d.get(str);
            if (list == null) {
                list = new CopyOnWriteArrayList<>();
                this.f26124d.put(str, list);
            }
            list.add(u50Var);
        }
    }

    /* renamed from: o */
    public final /* synthetic */ void m10177o() {
        this.f26122a.mo5130E();
        BinderC0073n mo5097Z = this.f26122a.mo5097Z();
        if (mo5097Z != null) {
            mo5097Z.m27706E();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.f26125k) {
            if (this.f26122a.mo5083f0()) {
                C0543w1.m26251k("Blank page loaded, 1...");
                this.f26122a.mo5101W0();
                return;
            }
            this.f26116H = true;
            rt0 rt0Var = this.f26129s;
            if (rt0Var != null) {
                rt0Var.mo7341a();
                this.f26129s = null;
            }
            m10189U();
        }
    }

    @Override // p168r4.st0
    /* renamed from: r0 */
    public final void mo7001r0(boolean z) {
        synchronized (this.f26125k) {
            this.f26109A = z;
        }
    }

    /* renamed from: v */
    public final WebResourceResponse m10172v(String str, Map<String, String> map) {
        HttpURLConnection httpURLConnection;
        String str2;
        String str3;
        URL url = new URL(str);
        try {
            TrafficStats.setThreadStatsTag(264);
            int i = 0;
            while (true) {
                i++;
                if (i <= 20) {
                    URLConnection openConnection = url.openConnection();
                    openConnection.setConnectTimeout(10000);
                    openConnection.setReadTimeout(10000);
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        openConnection.addRequestProperty(entry.getKey(), entry.getValue());
                    }
                    if (openConnection instanceof HttpURLConnection) {
                        httpURLConnection = (HttpURLConnection) openConnection;
                        C7601t.m939d().m26342M(this.f26122a.getContext(), this.f26122a.mo5061n().f25171a, false, httpURLConnection, false, 60000);
                        bm0 bm0Var = new bm0(null);
                        bm0Var.m12765a(httpURLConnection, null);
                        int responseCode = httpURLConnection.getResponseCode();
                        bm0Var.m12763c(httpURLConnection, responseCode);
                        if (responseCode < 300 || responseCode >= 400) {
                            break;
                        }
                        String headerField = httpURLConnection.getHeaderField(HttpResponseHeader.Location);
                        if (headerField != null) {
                            if (headerField.startsWith("tel:")) {
                                return null;
                            }
                            URL url2 = new URL(url, headerField);
                            String protocol = url2.getProtocol();
                            if (protocol == null) {
                                cm0.m12437f("Protocol is null");
                                return m10173u();
                            } else if (!protocol.equals("http") && !protocol.equals("https")) {
                                if (protocol.length() != 0) {
                                    str3 = "Unsupported scheme: ".concat(protocol);
                                } else {
                                    str3 = new String("Unsupported scheme: ");
                                }
                                cm0.m12437f(str3);
                                return m10173u();
                            } else {
                                if (headerField.length() != 0) {
                                    str2 = "Redirecting to ".concat(headerField);
                                } else {
                                    str2 = new String("Redirecting to ");
                                }
                                cm0.m12442a(str2);
                                httpURLConnection.disconnect();
                                url = url2;
                            }
                        } else {
                            throw new IOException("Missing Location header in redirect");
                        }
                    } else {
                        throw new IOException("Invalid protocol.");
                    }
                } else {
                    TrafficStats.clearThreadStatsTag();
                    throw new IOException("Too many redirects (20)");
                }
            }
            C7601t.m939d();
            return C0497k2.m26303s(httpURLConnection);
        } finally {
            TrafficStats.clearThreadStatsTag();
        }
    }

    @Override // p168r4.st0
    /* renamed from: y */
    public final void mo6999y() {
        synchronized (this.f26125k) {
            this.f26133w = false;
            this.f26135y = true;
            qm0.f30194e.execute(new Runnable(this) { // from class: r4.es0

                /* renamed from: a */
                public final js0 f23128a;

                {
                    this.f23128a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f23128a.m10177o();
                }
            });
        }
    }

    @Override // p168r4.st0
    /* renamed from: E0 */
    public final void mo7013E0(Uri uri) {
        final String str;
        String str2;
        String path = uri.getPath();
        List<u50<? super cs0>> list = this.f26124d.get(path);
        if (path != null && list != null) {
            String encodedQuery = uri.getEncodedQuery();
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30914T3)).booleanValue() && this.f26120L.contains(path) && encodedQuery != null) {
                if (encodedQuery.length() >= ((Integer) C5592av.m12935c().m8098c(C6225rz.f30930V3)).intValue()) {
                    if (path.length() != 0) {
                        str2 = "Parsing gmsg query params on BG thread: ".concat(path);
                    } else {
                        str2 = new String("Parsing gmsg query params on BG thread: ");
                    }
                    C0543w1.m26251k(str2);
                    y73.m4799p(C7601t.m939d().m26335T(uri), new hs0(this, list, path, uri), qm0.f30194e);
                    return;
                }
            }
            C7601t.m939d();
            m10171z(C0497k2.m26304r(uri), list, path);
            return;
        }
        C0543w1.m26251k("No GMSG handler found for GMSG: ".concat(String.valueOf(uri)));
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30972a5)).booleanValue() && C7601t.m935h().m9062e() != null) {
            if (path != null && path.length() >= 2) {
                str = path.substring(1);
            } else {
                str = "null";
            }
            qm0.f30190a.execute(new Runnable(str) { // from class: r4.fs0

                /* renamed from: a */
                public final String f23660a;

                {
                    this.f23660a = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    String str3 = this.f23660a;
                    int i = js0.f26108N;
                    C7601t.m935h().m9062e().m5538e(str3);
                }
            });
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        String str2;
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            str2 = "Loading resource: ".concat(valueOf);
        } else {
            str2 = new String("Loading resource: ");
        }
        C0543w1.m26251k(str2);
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            mo7013E0(parse);
        }
    }

    /* renamed from: q */
    public final void m10175q(final View view, final ej0 ej0Var, final int i) {
        if (ej0Var.mo4695e() && i > 0) {
            ej0Var.mo4698b(view);
            if (ej0Var.mo4695e()) {
                C0497k2.f1630i.postDelayed(new Runnable(this, view, ej0Var, i) { // from class: r4.ds0

                    /* renamed from: a */
                    public final js0 f22415a;

                    /* renamed from: b */
                    public final View f22416b;

                    /* renamed from: d */
                    public final ej0 f22417d;

                    /* renamed from: k */
                    public final int f22418k;

                    {
                        this.f22415a = this;
                        this.f22416b = view;
                        this.f22417d = ej0Var;
                        this.f22418k = i;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f22415a.m10176p(this.f22416b, this.f22417d, this.f22418k);
                    }
                }, 100L);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        String str2;
        String str3;
        String str4;
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            str2 = "AdWebView shouldOverrideUrlLoading: ".concat(valueOf);
        } else {
            str2 = new String("AdWebView shouldOverrideUrlLoading: ");
        }
        C0543w1.m26251k(str2);
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            mo7013E0(parse);
        } else {
            if (this.f26133w && webView == this.f26122a.mo5122J()) {
                String scheme = parse.getScheme();
                if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    InterfaceC5812gt interfaceC5812gt = this.f26126p;
                    if (interfaceC5812gt != null) {
                        interfaceC5812gt.mo3609F0();
                        ej0 ej0Var = this.f26114F;
                        if (ej0Var != null) {
                            ej0Var.mo4700A(str);
                        }
                        this.f26126p = null;
                    }
                    cf1 cf1Var = this.f26132v;
                    if (cf1Var != null) {
                        cf1Var.mo5096a();
                        this.f26132v = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            if (!this.f26122a.mo5122J().willNotDraw()) {
                try {
                    C6300u mo5126H = this.f26122a.mo5126H();
                    if (mo5126H != null && mo5126H.m6684a(parse)) {
                        Context context = this.f26122a.getContext();
                        cs0 cs0Var = this.f26122a;
                        parse = mo5126H.m6680e(parse, context, (View) cs0Var, cs0Var.mo5078h());
                    }
                } catch (C6337v unused) {
                    String valueOf2 = String.valueOf(str);
                    if (valueOf2.length() != 0) {
                        str3 = "Unable to append parameter to URL: ".concat(valueOf2);
                    } else {
                        str3 = new String("Unable to append parameter to URL: ");
                    }
                    cm0.m12437f(str3);
                }
                C7583b c7583b = this.f26112D;
                if (c7583b != null && !c7583b.m1032b()) {
                    this.f26112D.m1031c(str);
                } else {
                    m10188Y(new C0064e("android.intent.action.VIEW", parse.toString(), null, null, null, null, null, null), true);
                }
            } else {
                String valueOf3 = String.valueOf(str);
                if (valueOf3.length() != 0) {
                    str4 = "AdWebView unable to handle URL: ".concat(valueOf3);
                } else {
                    str4 = new String("AdWebView unable to handle URL: ");
                }
                cm0.m12437f(str4);
            }
        }
        return true;
    }

    /* renamed from: z */
    public final void m10171z(Map<String, String> map, List<u50<? super cs0>> list, String str) {
        String str2;
        if (C0543w1.m26249m()) {
            if (str.length() != 0) {
                str2 = "Received GMSG: ".concat(str);
            } else {
                str2 = new String("Received GMSG: ");
            }
            C0543w1.m26251k(str2);
            for (String str3 : map.keySet()) {
                String str4 = map.get(str3);
                StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 4 + String.valueOf(str4).length());
                sb.append("  ");
                sb.append(str3);
                sb.append(": ");
                sb.append(str4);
                C0543w1.m26251k(sb.toString());
            }
        }
        for (u50<? super cs0> u50Var : list) {
            u50Var.mo4240a(this.f26122a, map);
        }
    }
}
