package p038d0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
/* renamed from: d0.p1 */
/* loaded from: classes.dex */
public final class C3208p1 {

    /* renamed from: a */
    public WeakReference<View> f15499a;

    /* renamed from: b */
    public Runnable f15500b = null;

    /* renamed from: c */
    public Runnable f15501c = null;

    /* renamed from: d */
    public int f15502d = -1;

    /* renamed from: d0.p1$a */
    /* loaded from: classes.dex */
    public class C3209a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ InterfaceC3213q1 f15503a;

        /* renamed from: b */
        public final /* synthetic */ View f15504b;

        public C3209a(InterfaceC3213q1 interfaceC3213q1, View view) {
            this.f15503a = interfaceC3213q1;
            this.f15504b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f15503a.mo17261a(this.f15504b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f15503a.mo17260b(this.f15504b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f15503a.mo17259c(this.f15504b);
        }
    }

    /* renamed from: d0.p1$b */
    /* loaded from: classes.dex */
    public class C3210b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ InterfaceC3232s1 f15506a;

        /* renamed from: b */
        public final /* synthetic */ View f15507b;

        public C3210b(InterfaceC3232s1 interfaceC3232s1, View view) {
            this.f15506a = interfaceC3232s1;
            this.f15507b = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f15506a.mo19302a(this.f15507b);
        }
    }

    /* renamed from: a */
    public C3208p1 m19402a(float f) {
        View view = this.f15499a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    /* renamed from: b */
    public void m19401b() {
        View view = this.f15499a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    /* renamed from: c */
    public long m19400c() {
        View view = this.f15499a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    /* renamed from: d */
    public C3208p1 m19399d(long j) {
        View view = this.f15499a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    /* renamed from: e */
    public C3208p1 m19398e(Interpolator interpolator) {
        View view = this.f15499a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    /* renamed from: f */
    public C3208p1 m19397f(InterfaceC3213q1 interfaceC3213q1) {
        View view = this.f15499a.get();
        if (view != null) {
            m19396g(view, interfaceC3213q1);
        }
        return this;
    }

    /* renamed from: g */
    public final void m19396g(View view, InterfaceC3213q1 interfaceC3213q1) {
        if (interfaceC3213q1 != null) {
            view.animate().setListener(new C3209a(interfaceC3213q1, view));
        } else {
            view.animate().setListener(null);
        }
    }

    /* renamed from: h */
    public C3208p1 m19395h(long j) {
        View view = this.f15499a.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    /* renamed from: i */
    public C3208p1 m19394i(InterfaceC3232s1 interfaceC3232s1) {
        View view = this.f15499a.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            C3210b c3210b = null;
            if (interfaceC3232s1 != null) {
                c3210b = new C3210b(interfaceC3232s1, view);
            }
            view.animate().setUpdateListener(c3210b);
        }
        return this;
    }

    /* renamed from: j */
    public void m19393j() {
        View view = this.f15499a.get();
        if (view != null) {
            view.animate().start();
        }
    }

    /* renamed from: k */
    public C3208p1 m19392k(float f) {
        View view = this.f15499a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }

    public C3208p1(View view) {
        this.f15499a = new WeakReference<>(view);
    }
}
