package p168r4;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.prineside.tdi2.Config;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import p016b3.C0476f1;
/* renamed from: r4.yk1 */
/* loaded from: classes2.dex */
public final class yk1 {

    /* renamed from: a */
    public final rp1 f34118a;

    /* renamed from: b */
    public final fo1 f34119b;

    /* renamed from: c */
    public ViewTreeObserver.OnScrollChangedListener f34120c = null;

    public yk1(rp1 rp1Var, fo1 fo1Var) {
        this.f34118a = rp1Var;
        this.f34119b = fo1Var;
    }

    /* renamed from: e */
    public final /* synthetic */ void m4652e(cs0 cs0Var, Map map) {
        this.f34119b.m11450g("sendMessageToNativeJs", map);
    }

    /* renamed from: a */
    public final View m4656a(final View view, final WindowManager windowManager) {
        cs0 m7400b = this.f34118a.m7400b(C6478yt.m4575Y0(), null, null);
        View view2 = (View) m7400b;
        view2.setVisibility(4);
        view2.setContentDescription("policy_validator");
        m7400b.mo5080g0("/sendMessageToSdk", new u50(this) { // from class: r4.rk1

            /* renamed from: a */
            public final yk1 f30606a;

            {
                this.f30606a = this;
            }

            @Override // p168r4.u50
            /* renamed from: a */
            public final void mo4240a(Object obj, Map map) {
                this.f30606a.m4652e((cs0) obj, map);
            }
        });
        m7400b.mo5080g0("/hideValidatorOverlay", new u50(this, windowManager, view) { // from class: r4.sk1

            /* renamed from: a */
            public final yk1 f31383a;

            /* renamed from: b */
            public final WindowManager f31384b;

            /* renamed from: c */
            public final View f31385c;

            {
                this.f31383a = this;
                this.f31384b = windowManager;
                this.f31385c = view;
            }

            @Override // p168r4.u50
            /* renamed from: a */
            public final void mo4240a(Object obj, Map map) {
                this.f31383a.m4653d(this.f31384b, this.f31385c, (cs0) obj, map);
            }
        });
        m7400b.mo5080g0("/open", new g60(null, null, null, null, null));
        this.f34119b.m11448i(new WeakReference(m7400b), "/loadNativeAdPolicyViolations", new u50(this, view, windowManager) { // from class: r4.uk1

            /* renamed from: a */
            public final yk1 f32305a;

            /* renamed from: b */
            public final View f32306b;

            /* renamed from: c */
            public final WindowManager f32307c;

            {
                this.f32305a = this;
                this.f32306b = view;
                this.f32307c = windowManager;
            }

            @Override // p168r4.u50
            /* renamed from: a */
            public final void mo4240a(Object obj, Map map) {
                this.f32305a.m4655b(this.f32306b, this.f32307c, (cs0) obj, map);
            }
        });
        this.f34119b.m11448i(new WeakReference(m7400b), "/showValidatorOverlay", vk1.f32739a);
        return (View) m7400b;
    }

    /* renamed from: c */
    public final /* synthetic */ void m4654c(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "validatorHtmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.f34119b.m11450g("sendMessageToNativeJs", hashMap);
    }

