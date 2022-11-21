package p168r4;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
import p016b3.C0497k2;
import p060f4.InterfaceC3512a;
import p145p.C5270a;
import p235z2.C7601t;
/* renamed from: r4.zi1 */
/* loaded from: classes2.dex */
public final class zi1 extends i31 {

    /* renamed from: A */
    public final Context f34619A;

    /* renamed from: B */
    public final bj1 f34620B;

    /* renamed from: C */
    public final g92 f34621C;

    /* renamed from: D */
    public final Map<String, Boolean> f34622D;

    /* renamed from: E */
    public final List<View$OnAttachStateChangeListenerC6101om> f34623E;

    /* renamed from: F */
    public final C6138pm f34624F;

    /* renamed from: i */
    public final Executor f34625i;

    /* renamed from: j */
    public final ej1 f34626j;

    /* renamed from: k */
    public final mj1 f34627k;

    /* renamed from: l */
    public final ek1 f34628l;

    /* renamed from: m */
    public final jj1 f34629m;

    /* renamed from: n */
    public final pj1 f34630n;

    /* renamed from: o */
    public final or3<jn1> f34631o;

    /* renamed from: p */
    public final or3<hn1> f34632p;

    /* renamed from: q */
    public final or3<on1> f34633q;

    /* renamed from: r */
    public final or3<fn1> f34634r;

    /* renamed from: s */
    public final or3<mn1> f34635s;

    /* renamed from: t */
    public al1 f34636t;

    /* renamed from: u */
    public boolean f34637u;

    /* renamed from: v */
    public boolean f34638v;

    /* renamed from: w */
    public boolean f34639w;

    /* renamed from: x */
    public final pj0 f34640x;

    /* renamed from: y */
    public final C6300u f34641y;

    /* renamed from: z */
    public final im0 f34642z;

    public zi1(h31 h31Var, Executor executor, ej1 ej1Var, mj1 mj1Var, ek1 ek1Var, jj1 jj1Var, pj1 pj1Var, or3<jn1> or3Var, or3<hn1> or3Var2, or3<on1> or3Var3, or3<fn1> or3Var4, or3<mn1> or3Var5, pj0 pj0Var, C6300u c6300u, im0 im0Var, Context context, bj1 bj1Var, g92 g92Var, C6138pm c6138pm) {
        super(h31Var);
        this.f34625i = executor;
        this.f34626j = ej1Var;
        this.f34627k = mj1Var;
        this.f34628l = ek1Var;
        this.f34629m = jj1Var;
        this.f34630n = pj1Var;
        this.f34631o = or3Var;
        this.f34632p = or3Var2;
        this.f34633q = or3Var3;
        this.f34634r = or3Var4;
        this.f34635s = or3Var5;
        this.f34640x = pj0Var;
        this.f34641y = c6300u;
        this.f34642z = im0Var;
        this.f34619A = context;
        this.f34620B = bj1Var;
        this.f34621C = g92Var;
        this.f34622D = new HashMap();
        this.f34623E = new ArrayList();
        this.f34624F = c6138pm;
    }

    /* renamed from: A */
    public final synchronized void m4239A(String str) {
        this.f34627k.mo9369Q(str);
    }

    /* renamed from: B */
    public final synchronized void m4238B() {
        if (this.f34638v) {
            return;
        }
        this.f34627k.mo9354m();
    }

    /* renamed from: C */
    public final synchronized void m4237C(Bundle bundle) {
        this.f34627k.mo9355l0(bundle);
    }

    /* renamed from: D */
    public final synchronized boolean m4236D(Bundle bundle) {
        if (this.f34638v) {
            return true;
        }
        boolean mo9351p = this.f34627k.mo9351p(bundle);
        this.f34638v = mo9351p;
        return mo9351p;
    }

    /* renamed from: E */
    public final synchronized void m4235E(Bundle bundle) {
        this.f34627k.mo9363e0(bundle);
    }

