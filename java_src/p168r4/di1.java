package p168r4;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0476f1;
import p016b3.C0497k2;
import p026c4.C1054o;
import p026c4.InterfaceC1045f;
import p220x3.C7297q;
import p235z2.C7601t;
/* renamed from: r4.di1 */
/* loaded from: classes2.dex */
public final class di1 implements mj1 {

    /* renamed from: a */
    public final Context f22259a;

    /* renamed from: b */
    public final pj1 f22260b;

    /* renamed from: c */
    public final JSONObject f22261c;

    /* renamed from: d */
    public final fo1 f22262d;

    /* renamed from: e */
    public final ej1 f22263e;

    /* renamed from: f */
    public final C6300u f22264f;

    /* renamed from: g */
    public final b81 f22265g;

    /* renamed from: h */
    public final h71 f22266h;

    /* renamed from: i */
    public final af1 f22267i;

    /* renamed from: j */
    public final no2 f22268j;

    /* renamed from: k */
    public final im0 f22269k;

    /* renamed from: l */
    public final hp2 f22270l;

    /* renamed from: m */
    public final oz0 f22271m;

    /* renamed from: n */
    public final hk1 f22272n;

    /* renamed from: o */
    public final InterfaceC1045f f22273o;

    /* renamed from: p */
    public final xe1 f22274p;

    /* renamed from: q */
    public final pu2 f22275q;

    /* renamed from: s */
    public boolean f22277s;

    /* renamed from: z */
    public InterfaceC6222rw f22284z;

    /* renamed from: r */
    public boolean f22276r = false;

    /* renamed from: t */
    public boolean f22278t = false;

    /* renamed from: u */
    public boolean f22279u = false;

    /* renamed from: v */
    public Point f22280v = new Point();

    /* renamed from: w */
    public Point f22281w = new Point();

    /* renamed from: x */
    public long f22282x = 0;

    /* renamed from: y */
    public long f22283y = 0;

    public di1(Context context, pj1 pj1Var, JSONObject jSONObject, fo1 fo1Var, ej1 ej1Var, C6300u c6300u, b81 b81Var, h71 h71Var, af1 af1Var, no2 no2Var, im0 im0Var, hp2 hp2Var, oz0 oz0Var, hk1 hk1Var, InterfaceC1045f interfaceC1045f, xe1 xe1Var, pu2 pu2Var) {
        this.f22259a = context;
        this.f22260b = pj1Var;
        this.f22261c = jSONObject;
        this.f22262d = fo1Var;
        this.f22263e = ej1Var;
        this.f22264f = c6300u;
        this.f22265g = b81Var;
        this.f22266h = h71Var;
        this.f22267i = af1Var;
        this.f22268j = no2Var;
        this.f22269k = im0Var;
        this.f22270l = hp2Var;
        this.f22271m = oz0Var;
        this.f22272n = hk1Var;
        this.f22273o = interfaceC1045f;
        this.f22274p = xe1Var;
        this.f22275q = pu2Var;
    }

