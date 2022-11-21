package p091j;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import p021c.C1017j;
import p038d0.C3218s0;
/* renamed from: j.d */
/* loaded from: classes.dex */
public class C4172d {

    /* renamed from: a */
    public final View f17866a;

    /* renamed from: d */
    public C4229r1 f17869d;

    /* renamed from: e */
    public C4229r1 f17870e;

    /* renamed from: f */
    public C4229r1 f17871f;

    /* renamed from: c */
    public int f17868c = -1;

    /* renamed from: b */
    public final C4188i f17867b = C4188i.m17186b();

    /* renamed from: c */
    public ColorStateList m17220c() {
        C4229r1 c4229r1 = this.f17870e;
        if (c4229r1 != null) {
            return c4229r1.f18010a;
        }
        return null;
    }

    /* renamed from: d */
    public PorterDuff.Mode m17219d() {
        C4229r1 c4229r1 = this.f17870e;
        if (c4229r1 != null) {
            return c4229r1.f18011b;
        }
        return null;
    }

    /* renamed from: f */
    public void m17217f(Drawable drawable) {
        this.f17868c = -1;
        m17215h(null);
        m17221b();
    }

    /* renamed from: a */
    public final boolean m17222a(Drawable drawable) {
        if (this.f17871f == null) {
            this.f17871f = new C4229r1();
        }
        C4229r1 c4229r1 = this.f17871f;
        c4229r1.m17017a();
        ColorStateList m19341k = C3218s0.m19341k(this.f17866a);
        if (m19341k != null) {
            c4229r1.f18013d = true;
            c4229r1.f18010a = m19341k;
        }
        PorterDuff.Mode m19340l = C3218s0.m19340l(this.f17866a);
        if (m19340l != null) {
            c4229r1.f18012c = true;
            c4229r1.f18011b = m19340l;
        }
        if (!c4229r1.f18013d && !c4229r1.f18012c) {
            return false;
        }
        C4188i.m17179i(drawable, c4229r1, this.f17866a.getDrawableState());
        return true;
    }

    /* renamed from: b */
    public void m17221b() {
        Drawable background = this.f17866a.getBackground();
        if (background != null) {
            if (m17212k() && m17222a(background)) {
                return;
            }
            C4229r1 c4229r1 = this.f17870e;
            if (c4229r1 != null) {
                C4188i.m17179i(background, c4229r1, this.f17866a.getDrawableState());
                return;
            }
            C4229r1 c4229r12 = this.f17869d;
            if (c4229r12 != null) {
                C4188i.m17179i(background, c4229r12, this.f17866a.getDrawableState());
            }
        }
    }

    /* renamed from: e */
    public void m17218e(AttributeSet attributeSet, int i) {
        Context context = this.f17866a.getContext();
        int[] iArr = C1017j.f2695D3;
        C4235t1 m16966u = C4235t1.m16966u(context, attributeSet, iArr, i, 0);
        View view = this.f17866a;
        C3218s0.m19365F(view, view.getContext(), iArr, attributeSet, m16966u.m16970q(), i, 0);
        try {
            int i2 = C1017j.f2700E3;
            if (m16966u.m16969r(i2)) {
                this.f17868c = m16966u.m16974m(i2, -1);
                ColorStateList m17182f = this.f17867b.m17182f(this.f17866a.getContext(), this.f17868c);
                if (m17182f != null) {
                    m17215h(m17182f);
                }
            }
            int i3 = C1017j.f2705F3;
            if (m16966u.m16969r(i3)) {
                C3218s0.m19361J(this.f17866a, m16966u.m16984c(i3));
            }
            int i4 = C1017j.f2710G3;
            if (m16966u.m16969r(i4)) {
                C3218s0.m19360K(this.f17866a, C4237u0.m16955d(m16966u.m16977j(i4, -1), null));
            }
        } finally {
            m16966u.m16965v();
        }
    }

    /* renamed from: g */
    public void m17216g(int i) {
        ColorStateList colorStateList;
        this.f17868c = i;
        C4188i c4188i = this.f17867b;
        if (c4188i != null) {
            colorStateList = c4188i.m17182f(this.f17866a.getContext(), i);
        } else {
            colorStateList = null;
        }
        m17215h(colorStateList);
        m17221b();
    }

    /* renamed from: h */
    public void m17215h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f17869d == null) {
                this.f17869d = new C4229r1();
            }
            C4229r1 c4229r1 = this.f17869d;
            c4229r1.f18010a = colorStateList;
            c4229r1.f18013d = true;
        } else {
            this.f17869d = null;
        }
        m17221b();
    }

    /* renamed from: i */
    public void m17214i(ColorStateList colorStateList) {
        if (this.f17870e == null) {
            this.f17870e = new C4229r1();
        }
        C4229r1 c4229r1 = this.f17870e;
        c4229r1.f18010a = colorStateList;
        c4229r1.f18013d = true;
        m17221b();
    }

    /* renamed from: j */
    public void m17213j(PorterDuff.Mode mode) {
        if (this.f17870e == null) {
            this.f17870e = new C4229r1();
        }
        C4229r1 c4229r1 = this.f17870e;
        c4229r1.f18011b = mode;
        c4229r1.f18012c = true;
        m17221b();
    }

    /* renamed from: k */
    public final boolean m17212k() {
        int i = Build.VERSION.SDK_INT;
        if (i > 21) {
            if (this.f17869d != null) {
                return true;
            }
            return false;
        } else if (i == 21) {
            return true;
        } else {
            return false;
        }
    }

    public C4172d(View view) {
        this.f17866a = view;
    }
}
