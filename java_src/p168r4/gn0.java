package p168r4;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
/* renamed from: r4.gn0 */
/* loaded from: classes2.dex */
public abstract class gn0 {

    /* renamed from: a */
    public final WeakReference<View> f24146a;

    public gn0(View view) {
        this.f24146a = new WeakReference<>(view);
    }

    /* renamed from: a */
    public abstract void mo11102a(ViewTreeObserver viewTreeObserver);

    /* renamed from: b */
    public abstract void mo11101b(ViewTreeObserver viewTreeObserver);

    /* renamed from: e */
    public final ViewTreeObserver m11098e() {
        ViewTreeObserver viewTreeObserver;
        View view = this.f24146a.get();
        if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null || !viewTreeObserver.isAlive()) {
            return null;
        }
        return viewTreeObserver;
    }

    /* renamed from: c */
    public final void m11100c() {
        ViewTreeObserver m11098e = m11098e();
        if (m11098e != null) {
            mo11102a(m11098e);
        }
    }

    /* renamed from: d */
    public final void m11099d() {
        ViewTreeObserver m11098e = m11098e();
        if (m11098e != null) {
            mo11101b(m11098e);
        }
    }
}
