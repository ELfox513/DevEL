package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.view.menu.C0162e;
import androidx.appcompat.view.menu.InterfaceC0170i;
import androidx.appcompat.widget.Toolbar;
import p021c.C1008a;
import p021c.C1012e;
import p021c.C1013f;
import p021c.C1015h;
import p021c.C1017j;
import p038d0.C3208p1;
import p038d0.C3216r1;
import p038d0.C3218s0;
import p046e.C3335b;
import p082i.C4069a;
import p091j.C4235t1;
import p091j.InterfaceC4234t0;
/* renamed from: androidx.appcompat.widget.e */
/* loaded from: classes.dex */
public class C0234e implements InterfaceC4234t0 {

    /* renamed from: a */
    public Toolbar f814a;

    /* renamed from: b */
    public int f815b;

    /* renamed from: c */
    public View f816c;

    /* renamed from: d */
    public View f817d;

    /* renamed from: e */
    public Drawable f818e;

    /* renamed from: f */
    public Drawable f819f;

    /* renamed from: g */
    public Drawable f820g;

    /* renamed from: h */
    public boolean f821h;

    /* renamed from: i */
    public CharSequence f822i;

    /* renamed from: j */
    public CharSequence f823j;

    /* renamed from: k */
    public CharSequence f824k;

    /* renamed from: l */
    public Window.Callback f825l;

    /* renamed from: m */
    public boolean f826m;

    /* renamed from: n */
    public C0217a f827n;

    /* renamed from: o */
    public int f828o;

    /* renamed from: p */
    public int f829p;

    /* renamed from: q */
    public Drawable f830q;

