package p168r4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import java.util.Collections;
import java.util.List;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p145p.C5283g;
/* renamed from: r4.ej1 */
/* loaded from: classes2.dex */
public final class ej1 {

    /* renamed from: a */
    public int f23011a;

    /* renamed from: b */
    public InterfaceC6000lx f23012b;

    /* renamed from: c */
    public h20 f23013c;

    /* renamed from: d */
    public View f23014d;

    /* renamed from: e */
    public List<?> f23015e;

    /* renamed from: g */
    public BinderC5668cy f23017g;

    /* renamed from: h */
    public Bundle f23018h;

    /* renamed from: i */
    public cs0 f23019i;

    /* renamed from: j */
    public cs0 f23020j;

    /* renamed from: k */
    public cs0 f23021k;

    /* renamed from: l */
    public InterfaceC3512a f23022l;

    /* renamed from: m */
    public View f23023m;

    /* renamed from: n */
    public View f23024n;

    /* renamed from: o */
    public InterfaceC3512a f23025o;

    /* renamed from: p */
    public double f23026p;

    /* renamed from: q */
    public p20 f23027q;

    /* renamed from: r */
    public p20 f23028r;

    /* renamed from: s */
    public String f23029s;

    /* renamed from: v */
    public float f23032v;

    /* renamed from: w */
    public String f23033w;

    /* renamed from: t */
    public final C5283g<String, z10> f23030t = new C5283g<>();

    /* renamed from: u */
    public final C5283g<String, String> f23031u = new C5283g<>();

    /* renamed from: f */
    public List<BinderC5668cy> f23016f = Collections.emptyList();

    /* renamed from: C */
    public static ej1 m11793C(rb0 rb0Var) {
        try {
            dj1 m11787I = m11787I(rb0Var.m7560e3(), null);
            h20 m7553p6 = rb0Var.m7553p6();
            String m7563c = rb0Var.m7563c();
            List<?> m7561d = rb0Var.m7561d();
            String m7558g = rb0Var.m7558g();
            Bundle m7567A2 = rb0Var.m7567A2();
            String m7555j = rb0Var.m7555j();
            InterfaceC3512a m7565E = rb0Var.m7565E();
            String m7557h = rb0Var.m7557h();
            p20 m7559f = rb0Var.m7559f();
            ej1 ej1Var = new ej1();
            ej1Var.f23011a = 1;
            ej1Var.f23012b = m11787I;
            ej1Var.f23013c = m7553p6;
            ej1Var.f23014d = (View) m11788H(rb0Var.m7550w());
            ej1Var.m11771Y("headline", m7563c);
            ej1Var.f23015e = m7561d;
            ej1Var.m11771Y("body", m7558g);
            ej1Var.f23018h = m7567A2;
            ej1Var.m11771Y("call_to_action", m7555j);
            ej1Var.f23023m = (View) m11788H(rb0Var.m7551t());
            ej1Var.f23025o = m7565E;
            ej1Var.m11771Y("advertiser", m7557h);
            ej1Var.f23028r = m7559f;
            return ej1Var;
        } catch (RemoteException e) {
            cm0.m12436g("Failed to get native ad from content ad mapper", e);
            return null;
        }
    }