    /* renamed from: F */
    public final synchronized void m4234F(final al1 al1Var) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31003e1)).booleanValue()) {
            C0497k2.f1630i.post(new Runnable(this, al1Var) { // from class: r4.vi1

                /* renamed from: a */
                public final zi1 f32731a;

                /* renamed from: b */
                public final al1 f32732b;

                {
                    this.f32731a = this;
                    this.f32732b = al1Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f32731a.m4206t(this.f32732b);
                }
            });
        } else {
            m4206t(al1Var);
        }
    }

    /* renamed from: G */
    public final synchronized void m4233G(final al1 al1Var) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31003e1)).booleanValue()) {
            C0497k2.f1630i.post(new Runnable(this, al1Var) { // from class: r4.wi1

                /* renamed from: a */
                public final zi1 f33197a;

                /* renamed from: b */
                public final al1 f33198b;

                {
                    this.f33197a = this;
                    this.f33198b = al1Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f33197a.m4207s(this.f33198b);
                }
            });
        } else {
            m4207s(al1Var);
        }
    }

    /* renamed from: H */
    public final synchronized void m4232H(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        this.f34628l.m11725b(this.f34636t);
        this.f34627k.mo9362f(view, view2, map, map2, z);
        if (this.f34639w && this.f34626j.m11744r() != null) {
            this.f34626j.m11744r().mo5125H0("onSdkAdUserInteractionClick", new C5270a());
        }
    }

    /* renamed from: I */
    public final synchronized void m4231I(View view, MotionEvent motionEvent, View view2) {
        this.f34627k.mo9361g(view, motionEvent, view2);
    }

    /* renamed from: J */
    public final synchronized void m4230J(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (this.f34638v) {
            return;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31019g1)).booleanValue() && this.f24946b.f28419h0) {
            for (String str : this.f34622D.keySet()) {
                if (!this.f34622D.get(str).booleanValue()) {
                    return;
                }
            }
        }
        if (z) {
            this.f34628l.m11724c(this.f34636t);
            this.f34627k.mo9357k(view, map, map2);
            this.f34638v = true;
            return;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31100q2)).booleanValue() && map != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null && m4217i(view2)) {
                    this.f34628l.m11724c(this.f34636t);
                    this.f34627k.mo9357k(view, map, map2);
                    this.f34638v = true;
                    return;
                }
            }
        }
    }

    /* renamed from: K */
    public final synchronized JSONObject m4229K(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return this.f34627k.mo9356l(view, map, map2);
    }

    /* renamed from: L */
    public final synchronized JSONObject m4228L(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return this.f34627k.mo9365d(view, map, map2);
    }

    /* renamed from: M */
    public final synchronized void m4227M(View view) {
        this.f34627k.mo9358j(view);
    }

    /* renamed from: N */
    public final synchronized void m4226N(g40 g40Var) {
        this.f34627k.mo9350q(g40Var);
    }

    /* renamed from: O */
    public final synchronized void m4225O() {
        this.f34627k.mo9353n();
    }

    /* renamed from: P */
    public final synchronized void m4224P(InterfaceC6333uw interfaceC6333uw) {
        this.f34627k.mo9368a(interfaceC6333uw);
    }

    /* renamed from: Q */
    public final synchronized void m4223Q(InterfaceC6222rw interfaceC6222rw) {
        this.f34627k.mo9366c(interfaceC6222rw);
    }

    /* renamed from: R */
    public final synchronized void m4222R() {
        this.f34627k.mo9360h();
    }

    @Override // p168r4.i31
    /* renamed from: b */
    public final synchronized void mo4220b() {
        this.f34637u = true;
        this.f34625i.execute(new Runnable(this) { // from class: r4.ui1

            /* renamed from: a */
            public final zi1 f32288a;

            {
                this.f32288a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f32288a.m4205u();
            }
        });
        super.mo4220b();
    }

    /* renamed from: g */
    public final synchronized void m4219g() {
        al1 al1Var = this.f34636t;
        if (al1Var == null) {
            cm0.m12442a("Ad should be associated with an ad view before calling recordCustomClickGesture()");
            return;
        }
        final boolean z = al1Var instanceof yj1;
        this.f34625i.execute(new Runnable(this, z) { // from class: r4.xi1

            /* renamed from: a */
            public final zi1 f33612a;

            /* renamed from: b */
            public final boolean f33613b;

            {
                this.f33612a = this;
                this.f33613b = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f33612a.m4208r(this.f33613b);
            }
        });
    }

    /* renamed from: h */
    public final synchronized boolean m4218h() {
        return this.f34627k.mo9359i();
    }

    /* renamed from: j */
    public final boolean m4216j() {
        return this.f34629m.mo10270c();
    }

    /* renamed from: k */
    public final String m4215k() {
        return this.f34629m.mo10267f();
    }

    /* renamed from: m */
    public final boolean m4213m() {
        return this.f34629m.mo10269d();
    }

    /* renamed from: p */
    public final bj1 m4210p() {
        return this.f34620B;
    }

    /* renamed from: q */
    public final synchronized void m4209q(InterfaceC5742ex interfaceC5742ex) {
        this.f34621C.m11248a(interfaceC5742ex);
    }

    /* renamed from: w */
    public final synchronized void m4206t(al1 al1Var) {
        Iterator<String> keys;
        View view;
        InterfaceC6152q m6683b;
        if (this.f34637u) {
            return;
        }
        this.f34636t = al1Var;
        this.f34628l.m11726a(al1Var);
        this.f34627k.mo9352o(al1Var.mo4678L0(), al1Var.mo4670i(), al1Var.mo4669k(), al1Var, al1Var);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30840K1)).booleanValue() && (m6683b = this.f34641y.m6683b()) != null) {
            m6683b.mo1018c(al1Var.mo4678L0());
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31019g1)).booleanValue()) {
            no2 no2Var = this.f24946b;
            if (no2Var.f28419h0 && (keys = no2Var.f28417g0.keys()) != null) {
                while (keys.hasNext()) {
                    String next = keys.next();
                    WeakReference<View> weakReference = this.f34636t.mo4672h().get(next);
                    this.f34622D.put(next, Boolean.FALSE);
                    if (weakReference != null && (view = weakReference.get()) != null) {
                        View$OnAttachStateChangeListenerC6101om view$OnAttachStateChangeListenerC6101om = new View$OnAttachStateChangeListenerC6101om(this.f34619A, view);
                        this.f34623E.add(view$OnAttachStateChangeListenerC6101om);
                        view$OnAttachStateChangeListenerC6101om.m8770a(new yi1(this, next));
                    }
                }
            }
        }
        if (al1Var.mo4673f() != null) {
            al1Var.mo4673f().m8770a(this.f34640x);
        }
    }

    /* renamed from: i */
    public static boolean m4217i(View view) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30909S6)).booleanValue()) {
            C7601t.m939d();
            long m26328a = C0497k2.m26328a(view);
            if (view.isShown() && view.getGlobalVisibleRect(new Rect(), null)) {
                if (m26328a >= ((Integer) C5592av.m12935c().m8098c(C6225rz.f30917T6)).intValue()) {
                    return true;
                }
            }
            return false;
        } else if (view.isShown() && view.getGlobalVisibleRect(new Rect(), null)) {
            return true;
        } else {
            return false;
        }
    }

    @Override // p168r4.i31
    /* renamed from: a */
    public final void mo4221a() {
        this.f34625i.execute(new Runnable(this) { // from class: r4.si1

            /* renamed from: a */
            public final zi1 f31376a;

            {
                this.f31376a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f31376a.m4204v();
            }
        });
        if (this.f34626j.m11762d0() != 7) {
            Executor executor = this.f34625i;
            mj1 mj1Var = this.f34627k;
            mj1Var.getClass();
            executor.execute(ti1.m6808a(mj1Var));
        }
        super.mo4221a();
    }

    /* renamed from: l */
    public final void m4214l(String str, boolean z) {
        String str2;
        re0 re0Var;
        se0 se0Var;
        if (this.f34629m.mo10269d() && !TextUtils.isEmpty(str)) {
            cs0 m11742t = this.f34626j.m11742t();
            cs0 m11744r = this.f34626j.m11744r();
            if (m11742t == null && m11744r == null) {
                return;
            }
            if (m11742t != null) {
                str2 = null;
            } else {
                str2 = "javascript";
                m11742t = m11744r;
            }
            String str3 = str2;
            if (!C7601t.m924s().mo7874e0(this.f34619A)) {
                cm0.m12437f("Failed to initialize omid in InternalNativeAd");
                return;
            }
            im0 im0Var = this.f34642z;
            int i = im0Var.f25172b;
            int i2 = im0Var.f25173d;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append(".");
            sb.append(i2);
            String sb2 = sb.toString();
            if (m11744r != null) {
                re0Var = re0.VIDEO;
                se0Var = se0.DEFINED_BY_JAVASCRIPT;
            } else {
                re0Var = re0.NATIVE_DISPLAY;
                if (this.f34626j.m11762d0() == 3) {
                    se0Var = se0.UNSPECIFIED;
                } else {
                    se0Var = se0.ONE_PIXEL;
                }
            }
            InterfaceC3512a mo7878b = C7601t.m924s().mo7878b(sb2, m11742t.mo5122J(), "", "javascript", str3, str, se0Var, re0Var, this.f24946b.f28421i0);
            if (mo7878b == null) {
                cm0.m12437f("Failed to create omid session in InternalNativeAd");
                return;
            }
            this.f34626j.m11772X(mo7878b);
            m11742t.mo5032y0(mo7878b);
            if (m11744r != null) {
                C7601t.m924s().mo7875e(mo7878b, m11744r.mo5124I());
                this.f34639w = true;
            }
            if (z) {
                C7601t.m924s().zzf(mo7878b);
                m11742t.mo5125H0("onSdkLoaded", new C5270a());
            }
        }
    }

    /* renamed from: n */
    public final void m4212n(View view) {
        InterfaceC3512a m11741u = this.f34626j.m11741u();
        cs0 m11742t = this.f34626j.m11742t();
        if (this.f34629m.mo10269d() && m11741u != null && m11742t != null && view != null) {
            C7601t.m924s().mo7875e(m11741u, view);
        }
    }

    /* renamed from: o */
    public final void m4211o(View view) {
        InterfaceC3512a m11741u = this.f34626j.m11741u();
        if (this.f34629m.mo10269d() && m11741u != null && view != null) {
            C7601t.m924s().mo7877c(m11741u, view);
        }
    }

    /* renamed from: r */
    public final /* synthetic */ void m4208r(boolean z) {
        this.f34627k.mo9367b(this.f34636t.mo4678L0(), this.f34636t.mo4672h(), this.f34636t.mo4670i(), z);
    }

    /* renamed from: u */
    public final /* synthetic */ void m4205u() {
        this.f34627k.mo9349z();
        this.f34626j.m11736z();
    }

    /* renamed from: v */
    public final /* bridge */ /* synthetic */ void m4204v() {
        try {
            int m11762d0 = this.f34626j.m11762d0();
            if (m11762d0 != 1) {
                if (m11762d0 != 2) {
                    if (m11762d0 != 3) {
                        if (m11762d0 != 6) {
                            if (m11762d0 != 7) {
                                cm0.m12440c("Wrong native template id!");
                            } else if (this.f34630n.m8305e() != null) {
                                this.f34630n.m8305e().mo12509J5(this.f34634r.m8710a());
                            }
                        } else if (this.f34630n.m8307c() != null) {
                            m4214l("Google", true);
                            this.f34630n.m8307c().mo4922W1(this.f34633q.m8710a());
                        }
                    } else if (this.f34630n.m8304f(this.f34626j.m11745q()) != null) {
                        if (this.f34626j.m11744r() != null) {
                            m4214l("Google", true);
                        }
                        this.f34630n.m8304f(this.f34626j.m11745q()).mo6919l2(this.f34635s.m8710a());
                    }
                } else if (this.f34630n.m8308b() != null) {
                    m4214l("Google", true);
                    this.f34630n.m8308b().mo10102c1(this.f34632p.m8710a());
                }
            } else if (this.f34630n.m8309a() != null) {
                m4214l("Google", true);
                this.f34630n.m8309a().mo9202K5(this.f34631o.m8710a());
            }
        } catch (RemoteException e) {
            cm0.m12439d("RemoteException when notifyAdLoad is called", e);
        }
    }

    /* renamed from: x */
    public final void m4207s(al1 al1Var) {
        this.f34627k.mo9364e(al1Var.mo4678L0(), al1Var.mo4672h());
        if (al1Var.mo4664t0() != null) {
            al1Var.mo4664t0().setClickable(false);
            al1Var.mo4664t0().removeAllViews();
        }
        if (al1Var.mo4673f() != null) {
            al1Var.mo4673f().m8769b(this.f34640x);
        }
        this.f34636t = null;
    }
}
