package p168r4;

import android.view.View;
/* renamed from: r4.gs0 */
/* loaded from: classes2.dex */
public final class gs0 implements View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final /* synthetic */ ej0 f24202a;

    /* renamed from: b */
    public final /* synthetic */ js0 f24203b;

    public gs0(js0 js0Var, ej0 ej0Var) {
        this.f24203b = js0Var;
        this.f24202a = ej0Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f24203b.m10175q(view, this.f24202a, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