    /* renamed from: D */
    public static ej1 m11792D(qb0 qb0Var) {
        try {
            dj1 m11787I = m11787I(qb0Var.m7906e3(), null);
            h20 m7894p6 = qb0Var.m7894p6();
            String m7908c = qb0Var.m7908c();
            List<?> m7907d = qb0Var.m7907d();
            String m7902g = qb0Var.m7902g();
            Bundle m7892w = qb0Var.m7892w();
            String m7899j = qb0Var.m7899j();
            InterfaceC3512a m7905e7 = qb0Var.m7905e7();
            String m7901i = qb0Var.m7901i();
            String m7898k = qb0Var.m7898k();
            double m7909b2 = qb0Var.m7909b2();
            p20 m7904f = qb0Var.m7904f();
            ej1 ej1Var = new ej1();
            ej1Var.f23011a = 2;
            ej1Var.f23012b = m11787I;
            ej1Var.f23013c = m7894p6;
            ej1Var.f23014d = (View) m11788H(qb0Var.m7893t());
            ej1Var.m11771Y("headline", m7908c);
            ej1Var.f23015e = m7907d;
            ej1Var.m11771Y("body", m7902g);
            ej1Var.f23018h = m7892w;
            ej1Var.m11771Y("call_to_action", m7899j);
            ej1Var.f23023m = (View) m11788H(qb0Var.m7911C6());
            ej1Var.f23025o = m7905e7;
            ej1Var.m11771Y("store", m7901i);
            ej1Var.m11771Y("price", m7898k);
            ej1Var.f23026p = m7909b2;
            ej1Var.f23027q = m7904f;
            return ej1Var;
        } catch (RemoteException e) {
            cm0.m12436g("Failed to get native ad from app install ad mapper", e);
            return null;
        }
    }

    /* renamed from: E */
    public static ej1 m11791E(qb0 qb0Var) {
        try {
            return m11789G(m11787I(qb0Var.m7906e3(), null), qb0Var.m7894p6(), (View) m11788H(qb0Var.m7893t()), qb0Var.m7908c(), qb0Var.m7907d(), qb0Var.m7902g(), qb0Var.m7892w(), qb0Var.m7899j(), (View) m11788H(qb0Var.m7911C6()), qb0Var.m7905e7(), qb0Var.m7901i(), qb0Var.m7898k(), qb0Var.m7909b2(), qb0Var.m7904f(), null, 0.0f);
        } catch (RemoteException e) {
            cm0.m12436g("Failed to get native ad assets from app install ad mapper", e);
            return null;
        }
    }

    /* renamed from: F */
    public static ej1 m11790F(rb0 rb0Var) {
        try {
            return m11789G(m11787I(rb0Var.m7560e3(), null), rb0Var.m7553p6(), (View) m11788H(rb0Var.m7550w()), rb0Var.m7563c(), rb0Var.m7561d(), rb0Var.m7558g(), rb0Var.m7567A2(), rb0Var.m7555j(), (View) m11788H(rb0Var.m7551t()), rb0Var.m7565E(), null, null, -1.0d, rb0Var.m7559f(), rb0Var.m7557h(), 0.0f);
        } catch (RemoteException e) {
            cm0.m12436g("Failed to get native ad assets from content ad mapper", e);
            return null;
        }
    }

    /* renamed from: G */
    public static ej1 m11789G(InterfaceC6000lx interfaceC6000lx, h20 h20Var, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, InterfaceC3512a interfaceC3512a, String str4, String str5, double d, p20 p20Var, String str6, float f) {
        ej1 ej1Var = new ej1();
        ej1Var.f23011a = 6;
        ej1Var.f23012b = interfaceC6000lx;
        ej1Var.f23013c = h20Var;
        ej1Var.f23014d = view;
        ej1Var.m11771Y("headline", str);
        ej1Var.f23015e = list;
        ej1Var.m11771Y("body", str2);
        ej1Var.f23018h = bundle;
        ej1Var.m11771Y("call_to_action", str3);
        ej1Var.f23023m = view2;
        ej1Var.f23025o = interfaceC3512a;
        ej1Var.m11771Y("store", str4);
        ej1Var.m11771Y("price", str5);
        ej1Var.f23026p = d;
        ej1Var.f23027q = p20Var;
        ej1Var.m11771Y("advertiser", str6);
        ej1Var.m11768a0(f);
        return ej1Var;
    }

    /* renamed from: H */
    public static <T> T m11788H(InterfaceC3512a interfaceC3512a) {
        if (interfaceC3512a == null) {
            return null;
        }
        return (T) BinderC3514b.m18740t0(interfaceC3512a);
    }

    /* renamed from: I */
    public static dj1 m11787I(InterfaceC6000lx interfaceC6000lx, ub0 ub0Var) {
        if (interfaceC6000lx == null) {
            return null;
        }
        return new dj1(interfaceC6000lx, ub0Var);
    }

