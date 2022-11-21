package p168r4;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import p016b3.C0476f1;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p235z2.C7601t;
/* renamed from: r4.ak1 */
/* loaded from: classes2.dex */
public final class ak1 extends r20 implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, al1 {

    /* renamed from: y */
    public static final o33<String> f20521y = o33.m8897t("2011", "1009", "3010");

    /* renamed from: a */
    public final String f20522a;

    /* renamed from: d */
    public FrameLayout f20524d;

    /* renamed from: k */
    public FrameLayout f20525k;

    /* renamed from: p */
    public final i83 f20526p;

    /* renamed from: q */
    public View f20527q;

    /* renamed from: s */
    public zi1 f20529s;

    /* renamed from: t */
    public View$OnAttachStateChangeListenerC6101om f20530t;

    /* renamed from: v */
    public m20 f20532v;

    /* renamed from: w */
    public boolean f20533w;

    /* renamed from: b */
    public Map<String, WeakReference<View>> f20523b = new HashMap();

    /* renamed from: u */
    public InterfaceC3512a f20531u = null;

    /* renamed from: x */
    public boolean f20534x = false;

    /* renamed from: r */
    public final int f20528r = 213806000;

    @Override // p168r4.s20
    /* renamed from: A */
    public final synchronized InterfaceC3512a mo7244A(String str) {
        return BinderC3514b.m18741L0(mo4671h0(str));
    }

    @Override // p168r4.s20
    /* renamed from: I1 */
    public final synchronized void mo7243I1(InterfaceC3512a interfaceC3512a) {
        if (this.f20534x) {
            return;
        }
        this.f20531u = interfaceC3512a;
    }

    @Override // p168r4.al1
    /* renamed from: L0 */
    public final /* bridge */ /* synthetic */ View mo4678L0() {
        return this.f20524d;
    }

    @Override // p168r4.s20
    /* renamed from: N0 */
    public final synchronized void mo7242N0(InterfaceC3512a interfaceC3512a, int i) {
    }

    @Override // p168r4.s20
    /* renamed from: P6 */
    public final synchronized void mo7241P6(String str, InterfaceC3512a interfaceC3512a) {
        mo4675b2(str, (View) BinderC3514b.m18740t0(interfaceC3512a), true);
    }

    @Override // p168r4.s20
    /* renamed from: U */
    public final synchronized void mo7240U(InterfaceC3512a interfaceC3512a) {
        this.f20529s.m4227M((View) BinderC3514b.m18740t0(interfaceC3512a));
    }

    @Override // p168r4.al1
    /* renamed from: b2 */
    public final synchronized void mo4675b2(String str, View view, boolean z) {
        if (this.f20534x) {
            return;
        }
        if (view == null) {
            this.f20523b.remove(str);
            return;
        }
        this.f20523b.put(str, new WeakReference<>(view));
        if (!"1098".equals(str) && !"3011".equals(str)) {
            if (C0476f1.m26387a(this.f20528r)) {
                view.setOnTouchListener(this);
            }
            view.setClickable(true);
            view.setOnClickListener(this);
        }
    }

    @Override // p168r4.s20
    /* renamed from: c */
    public final synchronized void mo7239c() {
        if (this.f20534x) {
            return;
        }
        zi1 zi1Var = this.f20529s;
        if (zi1Var != null) {
            zi1Var.m4233G(this);
            this.f20529s = null;
        }
        this.f20523b.clear();
        this.f20524d.removeAllViews();
        this.f20525k.removeAllViews();
        this.f20523b = null;
        this.f20524d = null;
        this.f20525k = null;
        this.f20527q = null;
        this.f20530t = null;
        this.f20534x = true;
    }

