package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0162e;
import androidx.appcompat.view.menu.C0166g;
import androidx.appcompat.view.menu.InterfaceC0170i;
import androidx.appcompat.view.menu.InterfaceC0172j;
import androidx.appcompat.widget.C0227c;
import p091j.C4270z1;
/* loaded from: classes.dex */
public class ActionMenuView extends C0227c implements C0162e.InterfaceC0164b, InterfaceC0172j {

    /* renamed from: A */
    public C0162e f584A;

    /* renamed from: B */
    public Context f585B;

    /* renamed from: C */
    public int f586C;

    /* renamed from: D */
    public boolean f587D;

    /* renamed from: E */
    public C0217a f588E;

    /* renamed from: F */
    public InterfaceC0170i.InterfaceC0171a f589F;

    /* renamed from: G */
    public C0162e.InterfaceC0163a f590G;

    /* renamed from: H */
    public boolean f591H;

    /* renamed from: I */
    public int f592I;

    /* renamed from: J */
    public int f593J;

    /* renamed from: K */
    public int f594K;

    /* renamed from: L */
    public InterfaceC0188e f595L;

    /* renamed from: androidx.appcompat.widget.ActionMenuView$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0184a {
        /* renamed from: a */
        boolean mo27270a();

        /* renamed from: b */
        boolean mo27269b();
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$b */
    /* loaded from: classes.dex */
    public static class C0185b implements InterfaceC0170i.InterfaceC0171a {
        @Override // androidx.appcompat.view.menu.InterfaceC0170i.InterfaceC0171a
        /* renamed from: b */
        public void mo19575b(C0162e c0162e, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0170i.InterfaceC0171a
        /* renamed from: c */
        public boolean mo19574c(C0162e c0162e) {
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$c */
    /* loaded from: classes.dex */
    public static class C0186c extends C0227c.C0228a {
        @ViewDebug.ExportedProperty

        /* renamed from: c */
        public boolean f596c;
        @ViewDebug.ExportedProperty

        /* renamed from: d */
        public int f597d;
        @ViewDebug.ExportedProperty

        /* renamed from: e */
        public int f598e;
        @ViewDebug.ExportedProperty

        /* renamed from: f */
        public boolean f599f;
        @ViewDebug.ExportedProperty

        /* renamed from: g */
        public boolean f600g;

        /* renamed from: h */
        public boolean f601h;

        public C0186c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0186c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0186c(C0186c c0186c) {
            super(c0186c);
            this.f596c = c0186c.f596c;
        }

        public C0186c(int i, int i2) {
            super(i, i2);
            this.f596c = false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$d */
    /* loaded from: classes.dex */
    public class C0187d implements C0162e.InterfaceC0163a {
        public C0187d() {
        }

        @Override // androidx.appcompat.view.menu.C0162e.InterfaceC0163a
        /* renamed from: a */
        public boolean mo17769a(C0162e c0162e, MenuItem menuItem) {
            InterfaceC0188e interfaceC0188e = ActionMenuView.this.f595L;
            if (interfaceC0188e != null && interfaceC0188e.onMenuItemClick(menuItem)) {
                return true;
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.C0162e.InterfaceC0163a
        /* renamed from: b */
        public void mo17768b(C0162e c0162e) {
            C0162e.InterfaceC0163a interfaceC0163a = ActionMenuView.this.f590G;
            if (interfaceC0163a != null) {
                interfaceC0163a.mo17768b(c0162e);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$e */
    /* loaded from: classes.dex */
    public interface InterfaceC0188e {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    /* renamed from: C */
    public boolean m27422C(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof InterfaceC0184a)) {
            z = false | ((InterfaceC0184a) childAt).mo27270a();
        }
        if (i > 0 && (childAt2 instanceof InterfaceC0184a)) {
            return z | ((InterfaceC0184a) childAt2).mo27269b();
        }
        return z;
    }

    /* renamed from: D */
    public boolean m27421D() {
        C0217a c0217a = this.f588E;
        return c0217a != null && c0217a.m27299B();
    }

    /* renamed from: E */
    public boolean m27420E() {
        C0217a c0217a = this.f588E;
        return c0217a != null && c0217a.m27297D();
    }

    /* renamed from: F */
    public boolean m27419F() {
        C0217a c0217a = this.f588E;
        return c0217a != null && c0217a.m27296E();
    }

    /* renamed from: G */
    public boolean m27418G() {
        return this.f587D;
    }

    /* renamed from: J */
    public C0162e m27415J() {
        return this.f584A;
    }

    /* renamed from: L */
    public boolean m27413L() {
        C0217a c0217a = this.f588E;
        return c0217a != null && c0217a.m27290K();
    }

    @Override // androidx.appcompat.view.menu.C0162e.InterfaceC0164b
    /* renamed from: a */
    public boolean mo27412a(C0166g c0166g) {
        return this.f584A.m27540L(c0166g, 0);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0172j
    /* renamed from: b */
    public void mo27411b(C0162e c0162e) {
        this.f584A = c0162e;
    }

    @Override // androidx.appcompat.widget.C0227c, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0186c;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public int getPopupTheme() {
        return this.f586C;
    }

    public int getWindowAnimations() {
        return 0;
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.f588E.m27294G(z);
    }

    public void setOnMenuItemClickListener(InterfaceC0188e interfaceC0188e) {
        this.f595L = interfaceC0188e;
    }

    public void setOverflowReserved(boolean z) {
        this.f587D = z;
    }

    @Override // androidx.appcompat.widget.C0227c
    /* renamed from: z */
    public C0186c mo27260j(AttributeSet attributeSet) {
        return new C0186c(getContext(), attributeSet);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f593J = (int) (56.0f * f);
        this.f594K = (int) (f * 4.0f);
        this.f585B = context;
        this.f586C = 0;
    }

    @Override // androidx.appcompat.widget.C0227c
    /* renamed from: A */
    public C0186c mo27259k(ViewGroup.LayoutParams layoutParams) {
        C0186c c0186c;
        if (layoutParams != null) {
            if (layoutParams instanceof C0186c) {
                c0186c = new C0186c((C0186c) layoutParams);
            } else {
                c0186c = new C0186c(layoutParams);
            }
            if (c0186c.f793b <= 0) {
                c0186c.f793b = 16;
            }
            return c0186c;
        }
        return mo27261i();
    }

    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9, types: [boolean, int] */
    /* renamed from: I */
    public final void m27416I(int i, int i2) {
        boolean z;
        int i3;
        int i4;
        boolean z2;
        int i5;
        boolean z3;
        boolean z4;
        int i6;
        int i7;
        boolean z5;
        int i8;
        ?? r14;
        boolean z6;
        int i9;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingTop, -2);
        int i10 = size - paddingLeft;
        int i11 = this.f593J;
        int i12 = i10 / i11;
        int i13 = i10 % i11;
        if (i12 == 0) {
            setMeasuredDimension(i10, 0);
            return;
        }
        int i14 = i11 + (i13 / i12);
        int childCount = getChildCount();
        int i15 = 0;
        int i16 = 0;
        boolean z7 = false;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        long j = 0;
        while (i16 < childCount) {
            View childAt = getChildAt(i16);
            int i20 = size2;
            if (childAt.getVisibility() != 8) {
                boolean z8 = childAt instanceof ActionMenuItemView;
                int i21 = i17 + 1;
                if (z8) {
                    int i22 = this.f594K;
                    i8 = i21;
                    r14 = 0;
                    childAt.setPadding(i22, 0, i22, 0);
                } else {
                    i8 = i21;
                    r14 = 0;
                }
                C0186c c0186c = (C0186c) childAt.getLayoutParams();
                c0186c.f601h = r14;
                c0186c.f598e = r14;
                c0186c.f597d = r14;
                c0186c.f599f = r14;
                ((ViewGroup.MarginLayoutParams) c0186c).leftMargin = r14;
                ((ViewGroup.MarginLayoutParams) c0186c).rightMargin = r14;
                if (z8 && ((ActionMenuItemView) childAt).m27576g()) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                c0186c.f600g = z6;
                if (c0186c.f596c) {
                    i9 = 1;
                } else {
                    i9 = i12;
                }
                int m27417H = m27417H(childAt, i14, i9, childMeasureSpec, paddingTop);
                i18 = Math.max(i18, m27417H);
                if (c0186c.f599f) {
                    i19++;
                }
                if (c0186c.f596c) {
                    z7 = true;
                }
                i12 -= m27417H;
                i15 = Math.max(i15, childAt.getMeasuredHeight());
                if (m27417H == 1) {
                    j |= 1 << i16;
                    i15 = i15;
                }
                i17 = i8;
            }
            i16++;
            size2 = i20;
        }
        int i23 = size2;
        if (z7 && i17 == 2) {
            z = true;
        } else {
            z = false;
        }
        boolean z9 = false;
        while (i19 > 0 && i12 > 0) {
            int i24 = 0;
            int i25 = 0;
            int i26 = Integer.MAX_VALUE;
            long j2 = 0;
            while (i25 < childCount) {
                boolean z10 = z9;
                C0186c c0186c2 = (C0186c) getChildAt(i25).getLayoutParams();
                int i27 = i15;
                if (c0186c2.f599f) {
                    int i28 = c0186c2.f597d;
                    if (i28 < i26) {
                        j2 = 1 << i25;
                        i26 = i28;
                        i24 = 1;
                    } else if (i28 == i26) {
                        i24++;
                        j2 |= 1 << i25;
                    }
                }
                i25++;
                i15 = i27;
                z9 = z10;
            }
            z2 = z9;
            i5 = i15;
            j |= j2;
            if (i24 > i12) {
                i3 = mode;
                i4 = i10;
                break;
            }
            int i29 = i26 + 1;
            int i30 = 0;
            while (i30 < childCount) {
                View childAt2 = getChildAt(i30);
                C0186c c0186c3 = (C0186c) childAt2.getLayoutParams();
                int i31 = i10;
                int i32 = mode;
                long j3 = 1 << i30;
                if ((j2 & j3) == 0) {
                    if (c0186c3.f597d == i29) {
                        j |= j3;
                    }
                    z5 = z;
                } else {
                    if (z && c0186c3.f600g && i12 == 1) {
                        int i33 = this.f594K;
                        z5 = z;
                        childAt2.setPadding(i33 + i14, 0, i33, 0);
                    } else {
                        z5 = z;
                    }
                    c0186c3.f597d++;
                    c0186c3.f601h = true;
                    i12--;
                }
                i30++;
                mode = i32;
                i10 = i31;
                z = z5;
            }
            i15 = i5;
            z9 = true;
        }
        i3 = mode;
        i4 = i10;
        z2 = z9;
        i5 = i15;
        if (!z7 && i17 == 1) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (i12 > 0 && j != 0 && (i12 < i17 - 1 || z3 || i18 > 1)) {
            float bitCount = Long.bitCount(j);
            if (!z3) {
                if ((j & 1) != 0 && !((C0186c) getChildAt(0).getLayoutParams()).f600g) {
                    bitCount -= 0.5f;
                }
                int i34 = childCount - 1;
                if ((j & (1 << i34)) != 0 && !((C0186c) getChildAt(i34).getLayoutParams()).f600g) {
                    bitCount -= 0.5f;
                }
            }
            if (bitCount > 0.0f) {
                i7 = (int) ((i12 * i14) / bitCount);
            } else {
                i7 = 0;
            }
            z4 = z2;
            for (int i35 = 0; i35 < childCount; i35++) {
                if ((j & (1 << i35)) != 0) {
                    View childAt3 = getChildAt(i35);
                    C0186c c0186c4 = (C0186c) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        c0186c4.f598e = i7;
                        c0186c4.f601h = true;
                        if (i35 == 0 && !c0186c4.f600g) {
                            ((ViewGroup.MarginLayoutParams) c0186c4).leftMargin = (-i7) / 2;
                        }
                    } else if (c0186c4.f596c) {
                        c0186c4.f598e = i7;
                        c0186c4.f601h = true;
                        ((ViewGroup.MarginLayoutParams) c0186c4).rightMargin = (-i7) / 2;
                    } else {
                        if (i35 != 0) {
                            ((ViewGroup.MarginLayoutParams) c0186c4).leftMargin = i7 / 2;
                        }
                        if (i35 != childCount - 1) {
                            ((ViewGroup.MarginLayoutParams) c0186c4).rightMargin = i7 / 2;
                        }
                    }
                    z4 = true;
                }
            }
        } else {
            z4 = z2;
        }
        if (z4) {
            for (int i36 = 0; i36 < childCount; i36++) {
                View childAt4 = getChildAt(i36);
                C0186c c0186c5 = (C0186c) childAt4.getLayoutParams();
                if (c0186c5.f601h) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((c0186c5.f597d * i14) + c0186c5.f598e, 1073741824), childMeasureSpec);
                }
            }
        }
        if (i3 != 1073741824) {
            i6 = i5;
        } else {
            i6 = i23;
        }
        setMeasuredDimension(i4, i6);
    }

    /* renamed from: K */
    public void m27414K(InterfaceC0170i.InterfaceC0171a interfaceC0171a, C0162e.InterfaceC0163a interfaceC0163a) {
        this.f589F = interfaceC0171a;
        this.f590G = interfaceC0163a;
    }

    public Menu getMenu() {
        if (this.f584A == null) {
            Context context = getContext();
            C0162e c0162e = new C0162e(context);
            this.f584A = c0162e;
            c0162e.mo27451R(new C0187d());
            C0217a c0217a = new C0217a(context);
            this.f588E = c0217a;
            c0217a.m27291J(true);
            C0217a c0217a2 = this.f588E;
            InterfaceC0170i.InterfaceC0171a interfaceC0171a = this.f589F;
            if (interfaceC0171a == null) {
                interfaceC0171a = new C0185b();
            }
            c0217a2.mo27457g(interfaceC0171a);
            this.f584A.m27522c(this.f588E, this.f585B);
            this.f588E.m27293H(this);
        }
        return this.f584A;
    }

    @Override // androidx.appcompat.widget.C0227c, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int width;
        int i6;
        if (!this.f591H) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i7 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i8 = i3 - i;
        int paddingRight = (i8 - getPaddingRight()) - getPaddingLeft();
        boolean m16883b = C4270z1.m16883b(this);
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                C0186c c0186c = (C0186c) childAt.getLayoutParams();
                if (c0186c.f596c) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (m27422C(i11)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m16883b) {
                        i6 = getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0186c).leftMargin;
                        width = i6 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) c0186c).rightMargin;
                        i6 = width - measuredWidth;
                    }
                    int i12 = i7 - (measuredHeight / 2);
                    childAt.layout(i6, i12, width, measuredHeight + i12);
                    paddingRight -= measuredWidth;
                    i9 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0186c).leftMargin) + ((ViewGroup.MarginLayoutParams) c0186c).rightMargin;
                    m27422C(i11);
                    i10++;
                }
            }
        }
        if (childCount == 1 && i9 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i13 = (i8 / 2) - (measuredWidth2 / 2);
            int i14 = i7 - (measuredHeight2 / 2);
            childAt2.layout(i13, i14, measuredWidth2 + i13, measuredHeight2 + i14);
            return;
        }
        int i15 = i10 - (i9 ^ 1);
        if (i15 > 0) {
            i5 = paddingRight / i15;
        } else {
            i5 = 0;
        }
        int max = Math.max(0, i5);
        if (m16883b) {
            int width2 = getWidth() - getPaddingRight();
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt3 = getChildAt(i16);
                C0186c c0186c2 = (C0186c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !c0186c2.f596c) {
                    int i17 = width2 - ((ViewGroup.MarginLayoutParams) c0186c2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i18 = i7 - (measuredHeight3 / 2);
                    childAt3.layout(i17 - measuredWidth3, i18, i17, measuredHeight3 + i18);
                    width2 = i17 - ((measuredWidth3 + ((ViewGroup.MarginLayoutParams) c0186c2).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt4 = getChildAt(i19);
            C0186c c0186c3 = (C0186c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !c0186c3.f596c) {
                int i20 = paddingLeft + ((ViewGroup.MarginLayoutParams) c0186c3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i21 = i7 - (measuredHeight4 / 2);
                childAt4.layout(i20, i21, i20 + measuredWidth4, measuredHeight4 + i21);
                paddingLeft = i20 + measuredWidth4 + ((ViewGroup.MarginLayoutParams) c0186c3).rightMargin + max;
            }
        }
    }

    @Override // androidx.appcompat.widget.C0227c, android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        C0162e c0162e;
        boolean z2 = this.f591H;
        if (View.MeasureSpec.getMode(i) == 1073741824) {
            z = true;
        } else {
            z = false;
        }
        this.f591H = z;
        if (z2 != z) {
            this.f592I = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.f591H && (c0162e = this.f584A) != null && size != this.f592I) {
            this.f592I = size;
            c0162e.m27541K(true);
        }
        int childCount = getChildCount();
        if (this.f591H && childCount > 0) {
            m27416I(i, i2);
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            C0186c c0186c = (C0186c) getChildAt(i3).getLayoutParams();
            ((ViewGroup.MarginLayoutParams) c0186c).rightMargin = 0;
            ((ViewGroup.MarginLayoutParams) c0186c).leftMargin = 0;
        }
        super.onMeasure(i, i2);
    }

    public void setPopupTheme(int i) {
        if (this.f586C != i) {
            this.f586C = i;
            if (i == 0) {
                this.f585B = getContext();
            } else {
                this.f585B = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(C0217a c0217a) {
        this.f588E = c0217a;
        c0217a.m27293H(this);
    }

    /* renamed from: x */
    public void m27410x() {
        C0217a c0217a = this.f588E;
        if (c0217a != null) {
            c0217a.m27273y();
        }
    }

    @Override // androidx.appcompat.widget.C0227c
    /* renamed from: y */
    public C0186c mo27261i() {
        C0186c c0186c = new C0186c(-2, -2);
        c0186c.f793b = 16;
        return c0186c;
    }

    /* renamed from: H */
    public static int m27417H(View view, int i, int i2, int i3, int i4) {
        ActionMenuItemView actionMenuItemView;
        boolean z;
        C0186c c0186c = (C0186c) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        if (view instanceof ActionMenuItemView) {
            actionMenuItemView = (ActionMenuItemView) view;
        } else {
            actionMenuItemView = null;
        }
        boolean z2 = true;
        if (actionMenuItemView != null && actionMenuItemView.m27576g()) {
            z = true;
        } else {
            z = false;
        }
        int i5 = 2;
        if (i2 > 0 && (!z || i2 >= 2)) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i2 * i, Integer.MIN_VALUE), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i6 = measuredWidth / i;
            if (measuredWidth % i != 0) {
                i6++;
            }
            if (!z || i6 >= 2) {
                i5 = i6;
            }
        } else {
            i5 = 0;
        }
        c0186c.f599f = (c0186c.f596c || !z) ? false : false;
        c0186c.f597d = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i * i5, 1073741824), makeMeasureSpec);
        return i5;
    }

    /* renamed from: B */
    public C0186c m27423B() {
        C0186c mo27261i = mo27261i();
        mo27261i.f596c = true;
        return mo27261i;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        return this.f588E.m27300A();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0217a c0217a = this.f588E;
        if (c0217a != null) {
            c0217a.mo27288c(false);
            if (this.f588E.m27296E()) {
                this.f588E.m27299B();
                this.f588E.m27290K();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m27410x();
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        this.f588E.m27292I(drawable);
    }
}
