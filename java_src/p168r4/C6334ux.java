package p168r4;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.concurrent.atomic.AtomicBoolean;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p184t2.AbstractC6704c;
import p184t2.C6710g;
import p184t2.C6725u;
import p184t2.C6726v;
import p184t2.C6728w;
import p184t2.C6729x;
import p184t2.InterfaceC6720q;
import p193u2.InterfaceC6882c;
/* renamed from: r4.ux */
/* loaded from: classes2.dex */
public final class C6334ux {

    /* renamed from: a */
    public final cb0 f32466a;

    /* renamed from: b */
    public final C6441xt f32467b;

    /* renamed from: c */
    public final AtomicBoolean f32468c;

    /* renamed from: d */
    public final C6726v f32469d;

    /* renamed from: e */
    public final C6516zu f32470e;

    /* renamed from: f */
    public InterfaceC5812gt f32471f;

    /* renamed from: g */
    public AbstractC6704c f32472g;

    /* renamed from: h */
    public C6710g[] f32473h;

    /* renamed from: i */
    public InterfaceC6882c f32474i;

    /* renamed from: j */
    public InterfaceC6369vv f32475j;

    /* renamed from: k */
    public C6728w f32476k;

    /* renamed from: l */
    public String f32477l;

    /* renamed from: m */
    public final ViewGroup f32478m;

    /* renamed from: n */
    public int f32479n;

    /* renamed from: o */
    public boolean f32480o;

    /* renamed from: p */
    public InterfaceC6720q f32481p;