    /* renamed from: androidx.appcompat.widget.e$a */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC0235a implements View.OnClickListener {

        /* renamed from: a */
        public final C4069a f831a;

        public View$OnClickListenerC0235a() {
            this.f831a = new C4069a(C0234e.this.f814a.getContext(), 0, 16908332, 0, 0, C0234e.this.f822i);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0234e c0234e = C0234e.this;
            Window.Callback callback = c0234e.f825l;
            if (callback != null && c0234e.f826m) {
                callback.onMenuItemSelected(0, this.f831a);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.e$b */
    /* loaded from: classes.dex */
    public class C0236b extends C3216r1 {

        /* renamed from: a */
        public boolean f833a = false;

        /* renamed from: b */
        public final /* synthetic */ int f834b;

        @Override // p038d0.C3216r1, p038d0.InterfaceC3213q1
        /* renamed from: a */
        public void mo17261a(View view) {
            this.f833a = true;
        }

        @Override // p038d0.C3216r1, p038d0.InterfaceC3213q1
        /* renamed from: c */
        public void mo17259c(View view) {
            C0234e.this.f814a.setVisibility(0);
        }

        public C0236b(int i) {
            this.f834b = i;
        }

        @Override // p038d0.InterfaceC3213q1
        /* renamed from: b */
        public void mo17260b(View view) {
            if (!this.f833a) {
                C0234e.this.f814a.setVisibility(this.f834b);
            }
        }
    }

    public C0234e(Toolbar toolbar, boolean z) {
        this(toolbar, z, C1015h.f2660a, C1012e.f2585n);
    }

    /* renamed from: D */
    public void m27234D(CharSequence charSequence) {
        this.f821h = true;
        m27233E(charSequence);
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: b */
    public boolean mo17006b() {
        return this.f814a.m27346A();
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: c */
    public void mo17005c() {
        this.f826m = true;
    }

    @Override // p091j.InterfaceC4234t0
    public void collapseActionView() {
        this.f814a.m27328e();
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: d */
    public boolean mo17004d() {
        return this.f814a.m27329d();
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: e */
    public boolean mo17003e() {
        return this.f814a.m27307z();
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: f */
    public boolean mo17002f() {
        return this.f814a.m27310w();
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: g */
    public boolean mo17001g() {
        return this.f814a.m27333N();
    }

    @Override // p091j.InterfaceC4234t0
    public Context getContext() {
        return this.f814a.getContext();
    }

    @Override // p091j.InterfaceC4234t0
    public CharSequence getTitle() {
        return this.f814a.getTitle();
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: h */
    public void mo17000h() {
        this.f814a.m27327f();
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: j */
    public boolean mo16998j() {
        return this.f814a.m27311v();
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: l */
    public void mo16996l(int i) {
        m27226y(i != 0 ? C3335b.m19101d(getContext(), i) : null);
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: m */
    public int mo16995m() {
        return this.f828o;
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: o */
    public void mo16993o(int i) {
        this.f814a.setVisibility(i);
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: p */
    public ViewGroup mo16992p() {
        return this.f814a;
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: q */
    public void mo16991q(boolean z) {
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: r */
    public int mo16990r() {
        return this.f815b;
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: s */
    public void mo16989s() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // p091j.InterfaceC4234t0
    public void setIcon(int i) {
        setIcon(i != 0 ? C3335b.m19101d(getContext(), i) : null);
    }

    @Override // p091j.InterfaceC4234t0
    public void setWindowCallback(Window.Callback callback) {
        this.f825l = callback;
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: t */
    public void mo16988t() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: u */
    public void mo16987u(boolean z) {
        this.f814a.setCollapsible(z);
    }

    /* renamed from: z */
    public void m27225z(int i) {
        m27237A(i == 0 ? null : getContext().getString(i));
    }

    public C0234e(Toolbar toolbar, boolean z, int i, int i2) {
        Drawable drawable;
        this.f828o = 0;
        this.f829p = 0;
        this.f814a = toolbar;
        this.f822i = toolbar.getTitle();
        this.f823j = toolbar.getSubtitle();
        this.f821h = this.f822i != null;
        this.f820g = toolbar.getNavigationIcon();
        C4235t1 m16966u = C4235t1.m16966u(toolbar.getContext(), null, C1017j.f2791a, C1008a.f2507c, 0);
        this.f830q = m16966u.m16981f(C1017j.f2846l);
        if (z) {
            CharSequence m16972o = m16966u.m16972o(C1017j.f2876r);
            if (!TextUtils.isEmpty(m16972o)) {
                m27234D(m16972o);
            }
            CharSequence m16972o2 = m16966u.m16972o(C1017j.f2866p);
            if (!TextUtils.isEmpty(m16972o2)) {
                m27235C(m16972o2);
            }
            Drawable m16981f = m16966u.m16981f(C1017j.f2856n);
            if (m16981f != null) {
                m27226y(m16981f);
            }
            Drawable m16981f2 = m16966u.m16981f(C1017j.f2851m);
            if (m16981f2 != null) {
                setIcon(m16981f2);
            }
            if (this.f820g == null && (drawable = this.f830q) != null) {
                m27236B(drawable);
            }
            mo16997k(m16966u.m16977j(C1017j.f2826h, 0));
            int m16974m = m16966u.m16974m(C1017j.f2821g, 0);
            if (m16974m != 0) {
                m27228w(LayoutInflater.from(this.f814a.getContext()).inflate(m16974m, (ViewGroup) this.f814a, false));
                mo16997k(this.f815b | 16);
            }
            int m16975l = m16966u.m16975l(C1017j.f2836j, 0);
            if (m16975l > 0) {
                ViewGroup.LayoutParams layoutParams = this.f814a.getLayoutParams();
                layoutParams.height = m16975l;
                this.f814a.setLayoutParams(layoutParams);
            }
            int m16983d = m16966u.m16983d(C1017j.f2816f, -1);
            int m16983d2 = m16966u.m16983d(C1017j.f2811e, -1);
            if (m16983d >= 0 || m16983d2 >= 0) {
                this.f814a.m27339H(Math.max(m16983d, 0), Math.max(m16983d2, 0));
            }
            int m16974m2 = m16966u.m16974m(C1017j.f2881s, 0);
            if (m16974m2 != 0) {
                Toolbar toolbar2 = this.f814a;
                toolbar2.m27336K(toolbar2.getContext(), m16974m2);
            }
            int m16974m3 = m16966u.m16974m(C1017j.f2871q, 0);
            if (m16974m3 != 0) {
                Toolbar toolbar3 = this.f814a;
                toolbar3.m27337J(toolbar3.getContext(), m16974m3);
            }
            int m16974m4 = m16966u.m16974m(C1017j.f2861o, 0);
            if (m16974m4 != 0) {
                this.f814a.setPopupTheme(m16974m4);
            }
        } else {
            this.f815b = m27229v();
        }
        m16966u.m16965v();
        m27227x(i);
        this.f824k = this.f814a.getNavigationContentDescription();
        this.f814a.setNavigationOnClickListener(new View$OnClickListenerC0235a());
    }

    /* renamed from: A */
    public void m27237A(CharSequence charSequence) {
        this.f824k = charSequence;
        m27232F();
    }

    /* renamed from: B */
    public void m27236B(Drawable drawable) {
        this.f820g = drawable;
        m27231G();
    }

    /* renamed from: C */
    public void m27235C(CharSequence charSequence) {
        this.f823j = charSequence;
        if ((this.f815b & 8) != 0) {
            this.f814a.setSubtitle(charSequence);
        }
    }

    /* renamed from: E */
    public final void m27233E(CharSequence charSequence) {
        this.f822i = charSequence;
        if ((this.f815b & 8) != 0) {
            this.f814a.setTitle(charSequence);
        }
    }

    /* renamed from: F */
    public final void m27232F() {
        if ((this.f815b & 4) != 0) {
            if (TextUtils.isEmpty(this.f824k)) {
                this.f814a.setNavigationContentDescription(this.f829p);
            } else {
                this.f814a.setNavigationContentDescription(this.f824k);
            }
        }
    }

    /* renamed from: G */
    public final void m27231G() {
        if ((this.f815b & 4) != 0) {
            Toolbar toolbar = this.f814a;
            Drawable drawable = this.f820g;
            if (drawable == null) {
                drawable = this.f830q;
            }
            toolbar.setNavigationIcon(drawable);
            return;
        }
        this.f814a.setNavigationIcon((Drawable) null);
    }

    /* renamed from: H */
    public final void m27230H() {
        Drawable drawable;
        int i = this.f815b;
        if ((i & 2) != 0) {
            if ((i & 1) != 0) {
                drawable = this.f819f;
                if (drawable == null) {
                    drawable = this.f818e;
                }
            } else {
                drawable = this.f818e;
            }
        } else {
            drawable = null;
        }
        this.f814a.setLogo(drawable);
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: a */
    public void mo17007a(Menu menu, InterfaceC0170i.InterfaceC0171a interfaceC0171a) {
        if (this.f827n == null) {
            C0217a c0217a = new C0217a(this.f814a.getContext());
            this.f827n = c0217a;
            c0217a.m27564p(C1013f.f2620g);
        }
        this.f827n.mo27457g(interfaceC0171a);
        this.f814a.m27338I((C0162e) menu, this.f827n);
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: i */
    public void mo16999i(C0229d c0229d) {
        View view = this.f816c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f814a;
            if (parent == toolbar) {
                toolbar.removeView(this.f816c);
            }
        }
        this.f816c = c0229d;
        if (c0229d != null && this.f828o == 2) {
            this.f814a.addView(c0229d, 0);
            Toolbar.C0212e c0212e = (Toolbar.C0212e) this.f816c.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) c0212e).width = -2;
            ((ViewGroup.MarginLayoutParams) c0212e).height = -2;
            c0212e.f15308a = 8388691;
            c0229d.setAllowCollapse(true);
        }
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: k */
    public void mo16997k(int i) {
        View view;
        int i2 = this.f815b ^ i;
        this.f815b = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    m27232F();
                }
                m27231G();
            }
            if ((i2 & 3) != 0) {
                m27230H();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f814a.setTitle(this.f822i);
                    this.f814a.setSubtitle(this.f823j);
                } else {
                    this.f814a.setTitle((CharSequence) null);
                    this.f814a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) != 0 && (view = this.f817d) != null) {
                if ((i & 16) != 0) {
                    this.f814a.addView(view);
                } else {
                    this.f814a.removeView(view);
                }
            }
        }
    }

    @Override // p091j.InterfaceC4234t0
    /* renamed from: n */
    public C3208p1 mo16994n(int i, long j) {
        float f;
        C3208p1 m19350b = C3218s0.m19350b(this.f814a);
        if (i == 0) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        return m19350b.m19402a(f).m19399d(j).m19397f(new C0236b(i));
    }

    @Override // p091j.InterfaceC4234t0
    public void setIcon(Drawable drawable) {
        this.f818e = drawable;
        m27230H();
    }

    @Override // p091j.InterfaceC4234t0
    public void setWindowTitle(CharSequence charSequence) {
        if (!this.f821h) {
            m27233E(charSequence);
        }
    }

    /* renamed from: v */
    public final int m27229v() {
        if (this.f814a.getNavigationIcon() != null) {
            this.f830q = this.f814a.getNavigationIcon();
            return 15;
        }
        return 11;
    }

    /* renamed from: w */
    public void m27228w(View view) {
        View view2 = this.f817d;
        if (view2 != null && (this.f815b & 16) != 0) {
            this.f814a.removeView(view2);
        }
        this.f817d = view;
        if (view != null && (this.f815b & 16) != 0) {
            this.f814a.addView(view);
        }
    }

    /* renamed from: x */
    public void m27227x(int i) {
        if (i == this.f829p) {
            return;
        }
        this.f829p = i;
        if (TextUtils.isEmpty(this.f814a.getNavigationContentDescription())) {
            m27225z(this.f829p);
        }
    }

    /* renamed from: y */
    public void m27226y(Drawable drawable) {
        this.f819f = drawable;
        m27230H();
    }
}
