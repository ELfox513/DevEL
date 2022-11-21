package p168r4;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p235z2.C7601t;
/* renamed from: r4.yj1 */
/* loaded from: classes2.dex */
public final class yj1 extends v20 implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, al1 {

    /* renamed from: a */
    public final WeakReference<View> f34105a;

    /* renamed from: b */
    public final Map<String, WeakReference<View>> f34106b = new HashMap();

    /* renamed from: d */
    public final Map<String, WeakReference<View>> f34107d = new HashMap();

    /* renamed from: k */
    public final Map<String, WeakReference<View>> f34108k = new HashMap();

    /* renamed from: p */
    public zi1 f34109p;

    /* renamed from: q */
    public View$OnAttachStateChangeListenerC6101om f34110q;

    @Override // p168r4.al1
    /* renamed from: L0 */
    public final View mo4678L0() {
        return this.f34105a.get();
    }

    @Override // p168r4.w20
    /* renamed from: b */
    public final synchronized void mo4677b() {
        zi1 zi1Var = this.f34109p;
        if (zi1Var != null) {
            zi1Var.m4233G(this);
            this.f34109p = null;
        }
    }

    @Override // p168r4.w20
    /* renamed from: b0 */
    public final synchronized void mo4676b0(InterfaceC3512a interfaceC3512a) {
        Object m18740t0 = BinderC3514b.m18740t0(interfaceC3512a);
        if (!(m18740t0 instanceof zi1)) {
            cm0.m12437f("Not an instance of InternalNativeAd. This is most likely a transient error");
            return;
        }
        zi1 zi1Var = this.f34109p;
        if (zi1Var != null) {
            zi1Var.m4233G(this);
        }
        zi1 zi1Var2 = (zi1) m18740t0;
        if (zi1Var2.m4216j()) {
            this.f34109p = zi1Var2;
            zi1Var2.m4234F(this);
            this.f34109p.m4212n(mo4678L0());
            return;
        }
        cm0.m12440c("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
    }

    @Override // p168r4.al1
    /* renamed from: b2 */
    public final synchronized void mo4675b2(String str, View view, boolean z) {
        this.f34108k.put(str, new WeakReference<>(view));
        if (!"1098".equals(str) && !"3011".equals(str)) {
            this.f34106b.put(str, new WeakReference<>(view));
            view.setClickable(true);
            view.setOnClickListener(this);
            view.setOnTouchListener(this);
        }
    }

    @Override // p168r4.w20
    /* renamed from: c0 */
    public final synchronized void mo4674c0(InterfaceC3512a interfaceC3512a) {
        if (this.f34109p != null) {
            Object m18740t0 = BinderC3514b.m18740t0(interfaceC3512a);
            if (!(m18740t0 instanceof View)) {
                cm0.m12437f("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
            }
            this.f34109p.m4227M((View) m18740t0);
        }
    }

    @Override // p168r4.al1
    /* renamed from: f */
    public final View$OnAttachStateChangeListenerC6101om mo4673f() {
        return this.f34110q;
    }

    @Override // p168r4.al1
    /* renamed from: h */
    public final synchronized Map<String, WeakReference<View>> mo4672h() {
        return this.f34108k;
    }

    @Override // p168r4.al1
    /* renamed from: h0 */
    public final synchronized View mo4671h0(String str) {
        WeakReference<View> weakReference = this.f34108k.get(str);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // p168r4.al1
    /* renamed from: i */
    public final synchronized Map<String, WeakReference<View>> mo4670i() {
        return this.f34106b;
    }

    @Override // p168r4.al1
    /* renamed from: k */
    public final synchronized Map<String, WeakReference<View>> mo4669k() {
        return this.f34107d;
    }

    @Override // p168r4.al1
    /* renamed from: m */
    public final synchronized JSONObject mo4668m() {
        zi1 zi1Var = this.f34109p;
        if (zi1Var != null) {
            return zi1Var.m4228L(mo4678L0(), mo4672h(), mo4670i());
        }
        return null;
    }

    @Override // p168r4.al1
    /* renamed from: o */
    public final synchronized JSONObject mo4667o() {
        return null;
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        zi1 zi1Var = this.f34109p;
        if (zi1Var != null) {
            zi1Var.m4232H(view, mo4678L0(), mo4672h(), mo4670i(), true);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        zi1 zi1Var = this.f34109p;
        if (zi1Var != null) {
            zi1Var.m4230J(mo4678L0(), mo4672h(), mo4670i(), zi1.m4217i(mo4678L0()));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        zi1 zi1Var = this.f34109p;
        if (zi1Var != null) {
            zi1Var.m4230J(mo4678L0(), mo4672h(), mo4670i(), zi1.m4217i(mo4678L0()));
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        zi1 zi1Var = this.f34109p;
        if (zi1Var != null) {
            zi1Var.m4231I(view, motionEvent, mo4678L0());
        }
        return false;
    }

    @Override // p168r4.al1
    /* renamed from: p */
    public final synchronized String mo4666p() {
        return "1007";
    }

    @Override // p168r4.al1
    /* renamed from: q */
    public final synchronized InterfaceC3512a mo4665q() {
        return null;
    }

    @Override // p168r4.al1
    /* renamed from: t0 */
    public final FrameLayout mo4664t0() {
        return null;
    }

    public yj1(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        C7601t.m943A();
        dn0.m12083a(view, this);
        C7601t.m943A();
        dn0.m12082b(view, this);
        this.f34105a = new WeakReference<>(view);
        for (Map.Entry<String, View> entry : hashMap.entrySet()) {
            String key = entry.getKey();
            View value = entry.getValue();
            if (value != null) {
                this.f34106b.put(key, new WeakReference<>(value));
                if (!"1098".equals(key) && !"3011".equals(key)) {
                    value.setOnTouchListener(this);
                    value.setClickable(true);
                    value.setOnClickListener(this);
                }
            }
        }
        this.f34108k.putAll(this.f34106b);
        for (Map.Entry<String, View> entry2 : hashMap2.entrySet()) {
            View value2 = entry2.getValue();
            if (value2 != null) {
                this.f34107d.put(entry2.getKey(), new WeakReference<>(value2));
                value2.setOnTouchListener(this);
                value2.setClickable(false);
            }
        }
        this.f34108k.putAll(this.f34107d);
        this.f34110q = new View$OnAttachStateChangeListenerC6101om(view.getContext(), view);
    }
}