    @Override // p168r4.mj1
    /* renamed from: Q */
    public final void mo9369Q(String str) {
        m12127y(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // p168r4.mj1
    /* renamed from: b */
    public final void mo9367b(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f22279u) {
            cm0.m12442a("Custom click reporting failed. enableCustomClickGesture is not set.");
        } else if (!m12132t()) {
            cm0.m12442a("Custom click reporting failed. Ad unit id not in the allow list.");
        } else {
            JSONObject m26383e = C0476f1.m26383e(this.f22259a, map, map2, view);
            JSONObject m26386b = C0476f1.m26386b(this.f22259a, view);
            JSONObject m26385c = C0476f1.m26385c(view);
            JSONObject m26384d = C0476f1.m26384d(this.f22259a, view);
            String m12133s = m12133s(null, map);
            m12127y(view, m26386b, m26383e, m26385c, m26384d, m12133s, C0476f1.m26382f(m12133s, this.f22259a, this.f22281w, this.f22280v), null, z, true);
        }
    }

    @Override // p168r4.mj1
    /* renamed from: c */
    public final void mo9366c(InterfaceC6222rw interfaceC6222rw) {
        this.f22284z = interfaceC6222rw;
    }

    @Override // p168r4.mj1
    /* renamed from: f */
    public final void mo9362f(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        View view3;
        JSONObject m26383e = C0476f1.m26383e(this.f22259a, map, map2, view2);
        JSONObject m26386b = C0476f1.m26386b(this.f22259a, view2);
        JSONObject m26385c = C0476f1.m26385c(view2);
        JSONObject m26384d = C0476f1.m26384d(this.f22259a, view2);
        String m12133s = m12133s(view, map);
        JSONObject m26382f = C0476f1.m26382f(m12133s, this.f22259a, this.f22281w, this.f22280v);
        if (true == ((Boolean) C5592av.m12935c().m8098c(C6225rz.f30978b2)).booleanValue()) {
            view3 = view2;
        } else {
            view3 = view;
        }
        m12127y(view3, m26386b, m26383e, m26385c, m26384d, m12133s, m26382f, null, z, false);
    }

    @Override // p168r4.mj1
    /* renamed from: h */
    public final void mo9360h() {
        this.f22279u = true;
    }

    @Override // p168r4.mj1
    /* renamed from: i */
    public final boolean mo9359i() {
        return m12132t();
    }

    @Override // p168r4.mj1
    /* renamed from: m */
    public final void mo9354m() {
        m12131u(null, null, null, null, null, null, false);
    }

    /* renamed from: t */
    public final boolean m12132t() {
        return this.f22261c.optBoolean("allow_custom_click_gesture", false);
    }

    /* renamed from: y */
    public final void m12127y(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z, boolean z2) {
        String str2;
        C7297q.m1888e("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("ad", this.f22261c);
            jSONObject7.put("asset_view_signal", jSONObject2);
            jSONObject7.put("ad_view_signal", jSONObject);
            jSONObject7.put("click_signal", jSONObject5);
            jSONObject7.put("scroll_view_signal", jSONObject3);
            jSONObject7.put("lock_screen_signal", jSONObject4);
            jSONObject7.put("has_custom_click_handler", this.f22260b.m8303g(this.f22263e.m11745q()) != null);
            jSONObject7.put("provided_signals", jSONObject6);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("asset_id", str);
            jSONObject8.put("template", this.f22263e.m11762d0());
            jSONObject8.put("view_aware_api_used", z);
            d20 d20Var = this.f22270l.f24784i;
            jSONObject8.put("custom_mute_requested", d20Var != null && d20Var.f22048r);
            jSONObject8.put("custom_mute_enabled", (this.f22263e.m11765c().isEmpty() || this.f22263e.m11763d() == null) ? false : true);
            if (this.f22272n.m10897b() != null && this.f22261c.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject8.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject8.put("timestamp", this.f22273o.mo24763a());
            if (this.f22279u && m12132t()) {
                jSONObject8.put("custom_click_gesture_eligible", true);
            }
            if (z2) {
                jSONObject8.put("is_custom_click_gesture", true);
            }
            jSONObject8.put("has_custom_click_handler", this.f22260b.m8303g(this.f22263e.m11745q()) != null);
            try {
                JSONObject optJSONObject = this.f22261c.optJSONObject("tracking_urls_and_actions");
                if (optJSONObject == null) {
                    optJSONObject = new JSONObject();
                }
                str2 = this.f22264f.m6683b().mo1019b(this.f22259a, optJSONObject.optString("click_string"), view);
            } catch (Exception e) {
                cm0.m12439d("Exception obtaining click signals", e);
                str2 = null;
            }
            jSONObject8.put("click_signals", str2);
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30953Y2)).booleanValue()) {
                jSONObject8.put("open_chrome_custom_tab", true);
            }
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31024g6)).booleanValue() && C1054o.m24729l()) {
                jSONObject8.put("try_fallback_for_deep_link", true);
            }
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31032h6)).booleanValue() && C1054o.m24729l()) {
                jSONObject8.put("in_app_link_handling_for_android_11_enabled", true);
            }
            jSONObject7.put("click", jSONObject8);
            JSONObject jSONObject9 = new JSONObject();
            long mo24763a = this.f22273o.mo24763a();
            jSONObject9.put("time_from_last_touch_down", mo24763a - this.f22282x);
            jSONObject9.put("time_from_last_touch", mo24763a - this.f22283y);
            jSONObject7.put("touch_signal", jSONObject9);
            tm0.m6790a(this.f22262d.m11453d("google.afma.nativeAds.handleClick", jSONObject7), "Error during performing handleClick");
        } catch (JSONException e2) {
            cm0.m12439d("Unable to create click JSON.", e2);
        }
    }

    @Override // p168r4.mj1
    /* renamed from: z */
    public final void mo9349z() {
        this.f22262d.m11454c();
    }

    @Override // p168r4.mj1
    /* renamed from: B */
    public final void mo9371B() {
        C7297q.m1888e("recordDownloadedImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.f22261c);
            tm0.m6790a(this.f22262d.m11453d("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e) {
            cm0.m12439d("", e);
        }
    }

    @Override // p168r4.mj1
    /* renamed from: K */
    public final void mo9370K() {
        try {
            InterfaceC6222rw interfaceC6222rw = this.f22284z;
            if (interfaceC6222rw != null) {
                interfaceC6222rw.mo7316c();
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p168r4.mj1
    /* renamed from: a */
    public final void mo9368a(InterfaceC6333uw interfaceC6333uw) {
        try {
            if (this.f22278t) {
                return;
            }
            if (interfaceC6333uw == null && this.f22263e.m11763d() != null) {
                this.f22278t = true;
                this.f22275q.m8184b(this.f22263e.m11763d().mo6323d());
                mo9370K();
                return;
            }
            this.f22278t = true;
            this.f22275q.m8184b(interfaceC6333uw.mo6323d());
            mo9370K();
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p168r4.mj1
    /* renamed from: e */
    public final void mo9364e(View view, Map<String, WeakReference<View>> map) {
        this.f22280v = new Point();
        this.f22281w = new Point();
        if (view != null) {
            this.f22274p.m5334Z0(view);
        }
        this.f22277s = false;
    }

    @Override // p168r4.mj1
    /* renamed from: e0 */
    public final void mo9363e0(Bundle bundle) {
        if (bundle == null) {
            cm0.m12442a("Touch event data is null. No touch event is reported.");
        } else if (!m12134r("touch_reporting")) {
            cm0.m12440c("The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events.");
        } else {
            float f = bundle.getFloat("x");
            float f2 = bundle.getFloat("y");
            this.f22264f.m6683b().mo1015f((int) f, (int) f2, bundle.getInt("duration_ms"));
        }
    }

    @Override // p168r4.mj1
    /* renamed from: j */
    public final void mo9358j(View view) {
        if (!this.f22261c.optBoolean("custom_one_point_five_click_enabled", false)) {
            cm0.m12437f("setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        hk1 hk1Var = this.f22272n;
        if (view == null) {
            return;
        }
        view.setOnClickListener(hk1Var);
        view.setClickable(true);
        hk1Var.f24658r = new WeakReference<>(view);
    }

    @Override // p168r4.mj1
    /* renamed from: k */
    public final void mo9357k(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        String mo1017d;
        JSONObject m26383e = C0476f1.m26383e(this.f22259a, map, map2, view);
        JSONObject m26386b = C0476f1.m26386b(this.f22259a, view);
        JSONObject m26385c = C0476f1.m26385c(view);
        JSONObject m26384d = C0476f1.m26384d(this.f22259a, view);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30969a2)).booleanValue()) {
            try {
                mo1017d = this.f22264f.m6683b().mo1017d(this.f22259a, view, null);
            } catch (Exception unused) {
                cm0.m12440c("Exception getting data.");
            }
            m12131u(m26386b, m26383e, m26385c, m26384d, mo1017d, null, C0476f1.m26379i(this.f22259a, this.f22268j));
        }
        mo1017d = null;
        m12131u(m26386b, m26383e, m26385c, m26384d, mo1017d, null, C0476f1.m26379i(this.f22259a, this.f22268j));
    }

    @Override // p168r4.mj1
    /* renamed from: l */
    public final JSONObject mo9356l(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject m26383e = C0476f1.m26383e(this.f22259a, map, map2, view);
        JSONObject m26386b = C0476f1.m26386b(this.f22259a, view);
        JSONObject m26385c = C0476f1.m26385c(view);
        JSONObject m26384d = C0476f1.m26384d(this.f22259a, view);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("asset_view_signal", m26383e);
            jSONObject.put("ad_view_signal", m26386b);
            jSONObject.put("scroll_view_signal", m26385c);
            jSONObject.put("lock_screen_signal", m26384d);
            return jSONObject;
        } catch (JSONException e) {
            cm0.m12439d("Unable to create native ad view signals JSON.", e);
            return null;
        }
    }

    @Override // p168r4.mj1
    /* renamed from: l0 */
    public final void mo9355l0(Bundle bundle) {
        String str;
        if (bundle == null) {
            cm0.m12442a("Click data is null. No click is reported.");
        } else if (!m12134r("click_reporting")) {
            cm0.m12440c("The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events.");
        } else {
            Bundle bundle2 = bundle.getBundle("click_signal");
            if (bundle2 != null) {
                str = bundle2.getString("asset_id");
            } else {
                str = null;
            }
            m12127y(null, null, null, null, null, str, null, C7601t.m939d().m26337R(bundle, null), false, false);
        }
    }

    @Override // p168r4.mj1
    /* renamed from: n */
    public final void mo9353n() {
        if (!this.f22261c.optBoolean("custom_one_point_five_click_enabled", false)) {
            return;
        }
        this.f22272n.m10896c();
    }

    @Override // p168r4.mj1
    /* renamed from: o */
    public final void mo9352o(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.f22280v = new Point();
        this.f22281w = new Point();
        if (!this.f22277s) {
            this.f22274p.m5335T0(view);
            this.f22277s = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.f22271m.m8551j(this);
        boolean m26387a = C0476f1.m26387a(this.f22269k.f25173d);
        if (map != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null) {
                    if (m26387a) {
                        view2.setOnTouchListener(onTouchListener);
                    }
                    view2.setClickable(true);
                    view2.setOnClickListener(onClickListener);
                }
            }
        }
        if (map2 != null) {
            for (Map.Entry<String, WeakReference<View>> entry2 : map2.entrySet()) {
                View view3 = entry2.getValue().get();
                if (view3 != null) {
                    if (m26387a) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // p168r4.mj1
    /* renamed from: p */
    public final boolean mo9351p(Bundle bundle) {
        if (!m12134r("impression_reporting")) {
            cm0.m12440c("The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events.");
            return false;
        }
        return m12131u(null, null, null, null, null, C7601t.m939d().m26337R(bundle, null), false);
    }

    @Override // p168r4.mj1
    /* renamed from: q */
    public final void mo9350q(g40 g40Var) {
        if (!this.f22261c.optBoolean("custom_one_point_five_click_enabled", false)) {
            cm0.m12437f("setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
        } else {
            this.f22272n.m10898a(g40Var);
        }
    }

    /* renamed from: r */
    public final boolean m12134r(String str) {
        JSONObject optJSONObject = this.f22261c.optJSONObject("allow_pub_event_reporting");
        if (optJSONObject == null || !optJSONObject.optBoolean(str, false)) {
            return false;
        }
        return true;
    }

    /* renamed from: s */
    public final String m12133s(View view, Map<String, WeakReference<View>> map) {
        if (map != null && view != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                if (view.equals(entry.getValue().get())) {
                    return entry.getKey();
                }
            }
        }
        int m11762d0 = this.f22263e.m11762d0();
        if (m11762d0 != 1) {
            if (m11762d0 != 2) {
                if (m11762d0 != 6) {
                    return null;
                }
                return "3099";
            }
            return "2099";
        }
        return "1099";
    }

    /* renamed from: u */
    public final boolean m12131u(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, boolean z) {
        C7297q.m1888e("recordImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.f22261c);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30969a2)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            jSONObject6.put("policy_validator_enabled", z);
            Context context = this.f22259a;
            JSONObject jSONObject7 = new JSONObject();
            C7601t.m939d();
            DisplayMetrics m26317f0 = C0497k2.m26317f0((WindowManager) context.getSystemService("window"));
            try {
                jSONObject7.put("width", C6479yu.m4568a().m6127a(context, m26317f0.widthPixels));
                jSONObject7.put("height", C6479yu.m4568a().m6127a(context, m26317f0.heightPixels));
            } catch (JSONException unused) {
                jSONObject7 = null;
            }
            jSONObject6.put("screen", jSONObject7);
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30991c6)).booleanValue()) {
                this.f22262d.m11452e("/clickRecorded", new ai1(this, null));
            } else {
                this.f22262d.m11452e("/logScionEvent", new zh1(this, null));
            }
            this.f22262d.m11452e("/nativeImpression", new bi1(this, null));
            tm0.m6790a(this.f22262d.m11453d("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            if (!this.f22276r) {
                this.f22276r = C7601t.m929n().m26406g(this.f22259a, this.f22269k.f25171a, this.f22268j.f28380C.toString(), this.f22270l.f24781f);
                return true;
            }
            return true;
        } catch (JSONException e) {
            cm0.m12439d("Unable to create impression JSON.", e);
            return false;
        }
    }

    @Override // p168r4.mj1
    /* renamed from: d */
    public final JSONObject mo9365d(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject mo9356l = mo9356l(view, map, map2);
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f22279u && m12132t()) {
                jSONObject.put("custom_click_gesture_eligible", true);
            }
            if (mo9356l != null) {
                jSONObject.put("nas", mo9356l);
            }
        } catch (JSONException e) {
            cm0.m12439d("Unable to create native click meta data JSON.", e);
        }
        return jSONObject;
    }

    @Override // p168r4.mj1
    /* renamed from: g */
    public final void mo9361g(View view, MotionEvent motionEvent, View view2) {
        this.f22280v = C0476f1.m26380h(motionEvent, view2);
        long mo24763a = this.f22273o.mo24763a();
        this.f22283y = mo24763a;
        if (motionEvent.getAction() == 0) {
            this.f22282x = mo24763a;
            this.f22281w = this.f22280v;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.f22280v;
        obtain.setLocation(point.x, point.y);
        this.f22264f.m6681d(obtain);
        obtain.recycle();
    }
}
