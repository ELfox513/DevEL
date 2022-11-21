package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.InterfaceC0170i;
import p021c.C1011d;
import p021c.C1014g;
import p038d0.C3218s0;
import p082i.AbstractC4077d;
import p091j.C4186h1;
/* renamed from: androidx.appcompat.view.menu.k */
/* loaded from: classes.dex */
public final class View$OnKeyListenerC0174k extends AbstractC4077d implements PopupWindow.OnDismissListener, View.OnKeyListener {

    /* renamed from: G */
    public static final int f501G = C1014g.f2652m;

    /* renamed from: A */
    public ViewTreeObserver f502A;

    /* renamed from: B */
    public boolean f503B;

    /* renamed from: C */
    public boolean f504C;

    /* renamed from: D */
    public int f505D;

    /* renamed from: F */
    public boolean f507F;

    /* renamed from: b */
    public final Context f508b;

    /* renamed from: d */
    public final C0162e f509d;

    /* renamed from: k */
    public final C0161d f510k;

    /* renamed from: p */
    public final boolean f511p;

    /* renamed from: q */
    public final int f512q;

    /* renamed from: r */
    public final int f513r;

    /* renamed from: s */
    public final int f514s;

    /* renamed from: t */
    public final C4186h1 f515t;

    /* renamed from: w */
    public PopupWindow.OnDismissListener f518w;

    /* renamed from: x */
    public View f519x;

    /* renamed from: y */
    public View f520y;

    /* renamed from: z */
    public InterfaceC0170i.InterfaceC0171a f521z;

    /* renamed from: u */
    public final ViewTreeObserver.OnGlobalLayoutListener f516u = new ViewTreeObserver$OnGlobalLayoutListenerC0175a();

    /* renamed from: v */
    public final View.OnAttachStateChangeListener f517v = new View$OnAttachStateChangeListenerC0176b();

    /* renamed from: E */
    public int f506E = 0;

