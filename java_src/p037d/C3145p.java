package p037d;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.view.menu.C0162e;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.C0229d;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import p021c.C1008a;
import p021c.C1013f;
import p021c.C1017j;
import p037d.AbstractC3101a;
import p038d0.C3208p1;
import p038d0.C3216r1;
import p038d0.C3218s0;
import p038d0.InterfaceC3213q1;
import p038d0.InterfaceC3232s1;
import p073h.AbstractC3911b;
import p073h.C3910a;
import p073h.C3918g;
import p073h.C3921h;
import p091j.InterfaceC4234t0;
/* renamed from: d.p */
/* loaded from: classes.dex */
public class C3145p extends AbstractC3101a implements ActionBarOverlayLayout.InterfaceC0182d {

    /* renamed from: E */
    public static final Interpolator f15444E = new AccelerateInterpolator();

    /* renamed from: F */
    public static final Interpolator f15445F = new DecelerateInterpolator();

    /* renamed from: A */
    public boolean f15446A;

    /* renamed from: a */
    public Context f15450a;

    /* renamed from: b */
    public Context f15451b;

    /* renamed from: c */
    public Activity f15452c;

    /* renamed from: d */
    public ActionBarOverlayLayout f15453d;

    /* renamed from: e */
    public ActionBarContainer f15454e;

    /* renamed from: f */
    public InterfaceC4234t0 f15455f;

    /* renamed from: g */
    public ActionBarContextView f15456g;

    /* renamed from: h */
    public View f15457h;

    /* renamed from: i */
    public C0229d f15458i;

    /* renamed from: l */
    public boolean f15461l;

    /* renamed from: m */
    public C3149d f15462m;

    /* renamed from: n */
    public AbstractC3911b f15463n;

    /* renamed from: o */
    public AbstractC3911b.InterfaceC3912a f15464o;

    /* renamed from: p */
    public boolean f15465p;

    /* renamed from: r */
    public boolean f15467r;

    /* renamed from: u */
    public boolean f15470u;

    /* renamed from: v */
    public boolean f15471v;

    /* renamed from: w */
    public boolean f15472w;

    /* renamed from: y */
    public C3921h f15474y;

    /* renamed from: z */
    public boolean f15475z;

    /* renamed from: j */
    public ArrayList<Object> f15459j = new ArrayList<>();

    /* renamed from: k */
    public int f15460k = -1;

    /* renamed from: q */
    public ArrayList<AbstractC3101a.InterfaceC3103b> f15466q = new ArrayList<>();

    /* renamed from: s */
    public int f15468s = 0;

    /* renamed from: t */
    public boolean f15469t = true;

    /* renamed from: x */
    public boolean f15473x = true;

    /* renamed from: B */
    public final InterfaceC3213q1 f15447B = new C3146a();

    /* renamed from: C */
    public final InterfaceC3213q1 f15448C = new C3147b();

    /* renamed from: D */
    public final InterfaceC3232s1 f15449D = new C3148c();

    /* renamed from: d.p$a */
    /* loaded from: classes.dex */
    public class C3146a extends C3216r1 {
        public C3146a() {
        }

        @Override // p038d0.InterfaceC3213q1
        /* renamed from: b */
        public void mo17260b(View view) {
            View view2;
            C3145p c3145p = C3145p.this;
            if (c3145p.f15469t && (view2 = c3145p.f15457h) != null) {
                view2.setTranslationY(0.0f);
                C3145p.this.f15454e.setTranslationY(0.0f);
            }
            C3145p.this.f15454e.setVisibility(8);
            C3145p.this.f15454e.setTransitioning(false);
            C3145p c3145p2 = C3145p.this;
            c3145p2.f15474y = null;
            c3145p2.m19498w();
            ActionBarOverlayLayout actionBarOverlayLayout = C3145p.this.f15453d;
            if (actionBarOverlayLayout != null) {
                C3218s0.m19366E(actionBarOverlayLayout);
            }
        }
    }

