package p168r4;

import android.os.Handler;
import android.util.Pair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: r4.j6 */
/* loaded from: classes2.dex */
public final class C5899j6 {

    /* renamed from: d */
    public final InterfaceC5863i6 f25922d;

    /* renamed from: e */
    public final ot3 f25923e;

    /* renamed from: f */
    public final po2 f25924f;

    /* renamed from: g */
    public final HashMap<C5826h6, C5789g6> f25925g;

    /* renamed from: h */
    public final Set<C5826h6> f25926h;

    /* renamed from: i */
    public boolean f25927i;

    /* renamed from: j */
    public InterfaceC5844ho f25928j;

    /* renamed from: k */
    public yu3 f25929k = new yu3(0);

    /* renamed from: b */
    public final IdentityHashMap<et3, C5826h6> f25920b = new IdentityHashMap<>();

    /* renamed from: c */
    public final Map<Object, C5826h6> f25921c = new HashMap();

    /* renamed from: a */
    public final List<C5826h6> f25919a = new ArrayList();

    /* renamed from: c */
    public final boolean m10416c() {
        return this.f25927i;
    }

    /* renamed from: d */
    public final int m10415d() {
        return this.f25919a.size();
    }

    /* renamed from: i */
    public final /* synthetic */ void m10410i(ht3 ht3Var, AbstractC5717e8 abstractC5717e8) {
        this.f25922d.mo4857k();
    }

    /* renamed from: l */
    public final AbstractC5717e8 m10407l(int i, int i2, yu3 yu3Var) {
        boolean z = false;
        if (i >= 0 && i <= i2 && i2 <= m10415d()) {
            z = true;
        }
        C5903ja.m10374a(z);
        this.f25929k = yu3Var;
        m10401r(i, i2);
        return m10411h();
    }

    /* renamed from: e */
    public final void m10414e(InterfaceC5844ho interfaceC5844ho) {
        C5903ja.m10371d(!this.f25927i);
        this.f25928j = interfaceC5844ho;
        for (int i = 0; i < this.f25919a.size(); i++) {
            C5826h6 c5826h6 = this.f25919a.get(i);
            m10399t(c5826h6);
            this.f25926h.add(c5826h6);
        }
        this.f25927i = true;
    }

    /* renamed from: f */
    public final void m10413f(et3 et3Var) {
        C5826h6 remove = this.f25920b.remove(et3Var);
        remove.getClass();
        remove.f24474a.mo6012h(et3Var);
        remove.f24476c.remove(((xs3) et3Var).f33759a);
        if (!this.f25920b.isEmpty()) {
            m10403p();
        }
        m10398u(remove);
    }

    /* renamed from: g */
    public final void m10412g() {
        for (C5789g6 c5789g6 : this.f25925g.values()) {
            try {
                c5789g6.f23903a.mo7088g(c5789g6.f23904b);
            } catch (RuntimeException e) {
                C5720eb.m11832b("MediaSourceList", "Failed to release child source.", e);
            }
            c5789g6.f23903a.mo7086k(c5789g6.f23905c);
            c5789g6.f23903a.mo7092c(c5789g6.f23905c);
        }
        this.f25925g.clear();
        this.f25926h.clear();
        this.f25927i = false;
    }

    /* renamed from: h */
    public final AbstractC5717e8 m10411h() {
        if (!this.f25919a.isEmpty()) {
            int i = 0;
            for (int i2 = 0; i2 < this.f25919a.size(); i2++) {
                C5826h6 c5826h6 = this.f25919a.get(i2);
                c5826h6.f24477d = i;
                i += c5826h6.f24474a.m12696F().mo4076a();
            }
            return new C5716e7(this.f25919a, this.f25929k, null);
        }
        return AbstractC5717e8.f22905a;
    }

    /* renamed from: j */
    public final AbstractC5717e8 m10409j(List<C5826h6> list, yu3 yu3Var) {
        m10401r(0, this.f25919a.size());
        return m10408k(this.f25919a.size(), list, yu3Var);
    }

    /* renamed from: o */
    public final et3 m10404o(ft3 ft3Var, qw3 qw3Var, long j) {
        Object obj = ft3Var.f23237a;
        Object obj2 = ((Pair) obj).first;
        ft3 m11366c = ft3Var.m11366c(((Pair) obj).second);
        C5826h6 c5826h6 = this.f25921c.get(obj2);
        c5826h6.getClass();
        this.f25926h.add(c5826h6);
        C5789g6 c5789g6 = this.f25925g.get(c5826h6);
        if (c5789g6 != null) {
            c5789g6.f23903a.mo7090e(c5789g6.f23904b);
        }
        c5826h6.f24476c.add(m11366c);
        xs3 mo6013b = c5826h6.f24474a.mo6013b(m11366c, qw3Var, j);
        this.f25920b.put(mo6013b, c5826h6);
        m10403p();
        return mo6013b;
    }

