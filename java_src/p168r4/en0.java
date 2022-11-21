package p168r4;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import p235z2.C7601t;
/* renamed from: r4.en0 */
/* loaded from: classes2.dex */
public final class en0 extends gn0 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: b */
    public final WeakReference<ViewTreeObserver.OnGlobalLayoutListener> f23089b;

    @Override // p168r4.gn0
    /* renamed from: a */
    public final void mo11102a(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnGlobalLayoutListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f23089b.get();
        if (onGlobalLayoutListener != null) {
            onGlobalLayoutListener.onGlobalLayout();
        } else {
            m11099d();
        }
    }

    public en0(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        super(view);
        this.f23089b = new WeakReference<>(onGlobalLayoutListener);
    }

    @Override // p168r4.gn0
    /* renamed from: b */
    public final void mo11101b(ViewTreeObserver viewTreeObserver) {
        C7601t.m937f();
        viewTreeObserver.removeOnGlobalLayoutListener(this);
    }
}
