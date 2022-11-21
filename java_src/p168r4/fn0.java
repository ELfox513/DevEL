package p168r4;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
/* renamed from: r4.fn0 */
/* loaded from: classes2.dex */
public final class fn0 extends gn0 implements ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: b */
    public final WeakReference<ViewTreeObserver.OnScrollChangedListener> f23571b;

    @Override // p168r4.gn0
    /* renamed from: a */
    public final void mo11102a(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnScrollChangedListener(this);
    }

    @Override // p168r4.gn0
    /* renamed from: b */
    public final void mo11101b(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.removeOnScrollChangedListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = this.f23571b.get();
        if (onScrollChangedListener != null) {
            onScrollChangedListener.onScrollChanged();
        } else {
            m11099d();
        }
    }

    public fn0(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        super(view);
        this.f23571b = new WeakReference<>(onScrollChangedListener);
    }
}
