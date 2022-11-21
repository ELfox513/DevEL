package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.view.menu.AbstractC0152a;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0162e;
import androidx.appcompat.view.menu.C0166g;
import androidx.appcompat.view.menu.C0168h;
import androidx.appcompat.view.menu.InterfaceC0170i;
import androidx.appcompat.view.menu.InterfaceC0172j;
import androidx.appcompat.view.menu.SubMenuC0177l;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;
import p021c.C1008a;
import p021c.C1014g;
import p038d0.AbstractC3155b;
import p073h.C3910a;
import p082i.InterfaceC4080g;
import p091j.AbstractView$OnTouchListenerC4261x0;
import p091j.C4211n;
import p091j.C4252v1;
import p208w.C7089j;
/* renamed from: androidx.appcompat.widget.a */
/* loaded from: classes.dex */
public class C0217a extends AbstractC0152a implements AbstractC3155b.InterfaceC3156a {

    /* renamed from: A */
    public int f748A;

    /* renamed from: B */
    public int f749B;

    /* renamed from: C */
    public int f750C;

    /* renamed from: D */
    public boolean f751D;

    /* renamed from: E */
    public boolean f752E;

    /* renamed from: F */
    public boolean f753F;

    /* renamed from: G */
    public boolean f754G;

    /* renamed from: H */
    public int f755H;

    /* renamed from: I */
    public final SparseBooleanArray f756I;

    /* renamed from: J */
    public C0223e f757J;

    /* renamed from: K */
    public C0218a f758K;

    /* renamed from: L */
    public RunnableC0220c f759L;

    /* renamed from: M */
    public C0219b f760M;

    /* renamed from: N */
    public final C0224f f761N;

    /* renamed from: O */
    public int f762O;

    /* renamed from: v */
    public C0221d f763v;

    /* renamed from: w */
    public Drawable f764w;

    /* renamed from: x */
    public boolean f765x;

    /* renamed from: y */
    public boolean f766y;

    /* renamed from: z */
    public boolean f767z;

    /* renamed from: androidx.appcompat.widget.a$a */
    /* loaded from: classes.dex */
    public class C0218a extends C0168h {
        public C0218a(Context context, SubMenuC0177l subMenuC0177l, View view) {
            super(context, subMenuC0177l, view, false, C1008a.f2516l);
            if (!((C0166g) subMenuC0177l.getItem()).m27487l()) {
                View view2 = C0217a.this.f763v;
                m27468f(view2 == null ? (View) C0217a.this.f369t : view2);
            }
            m27464j(C0217a.this.f761N);
        }

        @Override // androidx.appcompat.view.menu.C0168h
        /* renamed from: e */
        public void mo27268e() {
            C0217a c0217a = C0217a.this;
            c0217a.f758K = null;
            c0217a.f762O = 0;
            super.mo27268e();
        }
    }

    /* renamed from: androidx.appcompat.widget.a$b */
    /* loaded from: classes.dex */
    public class C0219b extends ActionMenuItemView.AbstractC0151b {
        public C0219b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.AbstractC0151b
        /* renamed from: a */
        public InterfaceC4080g mo27271a() {
            C0218a c0218a = C0217a.this.f758K;
            if (c0218a != null) {
                return c0218a.m27470c();
            }
            return null;
        }
    }

    /* renamed from: androidx.appcompat.widget.a$c */
    /* loaded from: classes.dex */
    public class RunnableC0220c implements Runnable {

        /* renamed from: a */
        public C0223e f770a;

        public RunnableC0220c(C0223e c0223e) {
            this.f770a = c0223e;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0217a.this.f363d != null) {
                C0217a.this.f363d.m27520d();
            }
            View view = (View) C0217a.this.f369t;
            if (view != null && view.getWindowToken() != null && this.f770a.m27461m()) {
                C0217a.this.f757J = this.f770a;
            }
            C0217a.this.f759L = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.a$d */
    /* loaded from: classes.dex */
    public class C0221d extends C4211n implements ActionMenuView.InterfaceC0184a {