    @Override // p168r4.s20
    /* renamed from: c0 */
    public final synchronized void mo7238c0(InterfaceC3512a interfaceC3512a) {
        if (this.f20534x) {
            return;
        }
        Object m18740t0 = BinderC3514b.m18740t0(interfaceC3512a);
        if (!(m18740t0 instanceof zi1)) {
            cm0.m12437f("Not an instance of native engine. This is most likely a transient error");
            return;
        }
        zi1 zi1Var = this.f20529s;
        if (zi1Var != null) {
            zi1Var.m4233G(this);
        }
        m13006r();
        zi1 zi1Var2 = (zi1) m18740t0;
        this.f20529s = zi1Var2;
        zi1Var2.m4234F(this);
        this.f20529s.m4212n(this.f20524d);
        this.f20529s.m4211o(this.f20525k);
        if (this.f20533w) {
            this.f20529s.m4210p().m12768b(this.f20532v);
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31108r2)).booleanValue() && !TextUtils.isEmpty(this.f20529s.m4215k())) {
            m13007f7(this.f20529s.m4215k());
        }
    }

    @Override // p168r4.al1
    /* renamed from: f */
    public final View$OnAttachStateChangeListenerC6101om mo4673f() {
        return this.f20530t;
    }

    /* renamed from: f7 */
    public final synchronized void m13007f7(String str) {
        DisplayMetrics displayMetrics;
        View frameLayout = new FrameLayout(this.f20525k.getContext());
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        Context context = this.f20525k.getContext();
        frameLayout.setClickable(false);
        frameLayout.setFocusable(false);
        if (!TextUtils.isEmpty(str)) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            Resources resources = context.getResources();
            if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
                try {
                    byte[] decode = Base64.decode(str, 0);
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(BitmapFactory.decodeByteArray(decode, 0, decode.length));
                    bitmapDrawable.setTargetDensity(displayMetrics.densityDpi);
                    Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                    bitmapDrawable.setTileModeXY(tileMode, tileMode);
                    frameLayout.setBackground(bitmapDrawable);
                } catch (IllegalArgumentException e) {
                    cm0.m12436g("Encountered invalid base64 watermark.", e);
                }
            }
        }
        this.f20525k.addView(frameLayout);
    }

    @Override // p168r4.al1
    /* renamed from: h */
    public final synchronized Map<String, WeakReference<View>> mo4672h() {
        return this.f20523b;
    }

    @Override // p168r4.al1
    /* renamed from: h0 */
    public final synchronized View mo4671h0(String str) {
        if (this.f20534x) {
            return null;
        }
        WeakReference<View> weakReference = this.f20523b.get(str);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // p168r4.al1
    /* renamed from: i */
    public final synchronized Map<String, WeakReference<View>> mo4670i() {
        return this.f20523b;
    }

    @Override // p168r4.al1
    /* renamed from: k */
    public final synchronized Map<String, WeakReference<View>> mo4669k() {
        return null;
    }

    @Override // p168r4.al1
    /* renamed from: m */
    public final synchronized JSONObject mo4668m() {
        zi1 zi1Var = this.f20529s;
        if (zi1Var != null) {
            return zi1Var.m4228L(this.f20524d, mo4672h(), mo4670i());
        }
        return null;
    }

    @Override // p168r4.al1
    /* renamed from: o */
    public final synchronized JSONObject mo4667o() {
        zi1 zi1Var = this.f20529s;
        if (zi1Var != null) {
            return zi1Var.m4229K(this.f20524d, mo4672h(), mo4670i());
        }
        return null;
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        zi1 zi1Var = this.f20529s;
        if (zi1Var != null) {
            zi1Var.m4225O();
            this.f20529s.m4232H(view, this.f20524d, mo4672h(), mo4670i(), false);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        zi1 zi1Var = this.f20529s;
        if (zi1Var != null) {
            zi1Var.m4230J(this.f20524d, mo4672h(), mo4670i(), zi1.m4217i(this.f20524d));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        zi1 zi1Var = this.f20529s;
        if (zi1Var != null) {
            zi1Var.m4230J(this.f20524d, mo4672h(), mo4670i(), zi1.m4217i(this.f20524d));
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        zi1 zi1Var = this.f20529s;
        if (zi1Var != null) {
            zi1Var.m4231I(view, motionEvent, this.f20524d);
        }
        return false;
    }

    @Override // p168r4.al1
    /* renamed from: p */
    public final synchronized String mo4666p() {
        return this.f20522a;
    }

    @Override // p168r4.al1
    /* renamed from: q */
    public final InterfaceC3512a mo4665q() {
        return this.f20531u;
    }

    /* renamed from: r */
    public final synchronized void m13006r() {
        this.f20526p.execute(new Runnable(this) { // from class: r4.zj1

            /* renamed from: a */
            public final ak1 f34651a;

            {
                this.f34651a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f34651a.m13005w();
            }
        });
    }

    @Override // p168r4.s20
    /* renamed from: r4 */
    public final synchronized void mo7237r4(m20 m20Var) {
        if (this.f20534x) {
            return;
        }
        this.f20533w = true;
        this.f20532v = m20Var;
        zi1 zi1Var = this.f20529s;
        if (zi1Var != null) {
            zi1Var.m4210p().m12768b(m20Var);
        }
    }

    @Override // p168r4.al1
    /* renamed from: t0 */
    public final FrameLayout mo4664t0() {
        return this.f20525k;
    }

    /* renamed from: w */
    public final /* synthetic */ void m13005w() {
        if (this.f20527q == null) {
            View view = new View(this.f20524d.getContext());
            this.f20527q = view;
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
        }
        if (this.f20524d != this.f20527q.getParent()) {
            this.f20524d.addView(this.f20527q);
        }
    }

    public ak1(FrameLayout frameLayout, FrameLayout frameLayout2, int i) {
        this.f20524d = frameLayout;
        this.f20525k = frameLayout2;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        String str = "3012";
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = "1007";
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = "2009";
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
        }
        this.f20522a = str;
        C7601t.m943A();
        dn0.m12083a(frameLayout, this);
        C7601t.m943A();
        dn0.m12082b(frameLayout, this);
        this.f20526p = qm0.f30194e;
        this.f20530t = new View$OnAttachStateChangeListenerC6101om(this.f20524d.getContext(), this.f20524d);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    @Override // p168r4.s20
    /* renamed from: w1 */
    public final void mo7236w1(InterfaceC3512a interfaceC3512a) {
        onTouch(this.f20524d, (MotionEvent) BinderC3514b.m18740t0(interfaceC3512a));
    }
}
