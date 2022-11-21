package p037d;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import p021c.C1017j;
import p073h.AbstractC3911b;
/* renamed from: d.a */
/* loaded from: classes.dex */
public abstract class AbstractC3101a {

    /* renamed from: d.a$b */
    /* loaded from: classes.dex */
    public interface InterfaceC3103b {
        void onMenuVisibilityChanged(boolean z);
    }

    @Deprecated
    /* renamed from: d.a$c */
    /* loaded from: classes.dex */
    public static abstract class AbstractC3104c {
        /* renamed from: a */
        public abstract CharSequence m19699a();

        /* renamed from: b */
        public abstract View m19698b();

        /* renamed from: c */
        public abstract Drawable m19697c();

        /* renamed from: d */
        public abstract CharSequence m19696d();

        /* renamed from: e */
        public abstract void m19695e();
    }

    /* renamed from: f */
    public boolean m19704f() {
        return false;
    }

    /* renamed from: g */
    public abstract boolean mo19510g();

    /* renamed from: h */
    public abstract void mo19509h(boolean z);

    /* renamed from: i */
    public abstract int mo19508i();

    /* renamed from: j */
    public abstract Context mo19507j();

    /* renamed from: k */
    public boolean m19703k() {
        return false;
    }

    /* renamed from: l */
    public abstract void mo19506l(Configuration configuration);

    /* renamed from: m */
    public void m19702m() {
    }

    /* renamed from: n */
    public abstract boolean mo19505n(int i, KeyEvent keyEvent);

    /* renamed from: o */
    public boolean m19701o(KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: p */
    public boolean m19700p() {
        return false;
    }

    /* renamed from: q */
    public abstract void mo19504q(boolean z);

    /* renamed from: r */
    public abstract void mo19503r(boolean z);

    /* renamed from: s */
    public abstract void mo19502s(CharSequence charSequence);

    /* renamed from: t */
    public abstract AbstractC3911b mo19501t(AbstractC3911b.InterfaceC3912a interfaceC3912a);

    /* renamed from: d.a$a */
    /* loaded from: classes.dex */
    public static class C3102a extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f15308a;

        public C3102a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f15308a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1017j.f2886t);
            this.f15308a = obtainStyledAttributes.getInt(C1017j.f2891u, 0);
            obtainStyledAttributes.recycle();
        }

        public C3102a(int i, int i2) {
            super(i, i2);
            this.f15308a = 8388627;
        }

        public C3102a(C3102a c3102a) {
            super((ViewGroup.MarginLayoutParams) c3102a);
            this.f15308a = 0;
            this.f15308a = c3102a.f15308a;
        }

        public C3102a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f15308a = 0;
        }
    }
}