        /* renamed from: androidx.appcompat.widget.a$d$a */
        /* loaded from: classes.dex */
        public class C0222a extends AbstractView$OnTouchListenerC4261x0 {

            /* renamed from: u */
            public final /* synthetic */ C0217a f773u;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0222a(View view, C0217a c0217a) {
                super(view);
                this.f773u = c0217a;
            }

            @Override // p091j.AbstractView$OnTouchListenerC4261x0
            /* renamed from: c */
            public boolean mo16905c() {
                C0217a.this.m27290K();
                return true;
            }

            @Override // p091j.AbstractView$OnTouchListenerC4261x0
            /* renamed from: b */
            public InterfaceC4080g mo16906b() {
                C0223e c0223e = C0217a.this.f757J;
                if (c0223e == null) {
                    return null;
                }
                return c0223e.m27470c();
            }

            @Override // p091j.AbstractView$OnTouchListenerC4261x0
            /* renamed from: d */
            public boolean mo16904d() {
                C0217a c0217a = C0217a.this;
                if (c0217a.f759L != null) {
                    return false;
                }
                c0217a.m27299B();
                return true;
            }
        }

        @Override // androidx.appcompat.widget.ActionMenuView.InterfaceC0184a
        /* renamed from: a */
        public boolean mo27270a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.InterfaceC0184a
        /* renamed from: b */
        public boolean mo27269b() {
            return false;
        }

        public C0221d(Context context) {
            super(context, null, C1008a.f2515k);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            C4252v1.m16932a(this, getContentDescription());
            setOnTouchListener(new C0222a(this, C0217a.this));
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            C0217a.this.m27290K();
            return true;
        }

