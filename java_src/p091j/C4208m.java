package p091j;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import p021c.C1017j;
import p038d0.C3218s0;
import p046e.C3335b;
import p056f0.C3445m;
/* renamed from: j.m */
/* loaded from: classes.dex */
public class C4208m {

    /* renamed from: a */
    public final ImageView f17937a;

    /* renamed from: b */
    public C4229r1 f17938b;

    /* renamed from: c */
    public C4229r1 f17939c;

    /* renamed from: d */
    public C4229r1 f17940d;

    /* renamed from: c */
    public ColorStateList m17102c() {
        C4229r1 c4229r1 = this.f17939c;
        if (c4229r1 != null) {
            return c4229r1.f18010a;
        }
        return null;
    }

    /* renamed from: d */
    public PorterDuff.Mode m17101d() {
        C4229r1 c4229r1 = this.f17939c;
        if (c4229r1 != null) {
            return c4229r1.f18011b;
        }
        return null;
    }

    /* renamed from: a */
    public final boolean m17104a(Drawable drawable) {
        if (this.f17940d == null) {
            this.f17940d = new C4229r1();
        }
        C4229r1 c4229r1 = this.f17940d;
        c4229r1.m17017a();
        ColorStateList m18829a = C3445m.m18829a(this.f17937a);
        if (m18829a != null) {
            c4229r1.f18013d = true;
            c4229r1.f18010a = m18829a;
        }
        PorterDuff.Mode m18828b = C3445m.m18828b(this.f17937a);
        if (m18828b != null) {
            c4229r1.f18012c = true;
            c4229r1.f18011b = m18828b;
        }
        if (!c4229r1.f18013d && !c4229r1.f18012c) {
            return false;
        }
        C4188i.m17179i(drawable, c4229r1, this.f17937a.getDrawableState());
        return true;
    }

    /* renamed from: b */
    public void m17103b() {
        Drawable drawable = this.f17937a.getDrawable();
        if (drawable != null) {
            C4237u0.m16957b(drawable);
        }
        if (drawable != null) {
            if (m17095j() && m17104a(drawable)) {
                return;
            }
            C4229r1 c4229r1 = this.f17939c;
            if (c4229r1 != null) {
                C4188i.m17179i(drawable, c4229r1, this.f17937a.getDrawableState());
                return;
            }
            C4229r1 c4229r12 = this.f17938b;
            if (c4229r12 != null) {
                C4188i.m17179i(drawable, c4229r12, this.f17937a.getDrawableState());
            }
        }
    }

    /* renamed from: e */
    public boolean m17100e() {
        Drawable background = this.f17937a.getBackground();
        if (Build.VERSION.SDK_INT >= 21 && (background instanceof RippleDrawable)) {
            return false;
        }
        return true;
    }

    /* renamed from: f */
    public void m17099f(AttributeSet attributeSet, int i) {
        int m16974m;
        Context context = this.f17937a.getContext();
        int[] iArr = C1017j.f2755R;
        C4235t1 m16966u = C4235t1.m16966u(context, attributeSet, iArr, i, 0);
        ImageView imageView = this.f17937a;
        C3218s0.m19365F(imageView, imageView.getContext(), iArr, attributeSet, m16966u.m16970q(), i, 0);
        try {
            Drawable drawable = this.f17937a.getDrawable();
            if (drawable == null && (m16974m = m16966u.m16974m(C1017j.f2759S, -1)) != -1 && (drawable = C3335b.m19101d(this.f17937a.getContext(), m16974m)) != null) {
                this.f17937a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                C4237u0.m16957b(drawable);
            }
            int i2 = C1017j.f2763T;
            if (m16966u.m16969r(i2)) {
                C3445m.m18827c(this.f17937a, m16966u.m16984c(i2));
            }
            int i3 = C1017j.f2767U;
            if (m16966u.m16969r(i3)) {
                C3445m.m18826d(this.f17937a, C4237u0.m16955d(m16966u.m16977j(i3, -1), null));
            }
        } finally {
            m16966u.m16965v();
        }
    }

    /* renamed from: g */
    public void m17098g(int i) {
        if (i != 0) {
            Drawable m19101d = C3335b.m19101d(this.f17937a.getContext(), i);
            if (m19101d != null) {
                C4237u0.m16957b(m19101d);
            }
            this.f17937a.setImageDrawable(m19101d);
        } else {
            this.f17937a.setImageDrawable(null);
        }
        m17103b();
    }

    /* renamed from: h */
    public void m17097h(ColorStateList colorStateList) {
        if (this.f17939c == null) {
            this.f17939c = new C4229r1();
        }
        C4229r1 c4229r1 = this.f17939c;
        c4229r1.f18010a = colorStateList;
        c4229r1.f18013d = true;
        m17103b();
    }

    /* renamed from: i */
    public void m17096i(PorterDuff.Mode mode) {
        if (this.f17939c == null) {
            this.f17939c = new C4229r1();
        }
        C4229r1 c4229r1 = this.f17939c;
        c4229r1.f18011b = mode;
        c4229r1.f18012c = true;
        m17103b();
    }

    /* renamed from: j */
    public final boolean m17095j() {
        int i = Build.VERSION.SDK_INT;
        if (i > 21) {
            if (this.f17938b != null) {
                return true;
            }
            return false;
        } else if (i == 21) {
            return true;
        } else {
            return false;
        }
    }

    public C4208m(ImageView imageView) {
        this.f17937a = imageView;
    }
}
