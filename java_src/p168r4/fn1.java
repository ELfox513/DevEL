package p168r4;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import java.util.Collections;
import p016b3.C0497k2;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p220x3.C7297q;
import p235z2.C7601t;
/* renamed from: r4.fn1 */
/* loaded from: classes2.dex */
public final class fn1 extends u70 implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, y10 {

    /* renamed from: a */
    public View f23572a;

    /* renamed from: b */
    public InterfaceC6000lx f23573b;

    /* renamed from: d */
    public zi1 f23574d;

    /* renamed from: k */
    public boolean f23575k = false;

    /* renamed from: p */
    public boolean f23576p = false;

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m11464f();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m11464f();
    }

    @Override // p168r4.y10
    public final void zza() {
        C0497k2.f1630i.post(new Runnable(this) { // from class: r4.dn1

            /* renamed from: a */
            public final fn1 f22343a;

            {
                this.f22343a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    this.f22343a.mo5821b();
                } catch (RemoteException e) {
                    cm0.m12434i("#007 Could not call remote method.", e);
                }
            }
        });
    }

    @Override // p168r4.w70
    /* renamed from: M */
    public final void mo5823M(InterfaceC3512a interfaceC3512a) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        mo5819u4(interfaceC3512a, new en1(this));
    }

    @Override // p168r4.w70
    /* renamed from: a */
    public final InterfaceC6000lx mo5822a() {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        if (this.f23575k) {
            cm0.m12440c("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        return this.f23573b;
    }

    @Override // p168r4.w70
    /* renamed from: b */
    public final void mo5821b() {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        m11462g();
        zi1 zi1Var = this.f23574d;
        if (zi1Var != null) {
            zi1Var.mo4220b();
        }
        this.f23574d = null;
        this.f23572a = null;
        this.f23573b = null;
        this.f23575k = true;
    }

    @Override // p168r4.w70
    /* renamed from: d */
    public final m20 mo5820d() {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        if (this.f23575k) {
            cm0.m12440c("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        zi1 zi1Var = this.f23574d;
        if (zi1Var == null || zi1Var.m4210p() == null) {
            return null;
        }
        return this.f23574d.m4210p().m12769a();
    }

    /* renamed from: f */
    public final void m11464f() {
        View view;
        zi1 zi1Var = this.f23574d;
        if (zi1Var != null && (view = this.f23572a) != null) {
            zi1Var.m4230J(view, Collections.emptyMap(), Collections.emptyMap(), zi1.m4217i(this.f23572a));
        }
    }

    /* renamed from: g */
    public final void m11462g() {
        View view = this.f23572a;
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f23572a);
        }
    }

    @Override // p168r4.w70
    /* renamed from: u4 */
    public final void mo5819u4(InterfaceC3512a interfaceC3512a, z70 z70Var) {
        String str;
        String str2;
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        if (this.f23575k) {
            cm0.m12440c("Instream ad can not be shown after destroy().");
            m11463f7(z70Var, 2);
            return;
        }
        View view = this.f23572a;
        if (view != null && this.f23573b != null) {
            if (this.f23576p) {
                cm0.m12440c("Instream ad should not be used again.");
                m11463f7(z70Var, 1);
                return;
            }
            this.f23576p = true;
            m11462g();
            ((ViewGroup) BinderC3514b.m18740t0(interfaceC3512a)).addView(this.f23572a, new ViewGroup.LayoutParams(-1, -1));
            C7601t.m943A();
            dn0.m12083a(this.f23572a, this);
            C7601t.m943A();
            dn0.m12082b(this.f23572a, this);
            m11464f();
            try {
                z70Var.mo4411c();
                return;
            } catch (RemoteException e) {
                cm0.m12434i("#007 Could not call remote method.", e);
                return;
            }
        }
        if (view == null) {
            str = "can not get video view.";
        } else {
            str = "can not get video controller.";
        }
        if (str.length() != 0) {
            str2 = "Instream internal error: ".concat(str);
        } else {
            str2 = new String("Instream internal error: ");
        }
        cm0.m12440c(str2);
        m11463f7(z70Var, 0);
    }

    public fn1(zi1 zi1Var, ej1 ej1Var) {
        this.f23572a = ej1Var.m11755h();
        this.f23573b = ej1Var.m11760e0();
        this.f23574d = zi1Var;
        if (ej1Var.m11744r() != null) {
            ej1Var.m11744r().mo5077h0(this);
        }
    }

    /* renamed from: f7 */
    public static final void m11463f7(z70 z70Var, int i) {
        try {
            z70Var.mo4412C(i);
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }
}
