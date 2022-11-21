package p038d0;

import android.view.View;
import android.view.ViewParent;
/* renamed from: d0.r */
/* loaded from: classes.dex */
public class C3214r {

    /* renamed from: a */
    public ViewParent f15509a;

    /* renamed from: b */
    public ViewParent f15510b;

    /* renamed from: c */
    public final View f15511c;

    /* renamed from: d */
    public boolean f15512d;

    /* renamed from: e */
    public int[] f15513e;

    /* renamed from: d */
    public void m19387d(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        m19385f(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* renamed from: e */
    public boolean m19386e(int i, int i2, int i3, int i4, int[] iArr) {
        return m19385f(i, i2, i3, i4, iArr, 0, null);
    }

    /* renamed from: f */
    public final boolean m19385f(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent m19384g;
        int i6;
        int i7;
        int[] iArr3;
        if (!m19381j() || (m19384g = m19384g(i5)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.f15511c.getLocationInWindow(iArr);
            i6 = iArr[0];
            i7 = iArr[1];
        } else {
            i6 = 0;
            i7 = 0;
        }
        if (iArr2 == null) {
            int[] m19383h = m19383h();
            m19383h[0] = 0;
            m19383h[1] = 0;
            iArr3 = m19383h;
        } else {
            iArr3 = iArr2;
        }
        C3202n1.m19417d(m19384g, this.f15511c, i, i2, i3, i4, i5, iArr3);
        if (iArr != null) {
            this.f15511c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i6;
            iArr[1] = iArr[1] - i7;
        }
        return true;
    }

    /* renamed from: i */
    public boolean m19382i(int i) {
        return m19384g(i) != null;
    }

    /* renamed from: j */
    public boolean m19381j() {
        return this.f15512d;
    }

    /* renamed from: g */
    public final ViewParent m19384g(int i) {
        if (i != 0) {
            if (i != 1) {
                return null;
            }
            return this.f15510b;
        }
        return this.f15509a;
    }

    /* renamed from: h */
    public final int[] m19383h() {
        if (this.f15513e == null) {
            this.f15513e = new int[2];
        }
        return this.f15513e;
    }

    /* renamed from: k */
    public void m19380k(boolean z) {
        if (this.f15512d) {
            C3218s0.m19352S(this.f15511c);
        }
        this.f15512d = z;
    }

    /* renamed from: l */
    public final void m19379l(int i, ViewParent viewParent) {
        if (i != 0) {
            if (i == 1) {
                this.f15510b = viewParent;
                return;
            }
            return;
        }
        this.f15509a = viewParent;
    }

    public C3214r(View view) {
        this.f15511c = view;
    }

    /* renamed from: a */
    public boolean m19390a(float f, float f2, boolean z) {
        ViewParent m19384g;
        if (!m19381j() || (m19384g = m19384g(0)) == null) {
            return false;
        }
        return C3202n1.m19420a(m19384g, this.f15511c, f, f2, z);
    }

    /* renamed from: b */
    public boolean m19389b(float f, float f2) {
        ViewParent m19384g;
        if (!m19381j() || (m19384g = m19384g(0)) == null) {
            return false;
        }
        return C3202n1.m19419b(m19384g, this.f15511c, f, f2);
    }

    /* renamed from: c */
    public boolean m19388c(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        ViewParent m19384g;
        int i4;
        int i5;
        if (!m19381j() || (m19384g = m19384g(i3)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        if (iArr2 != null) {
            this.f15511c.getLocationInWindow(iArr2);
            i4 = iArr2[0];
            i5 = iArr2[1];
        } else {
            i4 = 0;
            i5 = 0;
        }
        if (iArr == null) {
            iArr = m19383h();
        }
        iArr[0] = 0;
        iArr[1] = 0;
        C3202n1.m19418c(m19384g, this.f15511c, i, i2, iArr, i3);
        if (iArr2 != null) {
            this.f15511c.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i4;
            iArr2[1] = iArr2[1] - i5;
        }
        if (iArr[0] == 0 && iArr[1] == 0) {
            return false;
        }
        return true;
    }

    /* renamed from: m */
    public boolean m19378m(int i, int i2) {
        if (m19382i(i2)) {
            return true;
        }
        if (m19381j()) {
            View view = this.f15511c;
            for (ViewParent parent = this.f15511c.getParent(); parent != null; parent = parent.getParent()) {
                if (C3202n1.m19415f(parent, view, this.f15511c, i, i2)) {
                    m19379l(i2, parent);
                    C3202n1.m19416e(parent, view, this.f15511c, i, i2);
                    return true;
                }
                if (parent instanceof View) {
                    view = (View) parent;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: n */
    public void m19377n(int i) {
        ViewParent m19384g = m19384g(i);
        if (m19384g != null) {
            C3202n1.m19414g(m19384g, this.f15511c, i);
            m19379l(i, null);
        }
    }
}
