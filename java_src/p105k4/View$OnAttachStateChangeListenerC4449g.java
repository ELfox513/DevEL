package p105k4;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import p006a5.C0107u;
import p026c4.C1054o;
/* renamed from: k4.g */
/* loaded from: classes.dex */
public final class View$OnAttachStateChangeListenerC4449g implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public C4454l f18460a;

    /* renamed from: b */
    public C0107u f18461b;

    /* renamed from: d */
    public WeakReference<View> f18462d;

    /* renamed from: k */
    public boolean f18463k = false;

    /* renamed from: b */
    public static View$OnAttachStateChangeListenerC4449g m16475b(C4454l c4454l, int i) {
        return new View$OnAttachStateChangeListenerC4449g(c4454l, i);
    }

    /* renamed from: a */
    public final void m16476a(int i) {
        this.f18461b.f167b = i;
    }

    /* renamed from: d */
    public final Bundle m16473d() {
        return this.f18461b.m27668a();
    }

    /* renamed from: e */
    public final IBinder m16472e() {
        return this.f18461b.f166a;
    }

    /* renamed from: f */
    public final C0107u m16471f() {
        return this.f18461b;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        m16469h(view);
    }

    @TargetApi(16)
    /* renamed from: c */
    public final void m16474c(View view) {
        this.f18460a.m16453s0();
        WeakReference<View> weakReference = this.f18462d;
        if (weakReference != null) {
            View view2 = weakReference.get();
            Context m1981w = this.f18460a.m1981w();
            if (view2 == null && (m1981w instanceof Activity)) {
                view2 = ((Activity) m1981w).getWindow().getDecorView();
            }
            if (view2 != null) {
                view2.removeOnAttachStateChangeListener(this);
                ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
                if (C1054o.m24738c()) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                } else {
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
            }
        }
        this.f18462d = null;
        Context m1981w2 = this.f18460a.m1981w();
        if (view == null && (m1981w2 instanceof Activity)) {
            Activity activity = (Activity) m1981w2;
            try {
                view = activity.findViewById(16908290);
            } catch (IllegalStateException unused) {
            }
            if (view == null) {
                view = activity.getWindow().getDecorView();
            }
            C4461q.m16349b("PopupManager", "You have not specified a View to use as content view for popups. Falling back to the Activity content view. Note that this may not work as expected in multi-screen environments");
        }
        if (view != null) {
            m16469h(view);
            this.f18462d = new WeakReference<>(view);
            view.addOnAttachStateChangeListener(this);
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
            return;
        }
        C4461q.m16350a("PopupManager", "No content view usable to display popups. Popups will not be displayed in response to this client's calls. Use setViewForPopups() to set your content view.");
    }

    /* renamed from: g */
    public final void m16470g() {
        C0107u c0107u = this.f18461b;
        IBinder iBinder = c0107u.f166a;
        if (iBinder != null) {
            this.f18460a.m16461k0(iBinder, c0107u.m27668a());
            this.f18463k = false;
            return;
        }
        this.f18463k = true;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        View view;
        WeakReference<View> weakReference = this.f18462d;
        if (weakReference == null || (view = weakReference.get()) == null) {
            return;
        }
        m16469h(view);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f18460a.m16453s0();
        view.removeOnAttachStateChangeListener(this);
    }

    public View$OnAttachStateChangeListenerC4449g(C4454l c4454l, int i) {
        this.f18460a = c4454l;
        this.f18461b = new C0107u(i, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0007, code lost:
        r0 = r6.getDisplay();
     */
    @android.annotation.TargetApi(17)
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m16469h(android.view.View r6) {
        /*
            r5 = this;
            boolean r0 = p026c4.C1054o.m24737d()
            r1 = -1
            if (r0 == 0) goto L11
            android.view.Display r0 = p105k4.C4448f.m16477a(r6)
            if (r0 == 0) goto L11
            int r1 = r0.getDisplayId()
        L11:
            android.os.IBinder r0 = r6.getWindowToken()
            r2 = 2
            int[] r2 = new int[r2]
            r6.getLocationInWindow(r2)
            int r3 = r6.getWidth()
            int r6 = r6.getHeight()
            a5.u r4 = r5.f18461b
            r4.f168c = r1
            r4.f166a = r0
            r0 = 0
            r0 = r2[r0]
            r4.f169d = r0
            r1 = 1
            r1 = r2[r1]
            r4.f170e = r1
            int r0 = r0 + r3
            r4.f171f = r0
            int r1 = r1 + r6
            r4.f172g = r1
            boolean r6 = r5.f18463k
            if (r6 == 0) goto L40
            r5.m16470g()
        L40:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p105k4.View$OnAttachStateChangeListenerC4449g.m16469h(android.view.View):void");
    }
}
