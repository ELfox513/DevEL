package p004a3;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import java.util.Collections;
import p016b3.C0497k2;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p168r4.C5592av;
import p168r4.C5882ip;
import p168r4.C6225rz;
import p168r4.c03;
import p168r4.cm0;
import p168r4.cs0;
import p168r4.fe0;
import p168r4.im0;
import p168r4.k12;
import p168r4.os0;
import p168r4.qt0;
import p168r4.st0;
import p168r4.t40;
import p168r4.v40;
import p168r4.ve0;
import p168r4.vt0;
import p235z2.C7582a;
import p235z2.C7583b;
import p235z2.C7591j;
import p235z2.C7601t;
/* renamed from: a3.n */
/* loaded from: classes.dex */
public class BinderC0073n extends ve0 implements InterfaceC0061b0 {

    /* renamed from: F */
    public static final int f121F = Color.argb(0, 0, 0, 0);

    /* renamed from: A */
    public boolean f122A;

    /* renamed from: a */
    public final Activity f127a;

    /* renamed from: b */
    public AdOverlayInfoParcel f128b;

    /* renamed from: d */
    public cs0 f129d;

    /* renamed from: k */
    public C0069j f130k;

    /* renamed from: p */
    public View$OnClickListenerC0078s f131p;

    /* renamed from: r */
    public FrameLayout f133r;

    /* renamed from: s */
    public WebChromeClient.CustomViewCallback f134s;

    /* renamed from: v */
    public C0068i f137v;

    /* renamed from: y */
    public Runnable f140y;

    /* renamed from: z */
    public boolean f141z;

    /* renamed from: q */
    public boolean f132q = false;

    /* renamed from: t */
    public boolean f135t = false;

    /* renamed from: u */
    public boolean f136u = false;

    /* renamed from: w */
    public boolean f138w = false;

    /* renamed from: E */
    public int f126E = 1;

    /* renamed from: x */
    public final Object f139x = new Object();

    /* renamed from: B */
    public boolean f123B = false;

    /* renamed from: C */
    public boolean f124C = false;

    /* renamed from: D */
    public boolean f125D = true;

    public BinderC0073n(Activity activity) {
        this.f127a = activity;
    }

    /* renamed from: k7 */
    public static final void m27696k7(InterfaceC3512a interfaceC3512a, View view) {
        if (interfaceC3512a == null || view == null) {
            return;
        }
        C7601t.m924s().mo7875e(interfaceC3512a, view);
    }

    /* renamed from: L */
    public final void m27705L() {
        this.f137v.f113b = true;
    }

    /* renamed from: a */
    public final void m27702a() {
        this.f126E = 3;
        this.f127a.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.f128b;
        if (adOverlayInfoParcel != null && adOverlayInfoParcel.f7641v == 5) {
            this.f127a.overridePendingTransition(0, 0);
        }
    }

    @Override // p168r4.we0
    /* renamed from: c */
    public final void mo5759c() {
        this.f126E = 1;
    }

    @Override // p168r4.we0
    /* renamed from: d */
    public final void mo5758d() {
        InterfaceC0076q interfaceC0076q;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f128b;
        if (adOverlayInfoParcel == null || (interfaceC0076q = adOverlayInfoParcel.f7633d) == null) {
            return;
        }
        interfaceC0076q.mo4168c();
    }

    @Override // p004a3.InterfaceC0061b0
    /* renamed from: e */
    public final void mo11735e() {
        this.f126E = 2;
        this.f127a.finish();
    }