    public C6334ux(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, C6441xt.f33766a, null, i);
    }

    /* renamed from: a */
    public static C6478yt m6321a(Context context, C6710g[] c6710gArr, int i) {
        for (C6710g c6710g : c6710gArr) {
            if (c6710g.equals(C6710g.f35342q)) {
                return C6478yt.m4572b1();
            }
        }
        C6478yt c6478yt = new C6478yt(context, c6710gArr);
        c6478yt.f34206u = m6320b(i);
        return c6478yt;
    }

    /* renamed from: b */
    public static boolean m6320b(int i) {
        return i == 1;
    }

    /* renamed from: e */
    public final AbstractC6704c m6317e() {
        return this.f32472g;
    }

    /* renamed from: g */
    public final C6710g[] m6315g() {
        return this.f32473h;
    }

    /* renamed from: i */
    public final InterfaceC6882c m6313i() {
        return this.f32474i;
    }

    /* renamed from: m */
    public final void m6309m(AbstractC6704c abstractC6704c) {
        this.f32472g = abstractC6704c;
        this.f32470e.m4081u(abstractC6704c);
    }

    /* renamed from: q */
    public final void m6305q(String str) {
        if (this.f32477l != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
        }
        this.f32477l = str;
    }

    /* renamed from: t */
    public final C6725u m6302t() {
        InterfaceC5853hx interfaceC5853hx = null;
        try {
            InterfaceC6369vv interfaceC6369vv = this.f32475j;
            if (interfaceC6369vv != null) {
                interfaceC5853hx = interfaceC6369vv.mo944z();
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
        return C6725u.m3549d(interfaceC5853hx);
    }

    /* renamed from: v */
    public final InterfaceC6720q m6300v() {
        return this.f32481p;
    }

    /* renamed from: w */
    public final C6726v m6299w() {
        return this.f32469d;
    }

    /* renamed from: z */
    public final C6728w m6296z() {
        return this.f32476k;
    }

    public C6334ux(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, C6441xt c6441xt, InterfaceC6369vv interfaceC6369vv, int i) {
        C6478yt c6478yt;
        this.f32466a = new cb0();
        this.f32469d = new C6726v();
        this.f32470e = new C6297tx(this);
        this.f32478m = viewGroup;
        this.f32467b = c6441xt;
        this.f32475j = null;
        this.f32468c = new AtomicBoolean(false);
        this.f32479n = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                C5813gu c5813gu = new C5813gu(context, attributeSet);
                this.f32473h = c5813gu.m11053a(z);
                this.f32477l = c5813gu.m11052b();
                if (viewGroup.isInEditMode()) {
                    vl0 m4568a = C6479yu.m4568a();
                    C6710g c6710g = this.f32473h[0];
                    int i2 = this.f32479n;
                    if (c6710g.equals(C6710g.f35342q)) {
                        c6478yt = C6478yt.m4572b1();
                    } else {
                        C6478yt c6478yt2 = new C6478yt(context, c6710g);
                        c6478yt2.f34206u = m6320b(i2);
                        c6478yt = c6478yt2;
                    }
                    m4568a.m6125c(viewGroup, c6478yt, "Ads by Google");
                }
            } catch (IllegalArgumentException e) {
                C6479yu.m4568a().m6126b(viewGroup, new C6478yt(context, C6710g.f35334i), e.getMessage(), e.getMessage());
            }
        }
    }

    /* renamed from: d */
    public final void m6318d() {
        try {
            InterfaceC6369vv interfaceC6369vv = this.f32475j;
            if (interfaceC6369vv != null) {
                interfaceC6369vv.mo973h();
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: f */
    public final C6710g m6316f() {
        C6478yt mo953t;
        try {
            InterfaceC6369vv interfaceC6369vv = this.f32475j;
            if (interfaceC6369vv != null && (mo953t = interfaceC6369vv.mo953t()) != null) {
                return C6729x.m3537a(mo953t.f34201p, mo953t.f34198b, mo953t.f34197a);
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
        C6710g[] c6710gArr = this.f32473h;
        if (c6710gArr != null) {
            return c6710gArr[0];
        }
        return null;
    }

    /* renamed from: h */
    public final String m6314h() {
        InterfaceC6369vv interfaceC6369vv;
        if (this.f32477l == null && (interfaceC6369vv = this.f32475j) != null) {
            try {
                this.f32477l = interfaceC6369vv.mo983P();
            } catch (RemoteException e) {
                cm0.m12434i("#007 Could not call remote method.", e);
            }
        }
        return this.f32477l;
    }

    /* renamed from: j */
    public final void m6312j(C6260sx c6260sx) {
        InterfaceC6369vv m4974d;
        try {
            if (this.f32475j == null) {
                if (this.f32473h != null && this.f32477l != null) {
                    Context context = this.f32478m.getContext();
                    C6478yt m6321a = m6321a(context, this.f32473h, this.f32479n);
                    if ("search_v2".equals(m6321a.f34197a)) {
                        m4974d = new C6146pu(C6479yu.m4567b(), context, m6321a, this.f32477l).m4974d(context, false);
                    } else {
                        m4974d = new C6109ou(C6479yu.m4567b(), context, m6321a, this.f32477l, this.f32466a).m4974d(context, false);
                    }
                    this.f32475j = m4974d;
                    m4974d.mo980S1(new BinderC6108ot(this.f32470e));
                    InterfaceC5812gt interfaceC5812gt = this.f32471f;
                    if (interfaceC5812gt != null) {
                        this.f32475j.mo993B6(new BinderC5849ht(interfaceC5812gt));
                    }
                    InterfaceC6882c interfaceC6882c = this.f32474i;
                    if (interfaceC6882c != null) {
                        this.f32475j.mo951v4(new BinderC5621bn(interfaceC6882c));
                    }
                    C6728w c6728w = this.f32476k;
                    if (c6728w != null) {
                        this.f32475j.mo976Z1(new C6446xy(c6728w));
                    }
                    this.f32475j.mo978X4(new BinderC6224ry(this.f32481p));
                    this.f32475j.mo986J4(this.f32480o);
                    InterfaceC6369vv interfaceC6369vv = this.f32475j;
                    if (interfaceC6369vv != null) {
                        try {
                            InterfaceC3512a mo968j = interfaceC6369vv.mo968j();
                            if (mo968j != null) {
                                this.f32478m.addView((View) BinderC3514b.m18740t0(mo968j));
                            }
                        } catch (RemoteException e) {
                            cm0.m12434i("#007 Could not call remote method.", e);
                        }
                    }
                } else {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
            }
            InterfaceC6369vv interfaceC6369vv2 = this.f32475j;
            interfaceC6369vv2.getClass();
            if (interfaceC6369vv2.mo948w5(this.f32467b.m5009a(this.f32478m.getContext(), c6260sx))) {
                this.f32466a.m12499g7(c6260sx.m6964l());
            }
        } catch (RemoteException e2) {
            cm0.m12434i("#007 Could not call remote method.", e2);
        }
    }

    /* renamed from: k */
    public final void m6311k() {
        try {
            InterfaceC6369vv interfaceC6369vv = this.f32475j;
            if (interfaceC6369vv != null) {
                interfaceC6369vv.mo965l();
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: l */
    public final void m6310l() {
        try {
            InterfaceC6369vv interfaceC6369vv = this.f32475j;
            if (interfaceC6369vv != null) {
                interfaceC6369vv.mo959p();
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: n */
    public final void m6308n(InterfaceC5812gt interfaceC5812gt) {
        BinderC5849ht binderC5849ht;
        try {
            this.f32471f = interfaceC5812gt;
            InterfaceC6369vv interfaceC6369vv = this.f32475j;
            if (interfaceC6369vv != null) {
                if (interfaceC5812gt != null) {
                    binderC5849ht = new BinderC5849ht(interfaceC5812gt);
                } else {
                    binderC5849ht = null;
                }
                interfaceC6369vv.mo993B6(binderC5849ht);
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: o */
    public final void m6307o(C6710g... c6710gArr) {
        if (this.f32473h == null) {
            m6306p(c6710gArr);
            return;
        }
        throw new IllegalStateException("The ad size can only be set once on AdView.");
    }

    /* renamed from: p */
    public final void m6306p(C6710g... c6710gArr) {
        this.f32473h = c6710gArr;
        try {
            InterfaceC6369vv interfaceC6369vv = this.f32475j;
            if (interfaceC6369vv != null) {
                interfaceC6369vv.mo981S0(m6321a(this.f32478m.getContext(), this.f32473h, this.f32479n));
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
        this.f32478m.requestLayout();
    }

    /* renamed from: r */
    public final void m6304r(InterfaceC6882c interfaceC6882c) {
        BinderC5621bn binderC5621bn;
        try {
            this.f32474i = interfaceC6882c;
            InterfaceC6369vv interfaceC6369vv = this.f32475j;
            if (interfaceC6369vv != null) {
                if (interfaceC6882c != null) {
                    binderC5621bn = new BinderC5621bn(interfaceC6882c);
                } else {
                    binderC5621bn = null;
                }
                interfaceC6369vv.mo951v4(binderC5621bn);
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: s */
    public final void m6303s(boolean z) {
        this.f32480o = z;
        try {
            InterfaceC6369vv interfaceC6369vv = this.f32475j;
            if (interfaceC6369vv != null) {
                interfaceC6369vv.mo986J4(z);
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: u */
    public final void m6301u(InterfaceC6720q interfaceC6720q) {
        try {
            this.f32481p = interfaceC6720q;
            InterfaceC6369vv interfaceC6369vv = this.f32475j;
            if (interfaceC6369vv != null) {
                interfaceC6369vv.mo978X4(new BinderC6224ry(interfaceC6720q));
            }
        } catch (RemoteException e) {
            cm0.m12434i("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: x */
    public final InterfaceC6000lx m6298x() {
        InterfaceC6369vv interfaceC6369vv = this.f32475j;
        if (interfaceC6369vv != null) {
            try {
                return interfaceC6369vv.mo949w0();
            } catch (RemoteException e) {
                cm0.m12434i("#007 Could not call remote method.", e);
            }
        }
        return null;
    }

    /* renamed from: y */
    public final void m6297y(C6728w c6728w) {
        C6446xy c6446xy;
        this.f32476k = c6728w;
        try {
            InterfaceC6369vv interfaceC6369vv = this.f32475j;
            if (interfaceC6369vv != null) {
                if (c6728w == null) {
                    c6446xy = null;
                } else {
                    c6446xy = new C6446xy(c6728w);
                }
                interfaceC6369vv.mo976Z1(c6446xy);
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }
}
