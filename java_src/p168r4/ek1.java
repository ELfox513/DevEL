package p168r4;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.prineside.tdi2.Config;
import java.util.concurrent.Executor;
import p016b3.C0476f1;
import p016b3.C0543w1;
import p016b3.InterfaceC0549y1;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p202v2.C6986i;
/* renamed from: r4.ek1 */
/* loaded from: classes2.dex */
public final class ek1 {

    /* renamed from: a */
    public final InterfaceC0549y1 f23047a;

    /* renamed from: b */
    public final hp2 f23048b;

    /* renamed from: c */
    public final jj1 f23049c;

    /* renamed from: d */
    public final ej1 f23050d;

    /* renamed from: e */
    public final pk1 f23051e;

    /* renamed from: f */
    public final yk1 f23052f;

    /* renamed from: g */
    public final Executor f23053g;

    /* renamed from: h */
    public final Executor f23054h;

    /* renamed from: i */
    public final d20 f23055i;

    /* renamed from: j */
    public final bj1 f23056j;

    public ek1(InterfaceC0549y1 interfaceC0549y1, hp2 hp2Var, jj1 jj1Var, ej1 ej1Var, pk1 pk1Var, yk1 yk1Var, Executor executor, Executor executor2, bj1 bj1Var) {
        this.f23047a = interfaceC0549y1;
        this.f23048b = hp2Var;
        this.f23055i = hp2Var.f24784i;
        this.f23049c = jj1Var;
        this.f23050d = ej1Var;
        this.f23051e = pk1Var;
        this.f23052f = yk1Var;
        this.f23053g = executor;
        this.f23054h = executor2;
        this.f23056j = bj1Var;
    }

    /* renamed from: a */
    public final void m11726a(final al1 al1Var) {
        this.f23053g.execute(new Runnable(this, al1Var) { // from class: r4.bk1

            /* renamed from: a */
            public final ek1 f21088a;

            /* renamed from: b */
            public final al1 f21089b;

            {
                this.f21088a = this;
                this.f21089b = al1Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f21088a.m11721f(this.f21089b);
            }
        });
    }

    /* renamed from: d */
    public final boolean m11723d(ViewGroup viewGroup) {
        return m11719h(viewGroup, true);
    }

    /* renamed from: e */
    public final /* synthetic */ void m11722e(ViewGroup viewGroup) {
        boolean z;
        if (viewGroup != null) {
            z = true;
        } else {
            z = false;
        }
        if (this.f23050d.m11755h() != null) {
            if (this.f23050d.m11762d0() != 2 && this.f23050d.m11762d0() != 1) {
                if (this.f23050d.m11762d0() == 6) {
                    this.f23047a.mo26210Y0(this.f23048b.f24781f, "2", z);
                    this.f23047a.mo26210Y0(this.f23048b.f24781f, Config.SITE_API_VERSION, z);
                    return;
                }
                return;
            }
            this.f23047a.mo26210Y0(this.f23048b.f24781f, String.valueOf(this.f23050d.m11762d0()), z);
        }
    }