    @Override // p168r4.we0
    /* renamed from: g */
    public final boolean mo5757g() {
        this.f126E = 1;
        if (this.f129d == null) {
            return true;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31096p6)).booleanValue() && this.f129d.canGoBack()) {
            this.f129d.goBack();
            return false;
        }
        boolean mo5092b1 = this.f129d.mo5092b1();
        if (!mo5092b1) {
            this.f129d.mo5125H0("onbackblocked", Collections.emptyMap());
        }
        return mo5092b1;
    }

    /* renamed from: h7 */
    public final void m27699h7() {
        if (this.f138w) {
            this.f138w = false;
            m27698i7();
        }
    }

    /* renamed from: i7 */
    public final void m27698i7() {
        this.f129d.mo5069k0();
    }

    @Override // p168r4.we0
    /* renamed from: j */
    public final void mo5753j() {
    }

    @Override // p168r4.we0
    /* renamed from: m2 */
    public final void mo5749m2(int i, int i2, Intent intent) {
    }

    @Override // p168r4.we0
    /* renamed from: r */
    public final void mo5747r() {
        this.f122A = true;
    }

    @Override // p168r4.we0
    /* renamed from: u0 */
    public final void mo5746u0(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f135t);
    }

    /* renamed from: E */
    public final void m27706E() {
        this.f137v.removeView(this.f131p);
        m27703N4(true);
    }

    /* renamed from: N */
    public final void m27704N() {
        synchronized (this.f139x) {
            this.f141z = true;
            Runnable runnable = this.f140y;
            if (runnable != null) {
                c03 c03Var = C0497k2.f1630i;
                c03Var.removeCallbacks(runnable);
                c03Var.post(this.f140y);
            }
        }
    }

    /* renamed from: N4 */
    public final void m27703N4(boolean z) {
        boolean z2;
        int i;
        int i2;
        int intValue = ((Integer) C5592av.m12935c().m8098c(C6225rz.f31077n3)).intValue();
        int i3 = 0;
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30847L0)).booleanValue() && !z) {
            z2 = false;
        } else {
            z2 = true;
        }
        C0077r c0077r = new C0077r();
        c0077r.f145d = 50;
        if (true != z2) {
            i = 0;
        } else {
            i = intValue;
        }
        c0077r.f142a = i;
        if (true != z2) {
            i3 = intValue;
        }
        c0077r.f143b = i3;
        c0077r.f144c = intValue;
        this.f131p = new View$OnClickListenerC0078s(this.f127a, c0077r, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        if (true != z2) {
            i2 = 9;
        } else {
            i2 = 11;
        }
        layoutParams.addRule(i2);
        m27695l7(z, this.f128b.f7637r);
        this.f137v.addView(this.f131p, layoutParams);
    }

    /* renamed from: b */
    public final void m27701b() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.f128b;
        if (adOverlayInfoParcel != null && this.f132q) {
            m27693n7(adOverlayInfoParcel.f7640u);
        }
        if (this.f133r != null) {
            this.f127a.setContentView(this.f137v);
            this.f122A = true;
            this.f133r.removeAllViews();
            this.f133r = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.f134s;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.f134s = null;
        }
        this.f132q = false;
    }

    /* renamed from: g7 */
    public final void m27700g7() {
        cs0 cs0Var;
        InterfaceC0076q interfaceC0076q;
        if (this.f124C) {
            return;
        }
        this.f124C = true;
        cs0 cs0Var2 = this.f129d;
        if (cs0Var2 != null) {
            this.f137v.removeView(cs0Var2.mo5124I());
            C0069j c0069j = this.f130k;
            if (c0069j != null) {
                this.f129d.mo5051q0(c0069j.f117d);
                this.f129d.mo5098Y0(false);
                ViewGroup viewGroup = this.f130k.f116c;
                View mo5124I = this.f129d.mo5124I();
                C0069j c0069j2 = this.f130k;
                viewGroup.addView(mo5124I, c0069j2.f114a, c0069j2.f115b);
                this.f130k = null;
            } else if (this.f127a.getApplicationContext() != null) {
                this.f129d.mo5051q0(this.f127a.getApplicationContext());
            }
            this.f129d = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f128b;
        if (adOverlayInfoParcel != null && (interfaceC0076q = adOverlayInfoParcel.f7633d) != null) {
            interfaceC0076q.mo4170C6(this.f126E);
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.f128b;
        if (adOverlayInfoParcel2 != null && (cs0Var = adOverlayInfoParcel2.f7634k) != null) {
            m27696k7(cs0Var.mo5135B0(), this.f128b.f7634k.mo5124I());
        }
    }

    @Override // p168r4.we0
    /* renamed from: h */
    public final void mo5756h() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31061l3)).booleanValue()) {
            cs0 cs0Var = this.f129d;
            if (cs0Var != null && !cs0Var.mo5083f0()) {
                this.f129d.onResume();
            } else {
                cm0.m12437f("The webview does not exist. Ignoring action.");
            }
        }
    }

    @Override // p168r4.we0
    /* renamed from: i */
    public final void mo5755i() {
        InterfaceC0076q interfaceC0076q;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f128b;
        if (adOverlayInfoParcel != null && (interfaceC0076q = adOverlayInfoParcel.f7633d) != null) {
            interfaceC0076q.mo4165e3();
        }
        m27697j7(this.f127a.getResources().getConfiguration());
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31061l3)).booleanValue()) {
            cs0 cs0Var = this.f129d;
            if (cs0Var != null && !cs0Var.mo5083f0()) {
                this.f129d.onResume();
            } else {
                cm0.m12437f("The webview does not exist. Ignoring action.");
            }
        }
    }

    /* renamed from: j7 */
    public final void m27697j7(Configuration configuration) {
        boolean z;
        AdOverlayInfoParcel adOverlayInfoParcel;
        C7591j c7591j;
        int i;
        C7591j c7591j2;
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.f128b;
        boolean z2 = true;
        boolean z3 = false;
        if (adOverlayInfoParcel2 != null && (c7591j2 = adOverlayInfoParcel2.f7645z) != null && c7591j2.f37567b) {
            z = true;
        } else {
            z = false;
        }
        boolean mo26256o = C7601t.m937f().mo26256o(this.f127a, configuration);
        if ((!this.f136u || z) && !mo26256o) {
            if (Build.VERSION.SDK_INT >= 19 && (adOverlayInfoParcel = this.f128b) != null && (c7591j = adOverlayInfoParcel.f7645z) != null && c7591j.f37572r) {
                z3 = true;
            }
        } else {
            z2 = false;
        }
        Window window = this.f127a.getWindow();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30855M0)).booleanValue() && Build.VERSION.SDK_INT >= 19) {
            View decorView = window.getDecorView();
            if (z2) {
                if (z3) {
                    i = 5894;
                } else {
                    i = 5380;
                }
            } else {
                i = 256;
            }
            decorView.setSystemUiVisibility(i);
        } else if (z2) {
            window.addFlags(1024);
            window.clearFlags(2048);
            if (Build.VERSION.SDK_INT >= 19 && z3) {
                window.getDecorView().setSystemUiVisibility(4098);
            }
        } else {
            window.addFlags(2048);
            window.clearFlags(1024);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0071 A[Catch: h -> 0x00f5, TryCatch #0 {h -> 0x00f5, blocks: (B:9:0x0017, B:11:0x0025, B:13:0x002e, B:14:0x0030, B:16:0x0038, B:17:0x0046, B:19:0x004d, B:25:0x005a, B:27:0x005e, B:29:0x0063, B:32:0x0071, B:34:0x0075, B:36:0x007b, B:37:0x007e, B:39:0x0084, B:40:0x0087, B:42:0x008d, B:44:0x0091, B:45:0x0094, B:47:0x009a, B:48:0x009d, B:55:0x00cc, B:57:0x00d0, B:58:0x00d7, B:59:0x00d8, B:61:0x00dc, B:63:0x00e9, B:22:0x0054, B:24:0x0058, B:30:0x006d, B:65:0x00ed, B:66:0x00f4), top: B:70:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e9 A[Catch: h -> 0x00f5, TryCatch #0 {h -> 0x00f5, blocks: (B:9:0x0017, B:11:0x0025, B:13:0x002e, B:14:0x0030, B:16:0x0038, B:17:0x0046, B:19:0x004d, B:25:0x005a, B:27:0x005e, B:29:0x0063, B:32:0x0071, B:34:0x0075, B:36:0x007b, B:37:0x007e, B:39:0x0084, B:40:0x0087, B:42:0x008d, B:44:0x0091, B:45:0x0094, B:47:0x009a, B:48:0x009d, B:55:0x00cc, B:57:0x00d0, B:58:0x00d7, B:59:0x00d8, B:61:0x00dc, B:63:0x00e9, B:22:0x0054, B:24:0x0058, B:30:0x006d, B:65:0x00ed, B:66:0x00f4), top: B:70:0x0017 }] */
    @Override // p168r4.we0
    /* renamed from: l0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo5751l0(android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p004a3.BinderC0073n.mo5751l0(android.os.Bundle):void");
    }

    /* renamed from: l7 */
    public final void m27695l7(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        AdOverlayInfoParcel adOverlayInfoParcel;
        C7591j c7591j;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        C7591j c7591j2;
        boolean z5 = true;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30831J0)).booleanValue() && (adOverlayInfoParcel2 = this.f128b) != null && (c7591j2 = adOverlayInfoParcel2.f7645z) != null && c7591j2.f37573s) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30839K0)).booleanValue() && (adOverlayInfoParcel = this.f128b) != null && (c7591j = adOverlayInfoParcel.f7645z) != null && c7591j.f37574t) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z && z2 && z3 && !z4) {
            new fe0(this.f129d, "useCustomClose").m11557b("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        View$OnClickListenerC0078s view$OnClickListenerC0078s = this.f131p;
        if (view$OnClickListenerC0078s != null) {
            if (!z4 && (!z2 || z3)) {
                z5 = false;
            }
            view$OnClickListenerC0078s.m27688a(z5);
        }
    }

    @Override // p168r4.we0
    /* renamed from: m */
    public final void mo5750m() {
        cs0 cs0Var = this.f129d;
        if (cs0Var != null) {
            try {
                this.f137v.removeView(cs0Var.mo5124I());
            } catch (NullPointerException unused) {
            }
        }
        m27690q7();
    }

    /* renamed from: m7 */
    public final void m27694m7(boolean z) {
        if (z) {
            this.f137v.setBackgroundColor(0);
        } else {
            this.f137v.setBackgroundColor(-16777216);
        }
    }

    /* renamed from: n7 */
    public final void m27693n7(int i) {
        if (this.f127a.getApplicationInfo().targetSdkVersion >= ((Integer) C5592av.m12935c().m8098c(C6225rz.f31070m4)).intValue()) {
            if (this.f127a.getApplicationInfo().targetSdkVersion <= ((Integer) C5592av.m12935c().m8098c(C6225rz.f31078n4)).intValue()) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= ((Integer) C5592av.m12935c().m8098c(C6225rz.f31086o4)).intValue()) {
                    if (i2 <= ((Integer) C5592av.m12935c().m8098c(C6225rz.f31094p4)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            this.f127a.setRequestedOrientation(i);
        } catch (Throwable th) {
            C7601t.m935h().m9055l(th, "AdOverlay.setRequestedOrientation");
        }
    }

    @Override // p168r4.we0
    /* renamed from: o */
    public final void mo5748o() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31061l3)).booleanValue() && this.f129d != null && (!this.f127a.isFinishing() || this.f130k == null)) {
            this.f129d.onPause();
        }
        m27690q7();
    }

    /* renamed from: o7 */
    public final void m27692o7(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        FrameLayout frameLayout = new FrameLayout(this.f127a);
        this.f133r = frameLayout;
        frameLayout.setBackgroundColor(-16777216);
        this.f133r.addView(view, -1, -1);
        this.f127a.setContentView(this.f133r);
        this.f122A = true;
        this.f134s = customViewCallback;
        this.f132q = true;
    }

    /* renamed from: p7 */
    public final void m27691p7(boolean z) {
        st0 st0Var;
        boolean z2;
        vt0 vt0Var;
        String str;
        C7582a c7582a;
        if (!this.f122A) {
            this.f127a.requestWindowFeature(1);
        }
        Window window = this.f127a.getWindow();
        if (window != null) {
            cs0 cs0Var = this.f128b.f7634k;
            C7583b c7583b = null;
            if (cs0Var != null) {
                st0Var = cs0Var.mo5057o0();
            } else {
                st0Var = null;
            }
            boolean z3 = false;
            if (st0Var != null && st0Var.mo7007e()) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.f138w = false;
            if (z2) {
                int i = this.f128b.f7640u;
                if (i == 6) {
                    if (this.f127a.getResources().getConfiguration().orientation == 1) {
                        z3 = true;
                    }
                    this.f138w = z3;
                } else if (i == 7) {
                    if (this.f127a.getResources().getConfiguration().orientation == 2) {
                        z3 = true;
                    }
                    this.f138w = z3;
                }
            }
            StringBuilder sb = new StringBuilder(46);
            sb.append("Delay onShow to next orientation change: ");
            sb.append(z3);
            cm0.m12442a(sb.toString());
            m27693n7(this.f128b.f7640u);
            window.setFlags(16777216, 16777216);
            cm0.m12442a("Hardware acceleration on the AdActivity window enabled.");
            if (!this.f136u) {
                this.f137v.setBackgroundColor(-16777216);
            } else {
                this.f137v.setBackgroundColor(f121F);
            }
            this.f127a.setContentView(this.f137v);
            this.f122A = true;
            if (z) {
                try {
                    C7601t.m938e();
                    Activity activity = this.f127a;
                    cs0 cs0Var2 = this.f128b.f7634k;
                    if (cs0Var2 != null) {
                        vt0Var = cs0Var2.mo5049r();
                    } else {
                        vt0Var = null;
                    }
                    cs0 cs0Var3 = this.f128b.f7634k;
                    if (cs0Var3 != null) {
                        str = cs0Var3.mo5113P();
                    } else {
                        str = null;
                    }
                    AdOverlayInfoParcel adOverlayInfoParcel = this.f128b;
                    im0 im0Var = adOverlayInfoParcel.f7643x;
                    cs0 cs0Var4 = adOverlayInfoParcel.f7634k;
                    if (cs0Var4 != null) {
                        c7582a = cs0Var4.mo5075i();
                    } else {
                        c7582a = null;
                    }
                    cs0 m8708a = os0.m8708a(activity, vt0Var, str, true, z2, null, null, im0Var, null, null, c7582a, C5882ip.m10583a(), null, null);
                    this.f129d = m8708a;
                    st0 mo5057o0 = m8708a.mo5057o0();
                    AdOverlayInfoParcel adOverlayInfoParcel2 = this.f128b;
                    t40 t40Var = adOverlayInfoParcel2.f7621A;
                    v40 v40Var = adOverlayInfoParcel2.f7635p;
                    InterfaceC0083x interfaceC0083x = adOverlayInfoParcel2.f7639t;
                    cs0 cs0Var5 = adOverlayInfoParcel2.f7634k;
                    if (cs0Var5 != null) {
                        c7583b = cs0Var5.mo5057o0().mo7009b();
                    }
                    mo5057o0.mo7008d0(null, t40Var, null, v40Var, interfaceC0083x, true, null, c7583b, null, null, null, null, null, null, null, null);
                    this.f129d.mo5057o0().mo7000s0(new qt0(this) { // from class: a3.f

                        /* renamed from: a */
                        public final BinderC0073n f110a;

                        {
                            this.f110a = this;
                        }

                        @Override // p168r4.qt0
                        /* renamed from: R */
                        public final void mo5285R(boolean z4) {
                            cs0 cs0Var6 = this.f110a.f129d;
                            if (cs0Var6 != null) {
                                cs0Var6.mo5069k0();
                            }
                        }
                    });
                    AdOverlayInfoParcel adOverlayInfoParcel3 = this.f128b;
                    String str2 = adOverlayInfoParcel3.f7642w;
                    if (str2 != null) {
                        this.f129d.loadUrl(str2);
                    } else {
                        String str3 = adOverlayInfoParcel3.f7638s;
                        if (str3 != null) {
                            this.f129d.loadDataWithBaseURL(adOverlayInfoParcel3.f7636q, str3, "text/html", "UTF-8", null);
                        } else {
                            throw new C0067h("No URL or HTML to display in ad overlay.");
                        }
                    }
                    cs0 cs0Var6 = this.f128b.f7634k;
                    if (cs0Var6 != null) {
                        cs0Var6.mo5099X0(this);
                    }
                } catch (Exception e) {
                    cm0.m12439d("Error obtaining webview.", e);
                    throw new C0067h("Could not obtain webview for the overlay.");
                }
            } else {
                cs0 cs0Var7 = this.f128b.f7634k;
                this.f129d = cs0Var7;
                cs0Var7.mo5051q0(this.f127a);
            }
            this.f129d.mo5087d1(this);
            cs0 cs0Var8 = this.f128b.f7634k;
            if (cs0Var8 != null) {
                m27696k7(cs0Var8.mo5135B0(), this.f137v);
            }
            if (this.f128b.f7641v != 5) {
                ViewParent parent = this.f129d.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(this.f129d.mo5124I());
                }
                if (this.f136u) {
                    this.f129d.mo5110R();
                }
                this.f137v.addView(this.f129d.mo5124I(), -1, -1);
            }
            if (!z && !this.f138w) {
                m27698i7();
            }
            AdOverlayInfoParcel adOverlayInfoParcel4 = this.f128b;
            if (adOverlayInfoParcel4.f7641v != 5) {
                m27703N4(z2);
                if (this.f129d.mo5114O0()) {
                    m27695l7(z2, true);
                    return;
                }
                return;
            }
            k12.m10116g7(this.f127a, this, adOverlayInfoParcel4.f7626F, adOverlayInfoParcel4.f7623C, adOverlayInfoParcel4.f7624D, adOverlayInfoParcel4.f7625E, adOverlayInfoParcel4.f7622B, adOverlayInfoParcel4.f7627G);
            return;
        }
        throw new C0067h("Invalid activity, no window available.");
    }

    /* renamed from: q7 */
    public final void m27690q7() {
        AdOverlayInfoParcel adOverlayInfoParcel;
        InterfaceC0076q interfaceC0076q;
        if (this.f127a.isFinishing() && !this.f123B) {
            this.f123B = true;
            cs0 cs0Var = this.f129d;
            if (cs0Var != null) {
                cs0Var.mo5034x0(this.f126E - 1);
                synchronized (this.f139x) {
                    if (!this.f141z && this.f129d.mo5104U0()) {
                        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31045j3)).booleanValue() && !this.f124C && (adOverlayInfoParcel = this.f128b) != null && (interfaceC0076q = adOverlayInfoParcel.f7633d) != null) {
                            interfaceC0076q.mo4166e();
                        }
                        Runnable runnable = new Runnable(this) { // from class: a3.g

                            /* renamed from: a */
                            public final BinderC0073n f111a;

                            {
                                this.f111a = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f111a.m27700g7();
                            }
                        };
                        this.f140y = runnable;
                        C0497k2.f1630i.postDelayed(runnable, ((Long) C5592av.m12935c().m8098c(C6225rz.f30823I0)).longValue());
                        return;
                    }
                }
            }
            m27700g7();
        }
    }

    @Override // p168r4.we0
    /* renamed from: i0 */
    public final void mo5754i0(InterfaceC3512a interfaceC3512a) {
        m27697j7((Configuration) BinderC3514b.m18740t0(interfaceC3512a));
    }

    @Override // p168r4.we0
    /* renamed from: k */
    public final void mo5752k() {
        InterfaceC0076q interfaceC0076q;
        m27701b();
        AdOverlayInfoParcel adOverlayInfoParcel = this.f128b;
        if (adOverlayInfoParcel != null && (interfaceC0076q = adOverlayInfoParcel.f7633d) != null) {
            interfaceC0076q.mo4171A2();
        }
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31061l3)).booleanValue() && this.f129d != null && (!this.f127a.isFinishing() || this.f130k == null)) {
            this.f129d.onPause();
        }
        m27690q7();
    }
}