        @Override // android.widget.ImageView
        public boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                C7089j.m2546k(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* renamed from: androidx.appcompat.widget.a$e */
    /* loaded from: classes.dex */
    public class C0223e extends C0168h {
        public C0223e(Context context, C0162e c0162e, View view, boolean z) {
            super(context, c0162e, view, z, C1008a.f2516l);
            m27466h(8388613);
            m27464j(C0217a.this.f761N);
        }

        @Override // androidx.appcompat.view.menu.C0168h
        /* renamed from: e */
        public void mo27268e() {
            if (C0217a.this.f363d != null) {
                C0217a.this.f363d.close();
            }
            C0217a.this.f757J = null;
            super.mo27268e();
        }
    }

    /* renamed from: androidx.appcompat.widget.a$f */
    /* loaded from: classes.dex */
    public class C0224f implements InterfaceC0170i.InterfaceC0171a {
        public C0224f() {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0170i.InterfaceC0171a
        /* renamed from: b */
        public void mo19575b(C0162e c0162e, boolean z) {
            if (c0162e instanceof SubMenuC0177l) {
                c0162e.mo27455D().m27518e(false);
            }
            InterfaceC0170i.InterfaceC0171a m27565m = C0217a.this.m27565m();
            if (m27565m != null) {
                m27565m.mo19575b(c0162e, z);
            }
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0170i.InterfaceC0171a
        /* renamed from: c */
        public boolean mo19574c(C0162e c0162e) {
            if (c0162e == C0217a.this.f363d) {
                return false;
            }
            C0217a.this.f762O = ((SubMenuC0177l) c0162e).getItem().getItemId();
            InterfaceC0170i.InterfaceC0171a m27565m = C0217a.this.m27565m();
            if (m27565m == null) {
                return false;
            }
            return m27565m.mo19574c(c0162e);
        }
    }

    /* renamed from: D */
    public boolean m27297D() {
        return this.f759L != null || m27296E();
    }

    /* renamed from: E */
    public boolean m27296E() {
        C0223e c0223e = this.f757J;
        return c0223e != null && c0223e.m27469d();
    }

    /* renamed from: G */
    public void m27294G(boolean z) {
        this.f754G = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0152a
    /* renamed from: i */
    public void mo27286i(C0166g c0166g, InterfaceC0172j.InterfaceC0173a interfaceC0173a) {
        interfaceC0173a.mo27458d(c0166g, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) interfaceC0173a;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f369t);
        if (this.f760M == null) {
            this.f760M = new C0219b();
        }
        actionMenuItemView.setPopupCallback(this.f760M);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0152a
    /* renamed from: q */
    public boolean mo27281q(int i, C0166g c0166g) {
        return c0166g.m27487l();
    }

    public C0217a(Context context) {
        super(context, C1014g.f2642c, C1014g.f2641b);
        this.f756I = new SparseBooleanArray();
        this.f761N = new C0224f();
    }

    /* renamed from: A */
    public Drawable m27300A() {
        C0221d c0221d = this.f763v;
        if (c0221d != null) {
            return c0221d.getDrawable();
        }
        if (this.f765x) {
            return this.f764w;
        }
        return null;
    }

    /* renamed from: B */
    public boolean m27299B() {
        InterfaceC0172j interfaceC0172j;
        RunnableC0220c runnableC0220c = this.f759L;
        if (runnableC0220c != null && (interfaceC0172j = this.f369t) != null) {
            ((View) interfaceC0172j).removeCallbacks(runnableC0220c);
            this.f759L = null;
            return true;
        }
        C0223e c0223e = this.f757J;
        if (c0223e != null) {
            c0223e.m27471b();
            return true;
        }
        return false;
    }

    /* renamed from: C */
    public boolean m27298C() {
        C0218a c0218a = this.f758K;
        if (c0218a != null) {
            c0218a.m27471b();
            return true;
        }
        return false;
    }

    /* renamed from: F */
    public void m27295F(Configuration configuration) {
        if (!this.f751D) {
            this.f750C = C3910a.m17784b(this.f362b).m17782d();
        }
        C0162e c0162e = this.f363d;
        if (c0162e != null) {
            c0162e.m27541K(true);
        }
    }

    /* renamed from: H */
    public void m27293H(ActionMenuView actionMenuView) {
        this.f369t = actionMenuView;
        actionMenuView.mo27411b(this.f363d);
    }

    /* renamed from: I */
    public void m27292I(Drawable drawable) {
        C0221d c0221d = this.f763v;
        if (c0221d != null) {
            c0221d.setImageDrawable(drawable);
            return;
        }
        this.f765x = true;
        this.f764w = drawable;
    }

    /* renamed from: J */
    public void m27291J(boolean z) {
        this.f766y = z;
        this.f767z = true;
    }

    /* renamed from: K */
    public boolean m27290K() {
        C0162e c0162e;
        if (this.f766y && !m27296E() && (c0162e = this.f363d) != null && this.f369t != null && this.f759L == null && !c0162e.m27501z().isEmpty()) {
            RunnableC0220c runnableC0220c = new RunnableC0220c(new C0223e(this.f362b, this.f363d, this.f763v, true));
            this.f759L = runnableC0220c;
            ((View) this.f369t).post(runnableC0220c);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: d */
    public boolean mo27287d() {
        ArrayList<C0166g> arrayList;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        boolean z2;
        C0217a c0217a = this;
        C0162e c0162e = c0217a.f363d;
        View view = null;
        int i5 = 0;
        if (c0162e != null) {
            arrayList = c0162e.m27544E();
            i = arrayList.size();
        } else {
            arrayList = null;
            i = 0;
        }
        int i6 = c0217a.f750C;
        int i7 = c0217a.f749B;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) c0217a.f369t;
        boolean z3 = false;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < i; i10++) {
            C0166g c0166g = arrayList.get(i10);
            if (c0166g.m27484o()) {
                i8++;
            } else if (c0166g.m27485n()) {
                i9++;
            } else {
                z3 = true;
            }
            if (c0217a.f754G && c0166g.isActionViewExpanded()) {
                i6 = 0;
            }
        }
        if (c0217a.f766y && (z3 || i9 + i8 > i6)) {
            i6--;
        }
        int i11 = i6 - i8;
        SparseBooleanArray sparseBooleanArray = c0217a.f756I;
        sparseBooleanArray.clear();
        if (c0217a.f752E) {
            int i12 = c0217a.f755H;
            i3 = i7 / i12;
            i2 = i12 + ((i7 % i12) / i3);
        } else {
            i2 = 0;
            i3 = 0;
        }
        int i13 = 0;
        int i14 = 0;
        while (i13 < i) {
            C0166g c0166g2 = arrayList.get(i13);
            if (c0166g2.m27484o()) {
                View mo27283n = c0217a.mo27283n(c0166g2, view, viewGroup);
                if (c0217a.f752E) {
                    i3 -= ActionMenuView.m27417H(mo27283n, i2, i3, makeMeasureSpec, i5);
                } else {
                    mo27283n.measure(makeMeasureSpec, makeMeasureSpec);
                }
                int measuredWidth = mo27283n.getMeasuredWidth();
                i7 -= measuredWidth;
                if (i14 == 0) {
                    i14 = measuredWidth;
                }
                int groupId = c0166g2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                c0166g2.m27478u(true);
                i4 = i;
            } else if (c0166g2.m27485n()) {
                int groupId2 = c0166g2.getGroupId();
                boolean z4 = sparseBooleanArray.get(groupId2);
                if ((i11 > 0 || z4) && i7 > 0 && (!c0217a.f752E || i3 > 0)) {
                    z = true;
                } else {
                    z = false;
                }
                boolean z5 = z;
                i4 = i;
                if (z) {
                    View mo27283n2 = c0217a.mo27283n(c0166g2, null, viewGroup);
                    if (c0217a.f752E) {
                        int m27417H = ActionMenuView.m27417H(mo27283n2, i2, i3, makeMeasureSpec, 0);
                        i3 -= m27417H;
                        if (m27417H == 0) {
                            z5 = false;
                        }
                    } else {
                        mo27283n2.measure(makeMeasureSpec, makeMeasureSpec);
                    }
                    boolean z6 = z5;
                    int measuredWidth2 = mo27283n2.getMeasuredWidth();
                    i7 -= measuredWidth2;
                    if (i14 == 0) {
                        i14 = measuredWidth2;
                    }
                    if (!c0217a.f752E ? i7 + i14 > 0 : i7 >= 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    z = z6 & z2;
                }
                if (z && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z4) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i15 = 0; i15 < i13; i15++) {
                        C0166g c0166g3 = arrayList.get(i15);
                        if (c0166g3.getGroupId() == groupId2) {
                            if (c0166g3.m27487l()) {
                                i11++;
                            }
                            c0166g3.m27478u(false);
                        }
                    }
                }
                if (z) {
                    i11--;
                }
                c0166g2.m27478u(z);
            } else {
                i4 = i;
                c0166g2.m27478u(false);
                i13++;
                view = null;
                c0217a = this;
                i = i4;
                i5 = 0;
            }
            i13++;
            view = null;
            c0217a = this;
            i = i4;
            i5 = 0;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0152a
    /* renamed from: o */
    public InterfaceC0172j mo27282o(ViewGroup viewGroup) {
        InterfaceC0172j interfaceC0172j = this.f369t;
        InterfaceC0172j mo27282o = super.mo27282o(viewGroup);
        if (interfaceC0172j != mo27282o) {
            ((ActionMenuView) mo27282o).setPresenter(this);
        }
        return mo27282o;
    }

    /* renamed from: z */
    public final View m27272z(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f369t;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof InterfaceC0172j.InterfaceC0173a) && ((InterfaceC0172j.InterfaceC0173a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0152a, androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: b */
    public void mo27289b(C0162e c0162e, boolean z) {
        m27273y();
        super.mo27289b(c0162e, z);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0152a, androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: c */
    public void mo27288c(boolean z) {
        ArrayList<C0166g> arrayList;
        super.mo27288c(z);
        ((View) this.f369t).requestLayout();
        C0162e c0162e = this.f363d;
        boolean z2 = false;
        if (c0162e != null) {
            ArrayList<C0166g> m27507s = c0162e.m27507s();
            int size = m27507s.size();
            for (int i = 0; i < size; i++) {
                AbstractC3155b mo2213b = m27507s.get(i).mo2213b();
                if (mo2213b != null) {
                    mo2213b.m19476i(this);
                }
            }
        }
        C0162e c0162e2 = this.f363d;
        if (c0162e2 != null) {
            arrayList = c0162e2.m27501z();
        } else {
            arrayList = null;
        }
        if (this.f766y && arrayList != null) {
            int size2 = arrayList.size();
            if (size2 == 1) {
                z2 = !arrayList.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z2 = true;
            }
        }
        if (z2) {
            if (this.f763v == null) {
                this.f763v = new C0221d(this.f361a);
            }
            ViewGroup viewGroup = (ViewGroup) this.f763v.getParent();
            if (viewGroup != this.f369t) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f763v);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f369t;
                actionMenuView.addView(this.f763v, actionMenuView.m27423B());
            }
        } else {
            C0221d c0221d = this.f763v;
            if (c0221d != null) {
                ViewParent parent = c0221d.getParent();
                InterfaceC0172j interfaceC0172j = this.f369t;
                if (parent == interfaceC0172j) {
                    ((ViewGroup) interfaceC0172j).removeView(this.f763v);
                }
            }
        }
        ((ActionMenuView) this.f369t).setOverflowReserved(this.f766y);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0152a, androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: h */
    public void mo17424h(Context context, C0162e c0162e) {
        super.mo17424h(context, c0162e);
        Resources resources = context.getResources();
        C3910a m17784b = C3910a.m17784b(context);
        if (!this.f767z) {
            this.f766y = m17784b.m17778h();
        }
        if (!this.f753F) {
            this.f748A = m17784b.m17783c();
        }
        if (!this.f751D) {
            this.f750C = m17784b.m17782d();
        }
        int i = this.f748A;
        if (this.f766y) {
            if (this.f763v == null) {
                C0221d c0221d = new C0221d(this.f361a);
                this.f763v = c0221d;
                if (this.f765x) {
                    c0221d.setImageDrawable(this.f764w);
                    this.f764w = null;
                    this.f765x = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f763v.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.f763v.getMeasuredWidth();
        } else {
            this.f763v = null;
        }
        this.f749B = i;
        this.f755H = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0152a, androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: j */
    public boolean mo27285j(SubMenuC0177l subMenuC0177l) {
        boolean z = false;
        if (!subMenuC0177l.hasVisibleItems()) {
            return false;
        }
        SubMenuC0177l subMenuC0177l2 = subMenuC0177l;
        while (subMenuC0177l2.m27450e0() != this.f363d) {
            subMenuC0177l2 = (SubMenuC0177l) subMenuC0177l2.m27450e0();
        }
        View m27272z = m27272z(subMenuC0177l2.getItem());
        if (m27272z == null) {
            return false;
        }
        this.f762O = subMenuC0177l.getItem().getItemId();
        int size = subMenuC0177l.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            MenuItem item = subMenuC0177l.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        C0218a c0218a = new C0218a(this.f362b, subMenuC0177l, m27272z);
        this.f758K = c0218a;
        c0218a.m27467g(z);
        this.f758K.m27463k();
        super.mo27285j(subMenuC0177l);
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0152a
    /* renamed from: l */
    public boolean mo27284l(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.f763v) {
            return false;
        }
        return super.mo27284l(viewGroup, i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0152a
    /* renamed from: n */
    public View mo27283n(C0166g c0166g, View view, ViewGroup viewGroup) {
        int i;
        View actionView = c0166g.getActionView();
        if (actionView == null || c0166g.m27489j()) {
            actionView = super.mo27283n(c0166g, view, viewGroup);
        }
        if (c0166g.isActionViewExpanded()) {
            i = 8;
        } else {
            i = 0;
        }
        actionView.setVisibility(i);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.mo27259k(layoutParams));
        }
        return actionView;
    }

    /* renamed from: y */
    public boolean m27273y() {
        return m27299B() | m27298C();
    }
}