    /* renamed from: g */
    public static void m11720g(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i != 0) {
            if (i != 2) {
                if (i != 3) {
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                    return;
                }
                layoutParams.addRule(12);
                layoutParams.addRule(9);
                return;
            }
            layoutParams.addRule(12);
            layoutParams.addRule(11);
            return;
        }
        layoutParams.addRule(10);
        layoutParams.addRule(9);
    }

    /* renamed from: b */
    public final void m11725b(al1 al1Var) {
        if (al1Var == null || this.f23051e == null || al1Var.mo4664t0() == null || !this.f23049c.mo10271b()) {
            return;
        }
        try {
            al1Var.mo4664t0().addView(this.f23051e.m8291a());
        } catch (ns0 e) {
            C0543w1.m26250l("web view can not be obtained", e);
        }
    }

    /* renamed from: c */
    public final void m11724c(al1 al1Var) {
        if (al1Var == null) {
            return;
        }
        Context context = al1Var.mo4678L0().getContext();
        if (!C0476f1.m26379i(context, this.f23049c.f26039a)) {
            return;
        }
        if (!(context instanceof Activity)) {
            cm0.m12442a("Activity context is needed for policy validator.");
        } else if (this.f23052f != null && al1Var.mo4664t0() != null) {
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                windowManager.addView(this.f23052f.m4656a(al1Var.mo4664t0(), windowManager), C0476f1.m26378j());
            } catch (ns0 e) {
                C0543w1.m26250l("web view can not be obtained", e);
            }
        }
    }

    /* renamed from: f */
    public final /* synthetic */ void m11721f(al1 al1Var) {
        ViewGroup viewGroup;
        View view;
        final ViewGroup viewGroup2;
        m20 m12769a;
        Drawable drawable;
        Context context = null;
        if (this.f23049c.mo10268e() || this.f23049c.mo10270c()) {
            String[] strArr = {"1098", "3011"};
            for (int i = 0; i < 2; i++) {
                View mo4671h0 = al1Var.mo4671h0(strArr[i]);
                if (mo4671h0 != null && (mo4671h0 instanceof ViewGroup)) {
                    viewGroup = (ViewGroup) mo4671h0;
                    break;
                }
            }
        }
        viewGroup = null;
        Context context2 = al1Var.mo4678L0().getContext();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.f23050d.m11756g0() != null) {
            view = this.f23050d.m11756g0();
            d20 d20Var = this.f23055i;
            if (d20Var != null && viewGroup == null) {
                m11720g(layoutParams, d20Var.f22046p);
                view.setLayoutParams(layoutParams);
            }
        } else if (!(this.f23050d.m11758f0() instanceof w10)) {
            view = null;
        } else {
            w10 w10Var = (w10) this.f23050d.m11758f0();
            if (viewGroup == null) {
                m11720g(layoutParams, w10Var.m5937j());
            }
            View x10Var = new x10(context2, w10Var, layoutParams);
            x10Var.setContentDescription((CharSequence) C5592av.m12935c().m8098c(C6225rz.f31068m2));
            view = x10Var;
        }
        if (view != null) {
            if (view.getParent() instanceof ViewGroup) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                viewGroup.addView(view);
            } else {
                C6986i c6986i = new C6986i(al1Var.mo4678L0().getContext());
                c6986i.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                c6986i.addView(view);
                FrameLayout mo4664t0 = al1Var.mo4664t0();
                if (mo4664t0 != null) {
                    mo4664t0.addView(c6986i);
                }
            }
            al1Var.mo4675b2(al1Var.mo4666p(), view, true);
        }
        o33<String> o33Var = ak1.f20521y;
        int size = o33Var.size();
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                View mo4671h02 = al1Var.mo4671h0(o33Var.get(i2));
                i2++;
                if (mo4671h02 instanceof ViewGroup) {
                    viewGroup2 = (ViewGroup) mo4671h02;
                    break;
                }
            } else {
                viewGroup2 = null;
                break;
            }
        }
        this.f23054h.execute(new Runnable(this, viewGroup2) { // from class: r4.ck1

            /* renamed from: a */
            public final ek1 f21569a;

            /* renamed from: b */
            public final ViewGroup f21570b;

            {
                this.f21569a = this;
                this.f21570b = viewGroup2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f21569a.m11722e(this.f21570b);
            }
        });
        if (viewGroup2 != null) {
            if (m11719h(viewGroup2, true)) {
                if (this.f23050d.m11744r() != null) {
                    this.f23050d.m11744r().mo5109R0(new dk1(al1Var, viewGroup2));
                }
            } else if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30877O6)).booleanValue() && m11719h(viewGroup2, false)) {
                if (this.f23050d.m11743s() != null) {
                    this.f23050d.m11743s().mo5109R0(new dk1(al1Var, viewGroup2));
                }
            } else {
                viewGroup2.removeAllViews();
                View mo4678L0 = al1Var.mo4678L0();
                if (mo4678L0 != null) {
                    context = mo4678L0.getContext();
                }
                if (context != null && (m12769a = this.f23056j.m12769a()) != null) {
                    try {
                        InterfaceC3512a mo8316g = m12769a.mo8316g();
                        if (mo8316g != null && (drawable = (Drawable) BinderC3514b.m18740t0(mo8316g)) != null) {
                            ImageView imageView = new ImageView(context);
                            imageView.setImageDrawable(drawable);
                            InterfaceC3512a mo4665q = al1Var.mo4665q();
                            if (mo4665q != null && ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31150w4)).booleanValue()) {
                                imageView.setScaleType((ImageView.ScaleType) BinderC3514b.m18740t0(mo4665q));
                            } else {
                                imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                            }
                            imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                            viewGroup2.addView(imageView);
                        }
                    } catch (RemoteException unused) {
                        cm0.m12437f("Could not get main image drawable");
                    }
                }
            }
        }
    }

    /* renamed from: h */
    public final boolean m11719h(ViewGroup viewGroup, boolean z) {
        View m11753i;
        FrameLayout.LayoutParams layoutParams;
        if (z) {
            m11753i = this.f23050d.m11755h();
        } else {
            m11753i = this.f23050d.m11753i();
        }
        if (m11753i == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (m11753i.getParent() instanceof ViewGroup) {
            ((ViewGroup) m11753i.getParent()).removeView(m11753i);
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31084o2)).booleanValue()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
        }
        viewGroup.addView(m11753i, layoutParams);
        return true;
    }
}
