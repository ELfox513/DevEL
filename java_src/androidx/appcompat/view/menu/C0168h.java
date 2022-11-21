package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.InterfaceC0170i;
import p021c.C1011d;
import p038d0.C3165d;
import p038d0.C3218s0;
import p082i.AbstractC4077d;
/* renamed from: androidx.appcompat.view.menu.h */
/* loaded from: classes.dex */
public class C0168h {

    /* renamed from: a */
    public final Context f488a;

    /* renamed from: b */
    public final C0162e f489b;

    /* renamed from: c */
    public final boolean f490c;

    /* renamed from: d */
    public final int f491d;

    /* renamed from: e */
    public final int f492e;

    /* renamed from: f */
    public View f493f;

    /* renamed from: g */
    public int f494g;

    /* renamed from: h */
    public boolean f495h;

    /* renamed from: i */
    public InterfaceC0170i.InterfaceC0171a f496i;

    /* renamed from: j */
    public AbstractC4077d f497j;

    /* renamed from: k */
    public PopupWindow.OnDismissListener f498k;

    /* renamed from: l */
    public final PopupWindow.OnDismissListener f499l;

    /* renamed from: androidx.appcompat.view.menu.h$a */
    /* loaded from: classes.dex */
    public class C0169a implements PopupWindow.OnDismissListener {
        public C0169a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            C0168h.this.mo27268e();
        }
    }

    public C0168h(Context context, C0162e c0162e, View view, boolean z, int i) {
        this(context, c0162e, view, z, i, 0);
    }

    /* renamed from: d */
    public boolean m27469d() {
        AbstractC4077d abstractC4077d = this.f497j;
        return abstractC4077d != null && abstractC4077d.mo17241a();
    }

    /* renamed from: e */
    public void mo27268e() {
        this.f497j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f498k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* renamed from: f */
    public void m27468f(View view) {
        this.f493f = view;
    }

    /* renamed from: h */
    public void m27466h(int i) {
        this.f494g = i;
    }

    /* renamed from: i */
    public void m27465i(PopupWindow.OnDismissListener onDismissListener) {
        this.f498k = onDismissListener;
    }

    public C0168h(Context context, C0162e c0162e, View view, boolean z, int i, int i2) {
        this.f494g = 8388611;
        this.f499l = new C0169a();
        this.f488a = context;
        this.f489b = c0162e;
        this.f493f = view;
        this.f490c = z;
        this.f491d = i;
        this.f492e = i2;
    }

    /* renamed from: a */
    public final AbstractC4077d m27472a() {
        boolean z;
        AbstractC4077d view$OnKeyListenerC0174k;
        Display defaultDisplay = ((WindowManager) this.f488a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        if (Math.min(point.x, point.y) >= this.f488a.getResources().getDimensionPixelSize(C1011d.f2542c)) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            view$OnKeyListenerC0174k = new View$OnKeyListenerC0153b(this.f488a, this.f493f, this.f491d, this.f492e, this.f490c);
        } else {
            view$OnKeyListenerC0174k = new View$OnKeyListenerC0174k(this.f488a, this.f489b, this.f493f, this.f491d, this.f492e, this.f490c);
        }
        view$OnKeyListenerC0174k.mo17423k(this.f489b);
        view$OnKeyListenerC0174k.mo17414t(this.f499l);
        view$OnKeyListenerC0174k.mo17419o(this.f493f);
        view$OnKeyListenerC0174k.mo27457g(this.f496i);
        view$OnKeyListenerC0174k.mo17417q(this.f495h);
        view$OnKeyListenerC0174k.mo17416r(this.f494g);
        return view$OnKeyListenerC0174k;
    }

    /* renamed from: c */
    public AbstractC4077d m27470c() {
        if (this.f497j == null) {
            this.f497j = m27472a();
        }
        return this.f497j;
    }

    /* renamed from: g */
    public void m27467g(boolean z) {
        this.f495h = z;
        AbstractC4077d abstractC4077d = this.f497j;
        if (abstractC4077d != null) {
            abstractC4077d.mo17417q(z);
        }
    }

    /* renamed from: j */
    public void m27464j(InterfaceC0170i.InterfaceC0171a interfaceC0171a) {
        this.f496i = interfaceC0171a;
        AbstractC4077d abstractC4077d = this.f497j;
        if (abstractC4077d != null) {
            abstractC4077d.mo27457g(interfaceC0171a);
        }
    }

    /* renamed from: b */
    public void m27471b() {
        if (m27469d()) {
            this.f497j.dismiss();
        }
    }

    /* renamed from: k */
    public void m27463k() {
        if (m27461m()) {
            return;
        }
        throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }

    /* renamed from: l */
    public final void m27462l(int i, int i2, boolean z, boolean z2) {
        AbstractC4077d m27470c = m27470c();
        m27470c.mo17413u(z2);
        if (z) {
            if ((C3165d.m19464a(this.f494g, C3218s0.m19338n(this.f493f)) & 7) == 5) {
                i -= this.f493f.getWidth();
            }
            m27470c.mo17415s(i);
            m27470c.mo17412v(i2);
            int i3 = (int) ((this.f488a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            m27470c.m17418p(new Rect(i - i3, i2 - i3, i + i3, i2 + i3));
        }
        m27470c.show();
    }

    /* renamed from: m */
    public boolean m27461m() {
        if (m27469d()) {
            return true;
        }
        if (this.f493f == null) {
            return false;
        }
        m27462l(0, 0, false, false);
        return true;
    }

    /* renamed from: n */
    public boolean m27460n(int i, int i2) {
        if (m27469d()) {
            return true;
        }
        if (this.f493f == null) {
            return false;
        }
        m27462l(i, i2, true, true);
        return true;
    }
}
