package p038d0;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: d0.y */
/* loaded from: classes.dex */
public final class ViewTreeObserver$OnPreDrawListenerC3262y implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final View f15570a;

    /* renamed from: b */
    public ViewTreeObserver f15571b;

    /* renamed from: d */
    public final Runnable f15572d;

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f15571b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m19226b();
    }

    /* renamed from: a */
    public static ViewTreeObserver$OnPreDrawListenerC3262y m19227a(View view, Runnable runnable) {
        if (view != null) {
            if (runnable != null) {
                ViewTreeObserver$OnPreDrawListenerC3262y viewTreeObserver$OnPreDrawListenerC3262y = new ViewTreeObserver$OnPreDrawListenerC3262y(view, runnable);
                view.getViewTreeObserver().addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC3262y);
                view.addOnAttachStateChangeListener(viewTreeObserver$OnPreDrawListenerC3262y);
                return viewTreeObserver$OnPreDrawListenerC3262y;
            }
            throw new NullPointerException("runnable == null");
        }
        throw new NullPointerException("view == null");
    }

    /* renamed from: b */
    public void m19226b() {
        if (this.f15571b.isAlive()) {
            this.f15571b.removeOnPreDrawListener(this);
        } else {
            this.f15570a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f15570a.removeOnAttachStateChangeListener(this);
    }

    public ViewTreeObserver$OnPreDrawListenerC3262y(View view, Runnable runnable) {
        this.f15570a = view;
        this.f15571b = view.getViewTreeObserver();
        this.f15572d = runnable;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        m19226b();
        this.f15572d.run();
        return true;
    }
}
