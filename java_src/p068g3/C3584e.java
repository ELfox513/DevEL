package p068g3;

import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p168r4.C5592av;
import p168r4.C5743ey;
import p168r4.C6225rz;
import p168r4.a20;
import p168r4.c20;
import p168r4.cm0;
import p168r4.s20;
import p184t2.InterfaceC6717n;
/* renamed from: g3.e */
/* loaded from: classes.dex */
public final class C3584e extends FrameLayout {

    /* renamed from: a */
    public final FrameLayout f16184a;

    /* renamed from: b */
    public final s20 f16185b;

    @RecentlyNullable
    public final View getAdvertiserView() {
        return m18568a("3005");
    }

    @RecentlyNullable
    public final View getBodyView() {
        return m18568a("3004");
    }

    @RecentlyNullable
    public final View getCallToActionView() {
        return m18568a("3002");
    }

    @RecentlyNullable
    public final View getHeadlineView() {
        return m18568a("3001");
    }

    @RecentlyNullable
    public final View getIconView() {
        return m18568a("3003");
    }

    @RecentlyNullable
    public final View getImageView() {
        return m18568a("3008");
    }

    @RecentlyNullable
    public final View getPriceView() {
        return m18568a("3007");
    }

    @RecentlyNullable
    public final View getStarRatingView() {
        return m18568a("3009");
    }

    @RecentlyNullable
    public final View getStoreView() {
        return m18568a("3006");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(@RecentlyNonNull View view) {
        if (this.f16184a == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(C3579a c3579a) {
        m18565d("3011", c3579a);
    }

    public final void setAdvertiserView(View view) {
        m18565d("3005", view);
    }

    public final void setBodyView(View view) {
        m18565d("3004", view);
    }

    public final void setCallToActionView(View view) {
        m18565d("3002", view);
    }

    public final void setHeadlineView(View view) {
        m18565d("3001", view);
    }

    public final void setIconView(View view) {
        m18565d("3003", view);
    }

    public final void setImageView(View view) {
        m18565d("3008", view);
    }

    public void setNativeAd(@RecentlyNonNull AbstractC3581c abstractC3581c) {
        if (this.f16185b != null) {
            throw null;
        }
    }

    public final void setPriceView(View view) {
        m18565d("3007", view);
    }

    public final void setStarRatingView(View view) {
        m18565d("3009", view);
    }

    public final void setStoreView(View view) {
        m18565d("3006", view);
    }

    @RecentlyNullable
    /* renamed from: a */
    public final View m18568a(@RecentlyNonNull String str) {
        s20 s20Var = this.f16185b;
        if (s20Var != null) {
            try {
                InterfaceC3512a mo7244A = s20Var.mo7244A(str);
                if (mo7244A != null) {
                    return (View) BinderC3514b.m18740t0(mo7244A);
                }
            } catch (RemoteException e) {
                cm0.m12439d("Unable to call getAssetView on delegate", e);
            }
        }
        return null;
    }

    /* renamed from: b */
    public final /* synthetic */ void m18567b(ImageView.ScaleType scaleType) {
        s20 s20Var = this.f16185b;
        if (s20Var != null && scaleType != null) {
            try {
                s20Var.mo7243I1(BinderC3514b.m18741L0(scaleType));
            } catch (RemoteException e) {
                cm0.m12439d("Unable to call setMediaViewImageScaleType on delegate", e);
            }
        }
    }

    /* renamed from: c */
    public final /* synthetic */ void m18566c(InterfaceC6717n interfaceC6717n) {
        s20 s20Var = this.f16185b;
        if (s20Var == null) {
            return;
        }
        try {
            if (interfaceC6717n instanceof C5743ey) {
                s20Var.mo7237r4(((C5743ey) interfaceC6717n).m11663a());
            } else if (interfaceC6717n == null) {
                s20Var.mo7237r4(null);
            } else {
                cm0.m12442a("Use MediaContent provided by NativeAd.getMediaContent");
            }
        } catch (RemoteException e) {
            cm0.m12439d("Unable to call setMediaContent on delegate", e);
        }
    }

    /* renamed from: d */
    public final void m18565d(String str, View view) {
        s20 s20Var = this.f16185b;
        if (s20Var != null) {
            try {
                s20Var.mo7241P6(str, BinderC3514b.m18741L0(view));
            } catch (RemoteException e) {
                cm0.m12439d("Unable to call setAssetView on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(@RecentlyNonNull MotionEvent motionEvent) {
        s20 s20Var;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30952Y1)).booleanValue() && (s20Var = this.f16185b) != null) {
            try {
                s20Var.mo7236w1(BinderC3514b.m18741L0(motionEvent));
            } catch (RemoteException e) {
                cm0.m12439d("Unable to call handleTouchEvent on delegate", e);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @RecentlyNullable
    public C3579a getAdChoicesView() {
        View m18568a = m18568a("3011");
        if (m18568a instanceof C3579a) {
            return (C3579a) m18568a;
        }
        return null;
    }

    @RecentlyNullable
    public final C3580b getMediaView() {
        View m18568a = m18568a("3010");
        if (m18568a instanceof C3580b) {
            return (C3580b) m18568a;
        }
        if (m18568a != null) {
            cm0.m12442a("View is not an instance of MediaView");
            return null;
        }
        return null;
    }

    public final void setClickConfirmingView(View view) {
        s20 s20Var = this.f16185b;
        if (s20Var != null) {
            try {
                s20Var.mo7240U(BinderC3514b.m18741L0(view));
            } catch (RemoteException e) {
                cm0.m12439d("Unable to call setClickConfirmingView on delegate", e);
            }
        }
    }

    public final void setMediaView(C3580b c3580b) {
        m18565d("3010", c3580b);
        if (c3580b == null) {
            return;
        }
        c3580b.m18589a(new a20(this) { // from class: g3.g

            /* renamed from: a */
            public final C3584e f16186a;

            {
                this.f16186a = this;
            }

            @Override // p168r4.a20
            /* renamed from: a */
            public final void mo13058a(InterfaceC6717n interfaceC6717n) {
                this.f16186a.m18566c(interfaceC6717n);
            }
        });
        c3580b.m18588b(new c20(this) { // from class: g3.h

            /* renamed from: a */
            public final C3584e f16187a;

            {
                this.f16187a = this;
            }

            @Override // p168r4.c20
            /* renamed from: a */
            public final void mo12651a(ImageView.ScaleType scaleType) {
                this.f16187a.m18567b(scaleType);
            }
        });
    }

    @Override // android.view.ViewGroup
    public final void addView(@RecentlyNonNull View view, int i, @RecentlyNonNull ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.f16184a);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(@RecentlyNonNull View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.f16184a;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(@RecentlyNonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        s20 s20Var = this.f16185b;
        if (s20Var != null) {
            try {
                s20Var.mo7242N0(BinderC3514b.m18741L0(view), i);
            } catch (RemoteException e) {
                cm0.m12439d("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        super.addView(this.f16184a);
    }
}