    /* renamed from: d.p$b */
    /* loaded from: classes.dex */
    public class C3147b extends C3216r1 {
        public C3147b() {
        }

        @Override // p038d0.InterfaceC3213q1
        /* renamed from: b */
        public void mo17260b(View view) {
            C3145p c3145p = C3145p.this;
            c3145p.f15474y = null;
            c3145p.f15454e.requestLayout();
        }
    }

    /* renamed from: d.p$c */
    /* loaded from: classes.dex */
    public class C3148c implements InterfaceC3232s1 {
        public C3148c() {
        }

        @Override // p038d0.InterfaceC3232s1
        /* renamed from: a */
        public void mo19302a(View view) {
            ((View) C3145p.this.f15454e.getParent()).invalidate();
        }
    }

    /* renamed from: d.p$d */
    /* loaded from: classes.dex */
    public class C3149d extends AbstractC3911b implements C0162e.InterfaceC0163a {

        /* renamed from: d */
        public final Context f15479d;

        /* renamed from: k */
        public final C0162e f15480k;

        /* renamed from: p */
        public AbstractC3911b.InterfaceC3912a f15481p;

        /* renamed from: q */
        public WeakReference<View> f15482q;

        @Override // p073h.AbstractC3911b
        /* renamed from: d */
        public View mo17766d() {
            WeakReference<View> weakReference = this.f15482q;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // p073h.AbstractC3911b
        /* renamed from: e */
        public Menu mo17765e() {
            return this.f15480k;
        }

        @Override // p073h.AbstractC3911b
        /* renamed from: f */
        public MenuInflater mo17764f() {
            return new C3918g(this.f15479d);
        }

        @Override // p073h.AbstractC3911b
        /* renamed from: g */
        public CharSequence mo17763g() {
            return C3145p.this.f15456g.getSubtitle();
        }

        @Override // p073h.AbstractC3911b
        /* renamed from: i */
        public CharSequence mo17762i() {
            return C3145p.this.f15456g.getTitle();
        }

        @Override // p073h.AbstractC3911b
        /* renamed from: l */
        public boolean mo17760l() {
            return C3145p.this.f15456g.m27440j();
        }

        @Override // p073h.AbstractC3911b
        /* renamed from: n */
        public void mo17758n(int i) {
            mo17757o(C3145p.this.f15450a.getResources().getString(i));
        }

        @Override // p073h.AbstractC3911b
        /* renamed from: o */
        public void mo17757o(CharSequence charSequence) {
            C3145p.this.f15456g.setSubtitle(charSequence);
        }

        @Override // p073h.AbstractC3911b
        /* renamed from: q */
        public void mo17756q(int i) {
            mo17755r(C3145p.this.f15450a.getResources().getString(i));
        }

        @Override // p073h.AbstractC3911b
        /* renamed from: r */
        public void mo17755r(CharSequence charSequence) {
            C3145p.this.f15456g.setTitle(charSequence);
        }

        public C3149d(Context context, AbstractC3911b.InterfaceC3912a interfaceC3912a) {
            this.f15479d = context;
            this.f15481p = interfaceC3912a;
            C0162e m27534S = new C0162e(context).m27534S(1);
            this.f15480k = m27534S;
            m27534S.mo27451R(this);
        }

        @Override // androidx.appcompat.view.menu.C0162e.InterfaceC0163a
        /* renamed from: a */
        public boolean mo17769a(C0162e c0162e, MenuItem menuItem) {
            AbstractC3911b.InterfaceC3912a interfaceC3912a = this.f15481p;
            if (interfaceC3912a != null) {
                return interfaceC3912a.mo17751c(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.C0162e.InterfaceC0163a
        /* renamed from: b */
        public void mo17768b(C0162e c0162e) {
            if (this.f15481p == null) {
                return;
            }
            mo17761k();
            C3145p.this.f15456g.m27438l();
        }

        @Override // p073h.AbstractC3911b
        /* renamed from: c */
        public void mo17767c() {
            C3145p c3145p = C3145p.this;
            if (c3145p.f15462m != this) {
                return;
            }
            if (!C3145p.m19499v(c3145p.f15470u, c3145p.f15471v, false)) {
                C3145p c3145p2 = C3145p.this;
                c3145p2.f15463n = this;
                c3145p2.f15464o = this.f15481p;
            } else {
                this.f15481p.mo17750d(this);
            }
            this.f15481p = null;
            C3145p.this.m19500u(false);
            C3145p.this.f15456g.m27443g();
            C3145p.this.f15455f.mo16992p().sendAccessibilityEvent(32);
            C3145p c3145p3 = C3145p.this;
            c3145p3.f15453d.setHideOnContentScrollEnabled(c3145p3.f15446A);
            C3145p.this.f15462m = null;
        }

        @Override // p073h.AbstractC3911b
        /* renamed from: k */
        public void mo17761k() {
            if (C3145p.this.f15462m != this) {
                return;
            }
            this.f15480k.m27519d0();
            try {
                this.f15481p.mo17752b(this, this.f15480k);
            } finally {
                this.f15480k.m27521c0();
            }
        }

        @Override // p073h.AbstractC3911b
        /* renamed from: m */
        public void mo17759m(View view) {
            C3145p.this.f15456g.setCustomView(view);
            this.f15482q = new WeakReference<>(view);
        }

        /* renamed from: t */
        public boolean m19494t() {
            this.f15480k.m27519d0();
            try {
                return this.f15481p.mo17753a(this, this.f15480k);
            } finally {
                this.f15480k.m27521c0();
            }
        }

        @Override // p073h.AbstractC3911b
        /* renamed from: s */
        public void mo17754s(boolean z) {
            super.mo17754s(z);
            C3145p.this.f15456g.setTitleOptional(z);
        }
    }

    public C3145p(Activity activity, boolean z) {
        this.f15452c = activity;
        View decorView = activity.getWindow().getDecorView();
        m19525C(decorView);
        if (z) {
            return;
        }
        this.f15457h = decorView.findViewById(16908290);
    }

    /* renamed from: v */
    public static boolean m19499v(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return (z || z2) ? false : true;
    }

    /* renamed from: A */
    public int m19527A() {
        return this.f15455f.mo16995m();
    }

    /* renamed from: D */
    public void m19524D(boolean z) {
        m19523E(z ? 4 : 0, 4);
    }

    /* renamed from: F */
    public void m19522F(float f) {
        C3218s0.m19359L(this.f15454e, f);
    }

    /* renamed from: I */
    public void m19519I(boolean z) {
        this.f15455f.mo16991q(z);
    }

    /* renamed from: J */
    public final boolean m19518J() {
        return C3218s0.m19329w(this.f15454e);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.InterfaceC0182d
    /* renamed from: b */
    public void mo19514b() {
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.InterfaceC0182d
    /* renamed from: c */
    public void mo19513c(boolean z) {
        this.f15469t = z;
    }

    @Override // p037d.AbstractC3101a
    /* renamed from: i */
    public int mo19508i() {
        return this.f15455f.mo16990r();
    }

    @Override // p037d.AbstractC3101a
    /* renamed from: l */
    public void mo19506l(Configuration configuration) {
        m19521G(C3910a.m17784b(this.f15450a).m17779g());
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.InterfaceC0182d
    public void onWindowVisibilityChanged(int i) {
        this.f15468s = i;
    }

    @Override // p037d.AbstractC3101a
    /* renamed from: s */
    public void mo19502s(CharSequence charSequence) {
        this.f15455f.setWindowTitle(charSequence);
    }

    /* renamed from: B */
    public final void m19526B() {
        if (this.f15472w) {
            this.f15472w = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f15453d;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            m19516L(false);
        }
    }

    /* renamed from: C */
    public final void m19525C(View view) {
        boolean z;
        boolean z2;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(C1013f.f2629p);
        this.f15453d = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f15455f = m19495z(view.findViewById(C1013f.f2614a));
        this.f15456g = (ActionBarContextView) view.findViewById(C1013f.f2619f);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(C1013f.f2616c);
        this.f15454e = actionBarContainer;
        InterfaceC4234t0 interfaceC4234t0 = this.f15455f;
        if (interfaceC4234t0 != null && this.f15456g != null && actionBarContainer != null) {
            this.f15450a = interfaceC4234t0.getContext();
            if ((this.f15455f.mo16990r() & 4) != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.f15461l = true;
            }
            C3910a m17784b = C3910a.m17784b(this.f15450a);
            if (!m17784b.m17785a() && !z) {
                z2 = false;
            } else {
                z2 = true;
            }
            m19519I(z2);
            m19521G(m17784b.m17779g());
            TypedArray obtainStyledAttributes = this.f15450a.obtainStyledAttributes(null, C1017j.f2791a, C1008a.f2507c, 0);
            if (obtainStyledAttributes.getBoolean(C1017j.f2841k, false)) {
                m19520H(true);
            }
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C1017j.f2831i, 0);
            if (dimensionPixelSize != 0) {
                m19522F(dimensionPixelSize);
            }
            obtainStyledAttributes.recycle();
            return;
        }
        throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
    }

    /* renamed from: E */
    public void m19523E(int i, int i2) {
        int mo16990r = this.f15455f.mo16990r();
        if ((i2 & 4) != 0) {
            this.f15461l = true;
        }
        this.f15455f.mo16997k((i & i2) | ((i2 ^ (-1)) & mo16990r));
    }

    /* renamed from: G */
    public final void m19521G(boolean z) {
        boolean z2;
        boolean z3;
        this.f15467r = z;
        if (!z) {
            this.f15455f.mo16999i(null);
            this.f15454e.setTabContainer(this.f15458i);
        } else {
            this.f15454e.setTabContainer(null);
            this.f15455f.mo16999i(this.f15458i);
        }
        boolean z4 = true;
        if (m19527A() == 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        C0229d c0229d = this.f15458i;
        if (c0229d != null) {
            if (z2) {
                c0229d.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f15453d;
                if (actionBarOverlayLayout != null) {
                    C3218s0.m19366E(actionBarOverlayLayout);
                }
            } else {
                c0229d.setVisibility(8);
            }
        }
        InterfaceC4234t0 interfaceC4234t0 = this.f15455f;
        if (!this.f15467r && z2) {
            z3 = true;
        } else {
            z3 = false;
        }
        interfaceC4234t0.mo16987u(z3);
        this.f15453d.setHasNonEmbeddedTabs((this.f15467r || !z2) ? false : false);
    }

    /* renamed from: H */
    public void m19520H(boolean z) {
        if (z && !this.f15453d.m27428w()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.f15446A = z;
        this.f15453d.setHideOnContentScrollEnabled(z);
    }

    /* renamed from: K */
    public final void m19517K() {
        if (!this.f15472w) {
            this.f15472w = true;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f15453d;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(true);
            }
            m19516L(false);
        }
    }

    /* renamed from: L */
    public final void m19516L(boolean z) {
        if (m19499v(this.f15470u, this.f15471v, this.f15472w)) {
            if (!this.f15473x) {
                this.f15473x = true;
                m19496y(z);
            }
        } else if (this.f15473x) {
            this.f15473x = false;
            m19497x(z);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.InterfaceC0182d
    /* renamed from: a */
    public void mo19515a() {
        if (this.f15471v) {
            this.f15471v = false;
            m19516L(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.InterfaceC0182d
    /* renamed from: d */
    public void mo19512d() {
        if (!this.f15471v) {
            this.f15471v = true;
            m19516L(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.InterfaceC0182d
    /* renamed from: e */
    public void mo19511e() {
        C3921h c3921h = this.f15474y;
        if (c3921h != null) {
            c3921h.m17735a();
            this.f15474y = null;
        }
    }

    @Override // p037d.AbstractC3101a
    /* renamed from: g */
    public boolean mo19510g() {
        InterfaceC4234t0 interfaceC4234t0 = this.f15455f;
        if (interfaceC4234t0 != null && interfaceC4234t0.mo16998j()) {
            this.f15455f.collapseActionView();
            return true;
        }
        return false;
    }

    @Override // p037d.AbstractC3101a
    /* renamed from: h */
    public void mo19509h(boolean z) {
        if (z == this.f15465p) {
            return;
        }
        this.f15465p = z;
        int size = this.f15466q.size();
        for (int i = 0; i < size; i++) {
            this.f15466q.get(i).onMenuVisibilityChanged(z);
        }
    }

    @Override // p037d.AbstractC3101a
    /* renamed from: j */
    public Context mo19507j() {
        if (this.f15451b == null) {
            TypedValue typedValue = new TypedValue();
            this.f15450a.getTheme().resolveAttribute(C1008a.f2511g, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f15451b = new ContextThemeWrapper(this.f15450a, i);
            } else {
                this.f15451b = this.f15450a;
            }
        }
        return this.f15451b;
    }

    @Override // p037d.AbstractC3101a
    /* renamed from: n */
    public boolean mo19505n(int i, KeyEvent keyEvent) {
        Menu mo17765e;
        int i2;
        C3149d c3149d = this.f15462m;
        if (c3149d == null || (mo17765e = c3149d.mo17765e()) == null) {
            return false;
        }
        if (keyEvent != null) {
            i2 = keyEvent.getDeviceId();
        } else {
            i2 = -1;
        }
        boolean z = true;
        if (KeyCharacterMap.load(i2).getKeyboardType() == 1) {
            z = false;
        }
        mo17765e.setQwertyMode(z);
        return mo17765e.performShortcut(i, keyEvent, 0);
    }

    @Override // p037d.AbstractC3101a
    /* renamed from: q */
    public void mo19504q(boolean z) {
        if (!this.f15461l) {
            m19524D(z);
        }
    }

    @Override // p037d.AbstractC3101a
    /* renamed from: r */
    public void mo19503r(boolean z) {
        C3921h c3921h;
        this.f15475z = z;
        if (!z && (c3921h = this.f15474y) != null) {
            c3921h.m17735a();
        }
    }

    @Override // p037d.AbstractC3101a
    /* renamed from: t */
    public AbstractC3911b mo19501t(AbstractC3911b.InterfaceC3912a interfaceC3912a) {
        C3149d c3149d = this.f15462m;
        if (c3149d != null) {
            c3149d.mo17767c();
        }
        this.f15453d.setHideOnContentScrollEnabled(false);
        this.f15456g.m27439k();
        C3149d c3149d2 = new C3149d(this.f15456g.getContext(), interfaceC3912a);
        if (c3149d2.m19494t()) {
            this.f15462m = c3149d2;
            c3149d2.mo17761k();
            this.f15456g.m27442h(c3149d2);
            m19500u(true);
            this.f15456g.sendAccessibilityEvent(32);
            return c3149d2;
        }
        return null;
    }

    /* renamed from: u */
    public void m19500u(boolean z) {
        C3208p1 mo16994n;
        C3208p1 mo17262f;
        if (z) {
            m19517K();
        } else {
            m19526B();
        }
        if (m19518J()) {
            if (z) {
                mo17262f = this.f15455f.mo16994n(4, 100L);
                mo16994n = this.f15456g.mo17262f(0, 200L);
            } else {
                mo16994n = this.f15455f.mo16994n(0, 200L);
                mo17262f = this.f15456g.mo17262f(8, 100L);
            }
            C3921h c3921h = new C3921h();
            c3921h.m17732d(mo17262f, mo16994n);
            c3921h.m17728h();
        } else if (z) {
            this.f15455f.mo16993o(4);
            this.f15456g.setVisibility(0);
        } else {
            this.f15455f.mo16993o(0);
            this.f15456g.setVisibility(8);
        }
    }

    /* renamed from: w */
    public void m19498w() {
        AbstractC3911b.InterfaceC3912a interfaceC3912a = this.f15464o;
        if (interfaceC3912a != null) {
            interfaceC3912a.mo17750d(this.f15463n);
            this.f15463n = null;
            this.f15464o = null;
        }
    }

    /* renamed from: x */
    public void m19497x(boolean z) {
        View view;
        int[] iArr;
        C3921h c3921h = this.f15474y;
        if (c3921h != null) {
            c3921h.m17735a();
        }
        if (this.f15468s == 0 && (this.f15475z || z)) {
            this.f15454e.setAlpha(1.0f);
            this.f15454e.setTransitioning(true);
            C3921h c3921h2 = new C3921h();
            float f = -this.f15454e.getHeight();
            if (z) {
                this.f15454e.getLocationInWindow(new int[]{0, 0});
                f -= iArr[1];
            }
            C3208p1 m19392k = C3218s0.m19350b(this.f15454e).m19392k(f);
            m19392k.m19394i(this.f15449D);
            c3921h2.m17733c(m19392k);
            if (this.f15469t && (view = this.f15457h) != null) {
                c3921h2.m17733c(C3218s0.m19350b(view).m19392k(f));
            }
            c3921h2.m17730f(f15444E);
            c3921h2.m17731e(250L);
            c3921h2.m17729g(this.f15447B);
            this.f15474y = c3921h2;
            c3921h2.m17728h();
            return;
        }
        this.f15447B.mo17260b(null);
    }

    /* renamed from: y */
    public void m19496y(boolean z) {
        View view;
        View view2;
        int[] iArr;
        C3921h c3921h = this.f15474y;
        if (c3921h != null) {
            c3921h.m17735a();
        }
        this.f15454e.setVisibility(0);
        if (this.f15468s == 0 && (this.f15475z || z)) {
            this.f15454e.setTranslationY(0.0f);
            float f = -this.f15454e.getHeight();
            if (z) {
                this.f15454e.getLocationInWindow(new int[]{0, 0});
                f -= iArr[1];
            }
            this.f15454e.setTranslationY(f);
            C3921h c3921h2 = new C3921h();
            C3208p1 m19392k = C3218s0.m19350b(this.f15454e).m19392k(0.0f);
            m19392k.m19394i(this.f15449D);
            c3921h2.m17733c(m19392k);
            if (this.f15469t && (view2 = this.f15457h) != null) {
                view2.setTranslationY(f);
                c3921h2.m17733c(C3218s0.m19350b(this.f15457h).m19392k(0.0f));
            }
            c3921h2.m17730f(f15445F);
            c3921h2.m17731e(250L);
            c3921h2.m17729g(this.f15448C);
            this.f15474y = c3921h2;
            c3921h2.m17728h();
        } else {
            this.f15454e.setAlpha(1.0f);
            this.f15454e.setTranslationY(0.0f);
            if (this.f15469t && (view = this.f15457h) != null) {
                view.setTranslationY(0.0f);
            }
            this.f15448C.mo17260b(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f15453d;
        if (actionBarOverlayLayout != null) {
            C3218s0.m19366E(actionBarOverlayLayout);
        }
    }

    /* renamed from: z */
    public final InterfaceC4234t0 m19495z(View view) {
        String str;
        if (view instanceof InterfaceC4234t0) {
            return (InterfaceC4234t0) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        if (view != null) {
            str = view.getClass().getSimpleName();
        } else {
            str = "null";
        }
        sb.append(str);
        throw new IllegalStateException(sb.toString());
    }

    public C3145p(Dialog dialog) {
        m19525C(dialog.getWindow().getDecorView());
    }
}