    /* renamed from: A */
    public final synchronized void m11795A(int i) {
        this.f23011a = i;
    }

    /* renamed from: J */
    public final synchronized void m11786J(InterfaceC6000lx interfaceC6000lx) {
        this.f23012b = interfaceC6000lx;
    }

    /* renamed from: K */
    public final synchronized void m11785K(h20 h20Var) {
        this.f23013c = h20Var;
    }

    /* renamed from: L */
    public final synchronized void m11784L(List<z10> list) {
        this.f23015e = list;
    }

    /* renamed from: M */
    public final synchronized void m11783M(List<BinderC5668cy> list) {
        this.f23016f = list;
    }

    /* renamed from: N */
    public final synchronized void m11782N(BinderC5668cy binderC5668cy) {
        this.f23017g = binderC5668cy;
    }

    /* renamed from: O */
    public final synchronized void m11781O(View view) {
        this.f23023m = view;
    }

    /* renamed from: P */
    public final synchronized void m11780P(View view) {
        this.f23024n = view;
    }

    /* renamed from: Q */
    public final synchronized void m11779Q(double d) {
        this.f23026p = d;
    }

    /* renamed from: R */
    public final synchronized void m11778R(p20 p20Var) {
        this.f23027q = p20Var;
    }

    /* renamed from: S */
    public final synchronized void m11777S(p20 p20Var) {
        this.f23028r = p20Var;
    }

    /* renamed from: T */
    public final synchronized void m11776T(String str) {
        this.f23029s = str;
    }

    /* renamed from: U */
    public final synchronized void m11775U(cs0 cs0Var) {
        this.f23019i = cs0Var;
    }

    /* renamed from: V */
    public final synchronized void m11774V(cs0 cs0Var) {
        this.f23020j = cs0Var;
    }

    /* renamed from: W */
    public final synchronized void m11773W(cs0 cs0Var) {
        this.f23021k = cs0Var;
    }

    /* renamed from: X */
    public final synchronized void m11772X(InterfaceC3512a interfaceC3512a) {
        this.f23022l = interfaceC3512a;
    }

    /* renamed from: Y */
    public final synchronized void m11771Y(String str, String str2) {
        if (str2 == null) {
            this.f23031u.remove(str);
        } else {
            this.f23031u.put(str, str2);
        }
    }

    /* renamed from: Z */
    public final synchronized void m11770Z(String str, z10 z10Var) {
        if (z10Var == null) {
            this.f23030t.remove(str);
        } else {
            this.f23030t.put(str, z10Var);
        }
    }

    /* renamed from: a */
    public final synchronized List<?> m11769a() {
        return this.f23015e;
    }

    /* renamed from: a0 */
    public final synchronized void m11768a0(float f) {
        this.f23032v = f;
    }

    /* renamed from: b0 */
    public final synchronized void m11766b0(String str) {
        this.f23033w = str;
    }

    /* renamed from: c */
    public final synchronized List<BinderC5668cy> m11765c() {
        return this.f23016f;
    }

    /* renamed from: c0 */
    public final synchronized String m11764c0(String str) {
        return this.f23031u.get(str);
    }

    /* renamed from: d */
    public final synchronized BinderC5668cy m11763d() {
        return this.f23017g;
    }

    /* renamed from: d0 */
    public final synchronized int m11762d0() {
        return this.f23011a;
    }

    /* renamed from: e */
    public final synchronized String m11761e() {
        return m11764c0("body");
    }

    /* renamed from: e0 */
    public final synchronized InterfaceC6000lx m11760e0() {
        return this.f23012b;
    }

    /* renamed from: f */
    public final synchronized Bundle m11759f() {
        if (this.f23018h == null) {
            this.f23018h = new Bundle();
        }
        return this.f23018h;
    }

    /* renamed from: f0 */
    public final synchronized h20 m11758f0() {
        return this.f23013c;
    }

    /* renamed from: g */
    public final synchronized String m11757g() {
        return m11764c0("call_to_action");
    }

    /* renamed from: g0 */
    public final synchronized View m11756g0() {
        return this.f23014d;
    }