    /* renamed from: p */
    public final void m10403p() {
        Iterator<C5826h6> it = this.f25926h.iterator();
        while (it.hasNext()) {
            C5826h6 next = it.next();
            if (next.f24476c.isEmpty()) {
                m10402q(next);
                it.remove();
            }
        }
    }

    /* renamed from: q */
    public final void m10402q(C5826h6 c5826h6) {
        C5789g6 c5789g6 = this.f25925g.get(c5826h6);
        if (c5789g6 != null) {
            c5789g6.f23903a.mo7089f(c5789g6.f23904b);
        }
    }

    /* renamed from: r */
    public final void m10401r(int i, int i2) {
        while (true) {
            i2--;
            if (i2 >= i) {
                C5826h6 remove = this.f25919a.remove(i2);
                this.f25921c.remove(remove.f24475b);
                m10400s(i2, -remove.f24474a.m12696F().mo4076a());
                remove.f24478e = true;
                if (this.f25927i) {
                    m10398u(remove);
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: s */
    public final void m10400s(int i, int i2) {
        while (i < this.f25919a.size()) {
            this.f25919a.get(i).f24477d += i2;
            i++;
        }
    }

    /* renamed from: t */
    public final void m10399t(C5826h6 c5826h6) {
        bt3 bt3Var = c5826h6.f24474a;
        gt3 gt3Var = new gt3(this) { // from class: r4.e6

            /* renamed from: a */
            public final C5899j6 f22851a;

            {
                this.f22851a = this;
            }

            @Override // p168r4.gt3
            /* renamed from: a */
            public final void mo9274a(ht3 ht3Var, AbstractC5717e8 abstractC5717e8) {
                this.f22851a.m10410i(ht3Var, abstractC5717e8);
            }
        };
        C5752f6 c5752f6 = new C5752f6(this, c5826h6);
        this.f25925g.put(c5826h6, new C5789g6(bt3Var, gt3Var, c5752f6));
        bt3Var.mo7091d(new Handler(C5979lc.m9721P(), null), c5752f6);
        bt3Var.mo7093a(new Handler(C5979lc.m9721P(), null), c5752f6);
        bt3Var.mo7087j(gt3Var, this.f25928j);
    }

    /* renamed from: u */
    public final void m10398u(C5826h6 c5826h6) {
        if (c5826h6.f24478e && c5826h6.f24476c.isEmpty()) {
            C5789g6 remove = this.f25925g.remove(c5826h6);
            remove.getClass();
            remove.f23903a.mo7088g(remove.f23904b);
            remove.f23903a.mo7086k(remove.f23905c);
            remove.f23903a.mo7092c(remove.f23905c);
            this.f25926h.remove(c5826h6);
        }
    }

    public C5899j6(InterfaceC5863i6 interfaceC5863i6, c41 c41Var, Handler handler) {
        this.f25922d = interfaceC5863i6;
        ot3 ot3Var = new ot3();
        this.f25923e = ot3Var;
        po2 po2Var = new po2();
        this.f25924f = po2Var;
        this.f25925g = new HashMap<>();
        this.f25926h = new HashSet();
        ot3Var.m8697b(handler, c41Var);
        po2Var.m8231b(handler, c41Var);
    }

    /* renamed from: k */
    public final AbstractC5717e8 m10408k(int i, List<C5826h6> list, yu3 yu3Var) {
        if (!list.isEmpty()) {
            this.f25929k = yu3Var;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                C5826h6 c5826h6 = list.get(i2 - i);
                if (i2 > 0) {
                    C5826h6 c5826h62 = this.f25919a.get(i2 - 1);
                    c5826h6.m10973c(c5826h62.f24477d + c5826h62.f24474a.m12696F().mo4076a());
                } else {
                    c5826h6.m10973c(0);
                }
                m10400s(i2, c5826h6.f24474a.m12696F().mo4076a());
                this.f25919a.add(i2, c5826h6);
                this.f25921c.put(c5826h6.f24475b, c5826h6);
                if (this.f25927i) {
                    m10399t(c5826h6);
                    if (this.f25920b.isEmpty()) {
                        this.f25926h.add(c5826h6);
                    } else {
                        m10402q(c5826h6);
                    }
                }
            }
        }
        return m10411h();
    }

    /* renamed from: m */
    public final AbstractC5717e8 m10406m(int i, int i2, int i3, yu3 yu3Var) {
        boolean z;
        if (m10415d() >= 0) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10374a(z);
        this.f25929k = null;
        return m10411h();
    }

    /* renamed from: n */
    public final AbstractC5717e8 m10405n(yu3 yu3Var) {
        int m10415d = m10415d();
        if (yu3Var.m4557a() != m10415d) {
            yu3Var = yu3Var.m4550h().m4552f(0, m10415d);
        }
        this.f25929k = yu3Var;
        return m10411h();
    }
}