    /* renamed from: androidx.appcompat.view.menu.k$a */
    /* loaded from: classes.dex */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0175a implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC0175a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (View$OnKeyListenerC0174k.this.mo17241a() && !View$OnKeyListenerC0174k.this.f515t.m17227w()) {
                View view = View$OnKeyListenerC0174k.this.f520y;
                if (view != null && view.isShown()) {
                    View$OnKeyListenerC0174k.this.f515t.show();
                } else {
                    View$OnKeyListenerC0174k.this.dismiss();
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.view.menu.k$b */
    /* loaded from: classes.dex */
    public class View$OnAttachStateChangeListenerC0176b implements View.OnAttachStateChangeListener {
        public View$OnAttachStateChangeListenerC0176b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = View$OnKeyListenerC0174k.this.f502A;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    View$OnKeyListenerC0174k.this.f502A = view.getViewTreeObserver();
                }
                View$OnKeyListenerC0174k view$OnKeyListenerC0174k = View$OnKeyListenerC0174k.this;
                view$OnKeyListenerC0174k.f502A.removeGlobalOnLayoutListener(view$OnKeyListenerC0174k.f516u);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    @Override // p082i.InterfaceC4080g
    /* renamed from: a */
    public boolean mo17241a() {
        return !this.f503B && this.f515t.mo17241a();
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: c */
    public void mo27288c(boolean z) {
        this.f504C = false;
        C0161d c0161d = this.f510k;
        if (c0161d != null) {
            c0161d.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: d */
    public boolean mo27287d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: g */
    public void mo27457g(InterfaceC0170i.InterfaceC0171a interfaceC0171a) {
        this.f521z = interfaceC0171a;
    }

    @Override // p082i.InterfaceC4080g
    /* renamed from: i */
    public ListView mo17237i() {
        return this.f515t.mo17237i();
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: k */
    public void mo17423k(C0162e c0162e) {
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: o */
    public void mo17419o(View view) {
        this.f519x = view;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f503B = true;
        this.f509d.close();
        ViewTreeObserver viewTreeObserver = this.f502A;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f502A = this.f520y.getViewTreeObserver();
            }
            this.f502A.removeGlobalOnLayoutListener(this.f516u);
            this.f502A = null;
        }
        this.f520y.removeOnAttachStateChangeListener(this.f517v);
        PopupWindow.OnDismissListener onDismissListener = this.f518w;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: q */
    public void mo17417q(boolean z) {
        this.f510k.m27548d(z);
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: r */
    public void mo17416r(int i) {
        this.f506E = i;
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: s */
    public void mo17415s(int i) {
        this.f515t.m17239d(i);
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: t */
    public void mo17414t(PopupWindow.OnDismissListener onDismissListener) {
        this.f518w = onDismissListener;
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: u */
    public void mo17413u(boolean z) {
        this.f507F = z;
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: v */
    public void mo17412v(int i) {
        this.f515t.m17235k(i);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: b */
    public void mo27289b(C0162e c0162e, boolean z) {
        if (c0162e != this.f509d) {
            return;
        }
        dismiss();
        InterfaceC0170i.InterfaceC0171a interfaceC0171a = this.f521z;
        if (interfaceC0171a != null) {
            interfaceC0171a.mo19575b(c0162e, z);
        }
    }

    public View$OnKeyListenerC0174k(Context context, C0162e c0162e, View view, int i, int i2, boolean z) {
        this.f508b = context;
        this.f509d = c0162e;
        this.f511p = z;
        this.f510k = new C0161d(c0162e, LayoutInflater.from(context), z, f501G);
        this.f513r = i;
        this.f514s = i2;
        Resources resources = context.getResources();
        this.f512q = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C1011d.f2543d));
        this.f519x = view;
        this.f515t = new C4186h1(context, null, i, i2);
        c0162e.m27522c(this, context);
    }

    @Override // p082i.InterfaceC4080g
    public void dismiss() {
        if (mo17241a()) {
            this.f515t.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: j */
    public boolean mo27285j(SubMenuC0177l subMenuC0177l) {
        if (subMenuC0177l.hasVisibleItems()) {
            C0168h c0168h = new C0168h(this.f508b, subMenuC0177l, this.f520y, this.f511p, this.f513r, this.f514s);
            c0168h.m27464j(this.f521z);
            c0168h.m27467g(AbstractC4077d.m17411w(subMenuC0177l));
            c0168h.m27465i(this.f518w);
            this.f518w = null;
            this.f509d.m27518e(false);
            int m17240b = this.f515t.m17240b();
            int m17234n = this.f515t.m17234n();
            if ((Gravity.getAbsoluteGravity(this.f506E, C3218s0.m19338n(this.f519x)) & 7) == 5) {
                m17240b += this.f519x.getWidth();
            }
            if (c0168h.m27460n(m17240b, m17234n)) {
                InterfaceC0170i.InterfaceC0171a interfaceC0171a = this.f521z;
                if (interfaceC0171a != null) {
                    interfaceC0171a.mo19574c(subMenuC0177l);
                    return true;
                }
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i == 82) {
            dismiss();
            return true;
        }
        return false;
    }

    @Override // p082i.InterfaceC4080g
    public void show() {
        if (m27456y()) {
            return;
        }
        throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
    }

    /* renamed from: y */
    public final boolean m27456y() {
        View view;
        boolean z;
        if (mo17241a()) {
            return true;
        }
        if (this.f503B || (view = this.f519x) == null) {
            return false;
        }
        this.f520y = view;
        this.f515t.m17248F(this);
        this.f515t.m17247G(this);
        this.f515t.m17249E(true);
        View view2 = this.f520y;
        if (this.f502A == null) {
            z = true;
        } else {
            z = false;
        }
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f502A = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f516u);
        }
        view2.addOnAttachStateChangeListener(this.f517v);
        this.f515t.m17225y(view2);
        this.f515t.m17252B(this.f506E);
        if (!this.f504C) {
            this.f505D = AbstractC4077d.m17420n(this.f510k, null, this.f508b, this.f512q);
            this.f504C = true;
        }
        this.f515t.m17253A(this.f505D);
        this.f515t.m17250D(2);
        this.f515t.m17251C(m17421m());
        this.f515t.show();
        ListView mo17237i = this.f515t.mo17237i();
        mo17237i.setOnKeyListener(this);
        if (this.f507F && this.f509d.m27503x() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f508b).inflate(C1014g.f2651l, (ViewGroup) mo17237i, false);
            TextView textView = (TextView) frameLayout.findViewById(16908310);
            if (textView != null) {
                textView.setText(this.f509d.m27503x());
            }
            frameLayout.setEnabled(false);
            mo17237i.addHeaderView(frameLayout, null, false);
        }
        this.f515t.mo16934o(this.f510k);
        this.f515t.show();
        return true;
    }
}