    /* renamed from: h */
    public final synchronized View m11755h() {
        return this.f23023m;
    }

    /* renamed from: h0 */
    public final synchronized String m11754h0() {
        return m11764c0("headline");
    }

    /* renamed from: i */
    public final synchronized View m11753i() {
        return this.f23024n;
    }

    /* renamed from: j */
    public final synchronized InterfaceC3512a m11752j() {
        return this.f23025o;
    }

    /* renamed from: k */
    public final synchronized String m11751k() {
        return m11764c0("store");
    }

    /* renamed from: l */
    public final synchronized String m11750l() {
        return m11764c0("price");
    }

    /* renamed from: m */
    public final synchronized double m11749m() {
        return this.f23026p;
    }

    /* renamed from: n */
    public final synchronized p20 m11748n() {
        return this.f23027q;
    }

    /* renamed from: o */
    public final synchronized String m11747o() {
        return m11764c0("advertiser");
    }

    /* renamed from: p */
    public final synchronized p20 m11746p() {
        return this.f23028r;
    }

    /* renamed from: q */
    public final synchronized String m11745q() {
        return this.f23029s;
    }

    /* renamed from: r */
    public final synchronized cs0 m11744r() {
        return this.f23019i;
    }

    /* renamed from: s */
    public final synchronized cs0 m11743s() {
        return this.f23020j;
    }

    /* renamed from: t */
    public final synchronized cs0 m11742t() {
        return this.f23021k;
    }

    /* renamed from: u */
    public final synchronized InterfaceC3512a m11741u() {
        return this.f23022l;
    }

    /* renamed from: v */
    public final synchronized C5283g<String, z10> m11740v() {
        return this.f23030t;
    }

    /* renamed from: w */
    public final synchronized float m11739w() {
        return this.f23032v;
    }

    /* renamed from: x */
    public final synchronized String m11738x() {
        return this.f23033w;
    }

    /* renamed from: y */
    public final synchronized C5283g<String, String> m11737y() {
        return this.f23031u;
    }

    /* renamed from: z */
    public final synchronized void m11736z() {
        cs0 cs0Var = this.f23019i;
        if (cs0Var != null) {
            cs0Var.destroy();
            this.f23019i = null;
        }
        cs0 cs0Var2 = this.f23020j;
        if (cs0Var2 != null) {
            cs0Var2.destroy();
            this.f23020j = null;
        }
        cs0 cs0Var3 = this.f23021k;
        if (cs0Var3 != null) {
            cs0Var3.destroy();
            this.f23021k = null;
        }
        this.f23022l = null;
        this.f23030t.clear();
        this.f23031u.clear();
        this.f23012b = null;
        this.f23013c = null;
        this.f23014d = null;
        this.f23015e = null;
        this.f23018h = null;
        this.f23023m = null;
        this.f23024n = null;
        this.f23025o = null;
        this.f23027q = null;
        this.f23028r = null;
        this.f23029s = null;
    }

    /* renamed from: b */
    public final p20 m11767b() {
        List<?> list = this.f23015e;
        if (list != null && list.size() != 0) {
            Object obj = this.f23015e.get(0);
            if (obj instanceof IBinder) {
                return o20.m8925f7((IBinder) obj);
            }
        }
        return null;
    }

    /* renamed from: B */
    public static ej1 m11794B(ub0 ub0Var) {
        try {
            return m11789G(m11787I(ub0Var.mo6571p(), ub0Var), ub0Var.mo6570q(), (View) m11788H(ub0Var.mo6572o()), ub0Var.mo6584c(), ub0Var.mo6583d(), ub0Var.mo6580g(), ub0Var.mo6569r(), ub0Var.mo6577j(), (View) m11788H(ub0Var.mo6574m()), ub0Var.mo6566w(), ub0Var.mo6576k(), ub0Var.mo6575l(), ub0Var.mo6578i(), ub0Var.mo6581f(), ub0Var.mo6579h(), ub0Var.mo6567v());
        } catch (RemoteException e) {
            cm0.m12436g("Failed to get native ad assets from unified ad mapper", e);
            return null;
        }
    }
}