    /* renamed from: d */
    public final /* synthetic */ void m4653d(WindowManager windowManager, View view, cs0 cs0Var, Map map) {
        cm0.m12442a("Hide native ad policy validator overlay.");
        cs0Var.mo5124I().setVisibility(8);
        if (cs0Var.mo5124I().getWindowToken() != null) {
            windowManager.removeView(cs0Var.mo5124I());
        }
        cs0Var.destroy();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (this.f34120c != null && viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this.f34120c);
        }
    }

    /* renamed from: f */
    public static final int m4651f(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
        C6479yu.m4568a();
        return vl0.m6111q(context, i);
    }

    /* renamed from: b */
    public final /* synthetic */ void m4655b(final View view, final WindowManager windowManager, final cs0 cs0Var, final Map map) {
        int i;
        cs0Var.mo5057o0().mo7000s0(new qt0(this, map) { // from class: r4.xk1

            /* renamed from: a */
            public final yk1 f33620a;

            /* renamed from: b */
            public final Map f33621b;

            {
                this.f33620a = this;
                this.f33621b = map;
            }

            @Override // p168r4.qt0
            /* renamed from: R */
            public final void mo5285R(boolean z) {
                this.f33620a.m4654c(this.f33621b, z);
            }
        });
        if (map == null) {
            return;
        }
        Context context = view.getContext();
        int m4651f = m4651f(context, (String) map.get("validator_width"), ((Integer) C5592av.m12935c().m8098c(C6225rz.f30844K5)).intValue());
        int m4651f2 = m4651f(context, (String) map.get("validator_height"), ((Integer) C5592av.m12935c().m8098c(C6225rz.f30852L5)).intValue());
        int m4651f3 = m4651f(context, (String) map.get("validator_x"), 0);
        int m4651f4 = m4651f(context, (String) map.get("validator_y"), 0);
        cs0Var.mo5043u0(vt0.m6022c(m4651f, m4651f2));
        try {
            cs0Var.mo5122J().getSettings().setUseWideViewPort(((Boolean) C5592av.m12935c().m8098c(C6225rz.f30860M5)).booleanValue());
            cs0Var.mo5122J().getSettings().setLoadWithOverviewMode(((Boolean) C5592av.m12935c().m8098c(C6225rz.f30868N5)).booleanValue());
        } catch (NullPointerException unused) {
        }
        final WindowManager.LayoutParams m26378j = C0476f1.m26378j();
        m26378j.x = m4651f3;
        m26378j.y = m4651f4;
        windowManager.updateViewLayout(cs0Var.mo5124I(), m26378j);
        final String str = (String) map.get("orientation");
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            if (!Config.SITE_API_VERSION.equals(str) && !"2".equals(str)) {
                i = rect.top;
            } else {
                i = rect.bottom;
            }
            final int i2 = i - m4651f4;
            this.f34120c = new ViewTreeObserver.OnScrollChangedListener(view, cs0Var, str, m26378j, i2, windowManager) { // from class: r4.wk1

                /* renamed from: a */
                public final View f33212a;

                /* renamed from: b */
                public final cs0 f33213b;

                /* renamed from: d */
                public final String f33214d;

                /* renamed from: k */
                public final WindowManager.LayoutParams f33215k;

                /* renamed from: p */
                public final int f33216p;

                /* renamed from: q */
                public final WindowManager f33217q;

                {
                    this.f33212a = view;
                    this.f33213b = cs0Var;
                    this.f33214d = str;
                    this.f33215k = m26378j;
                    this.f33216p = i2;
                    this.f33217q = windowManager;
                }

                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    View view2 = this.f33212a;
                    cs0 cs0Var2 = this.f33213b;
                    String str2 = this.f33214d;
                    WindowManager.LayoutParams layoutParams = this.f33215k;
                    int i3 = this.f33216p;
                    WindowManager windowManager2 = this.f33217q;
                    Rect rect2 = new Rect();
                    if (view2.getGlobalVisibleRect(rect2) && cs0Var2.mo5124I().getWindowToken() != null) {
                        if (!Config.SITE_API_VERSION.equals(str2) && !"2".equals(str2)) {
                            layoutParams.y = rect2.top - i3;
                        } else {
                            layoutParams.y = rect2.bottom - i3;
                        }
                        windowManager2.updateViewLayout(cs0Var2.mo5124I(), layoutParams);
                    }
                }
            };
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnScrollChangedListener(this.f34120c);
            }
        }
        String str2 = (String) map.get("overlay_url");
        if (!TextUtils.isEmpty(str2)) {
            cs0Var.loadUrl(str2);
        }
    }
}
