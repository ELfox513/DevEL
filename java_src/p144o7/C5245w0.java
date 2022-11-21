package p144o7;

import java.util.Iterator;
import java.util.Map;
import p144o7.C5126e0;
import p144o7.C5226u;
import p144o7.C5230u1;
/* renamed from: o7.w0 */
/* loaded from: classes2.dex */
public final class C5245w0<T> implements InterfaceC5150h1<T> {

    /* renamed from: a */
    public final InterfaceC5210s0 f19699a;

    /* renamed from: b */
    public final AbstractC5195o1<?, ?> f19700b;

    /* renamed from: c */
    public final boolean f19701c;

    /* renamed from: d */
    public final AbstractC5200q<?> f19702d;

    /* renamed from: i */
    public static <T> C5245w0<T> m13819i(AbstractC5195o1<?, ?> abstractC5195o1, AbstractC5200q<?> abstractC5200q, InterfaceC5210s0 interfaceC5210s0) {
        return new C5245w0<>(abstractC5195o1, abstractC5200q, interfaceC5210s0);
    }

    @Override // p144o7.InterfaceC5150h1
    /* renamed from: e */
    public void mo13823e(T t, InterfaceC5136g1 interfaceC5136g1, C5196p c5196p) {
        m13820h(this.f19700b, this.f19702d, t, interfaceC5136g1, c5196p);
    }

    /* renamed from: k */
    public final <UT, UB> void m13817k(AbstractC5195o1<UT, UB> abstractC5195o1, T t, InterfaceC5242v1 interfaceC5242v1) {
        abstractC5195o1.mo14113s(abstractC5195o1.mo14123g(t), interfaceC5242v1);
    }

    @Override // p144o7.InterfaceC5150h1
    public T newInstance() {
        return (T) this.f19699a.mo13773u().mo13779s();
    }

    @Override // p144o7.InterfaceC5150h1
    /* renamed from: a */
    public void mo13827a(T t, T t2) {
        C5162j1.m14410G(this.f19700b, t, t2);
        if (this.f19701c) {
            C5162j1.m14412E(this.f19702d, t, t2);
        }
    }

    @Override // p144o7.InterfaceC5150h1
    /* renamed from: b */
    public void mo13826b(T t) {
        this.f19700b.mo14120j(t);
        this.f19702d.mo14100f(t);
    }

    @Override // p144o7.InterfaceC5150h1
    /* renamed from: c */
    public void mo13825c(T t, InterfaceC5242v1 interfaceC5242v1) {
        Iterator<Map.Entry<?, Object>> m13957s = this.f19702d.mo14103c(t).m13957s();
        while (m13957s.hasNext()) {
            Map.Entry<?, Object> next = m13957s.next();
            C5226u.InterfaceC5228b interfaceC5228b = (C5226u.InterfaceC5228b) next.getKey();
            if (interfaceC5228b.mo13766w() == C5230u1.EnumC5237c.MESSAGE && !interfaceC5228b.mo13769i() && !interfaceC5228b.mo13765y()) {
                if (next instanceof C5126e0.C5128b) {
                    interfaceC5242v1.mo13862d(interfaceC5228b.mo13770e(), ((C5126e0.C5128b) next).m14594a().m14571e());
                } else {
                    interfaceC5242v1.mo13862d(interfaceC5228b.mo13770e(), next.getValue());
                }
            } else {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
        }
        m13817k(this.f19700b, t, interfaceC5242v1);
    }

    @Override // p144o7.InterfaceC5150h1
    /* renamed from: d */
    public final boolean mo13824d(T t) {
        return this.f19702d.mo14103c(t).m13960p();
    }

    @Override // p144o7.InterfaceC5150h1
    public boolean equals(T t, T t2) {
        if (!this.f19700b.mo14123g(t).equals(this.f19700b.mo14123g(t2))) {
            return false;
        }
        if (this.f19701c) {
            return this.f19702d.mo14103c(t).equals(this.f19702d.mo14103c(t2));
        }
        return true;
    }

    @Override // p144o7.InterfaceC5150h1
    /* renamed from: f */
    public int mo13822f(T t) {
        int m13821g = m13821g(this.f19700b, t) + 0;
        if (this.f19701c) {
            return m13821g + this.f19702d.mo14103c(t).m13966j();
        }
        return m13821g;
    }

    @Override // p144o7.InterfaceC5150h1
    public int hashCode(T t) {
        int hashCode = this.f19700b.mo14123g(t).hashCode();
        if (this.f19701c) {
            return (hashCode * 53) + this.f19702d.mo14103c(t).hashCode();
        }
        return hashCode;
    }

    public C5245w0(AbstractC5195o1<?, ?> abstractC5195o1, AbstractC5200q<?> abstractC5200q, InterfaceC5210s0 interfaceC5210s0) {
        this.f19700b = abstractC5195o1;
        this.f19701c = abstractC5200q.mo14101e(interfaceC5210s0);
        this.f19702d = abstractC5200q;
        this.f19699a = interfaceC5210s0;
    }

    /* renamed from: g */
    public final <UT, UB> int m13821g(AbstractC5195o1<UT, UB> abstractC5195o1, T t) {
        return abstractC5195o1.mo14121i(abstractC5195o1.mo14123g(t));
    }

    /* renamed from: h */
    public final <UT, UB, ET extends C5226u.InterfaceC5228b<ET>> void m13820h(AbstractC5195o1<UT, UB> abstractC5195o1, AbstractC5200q<ET> abstractC5200q, T t, InterfaceC5136g1 interfaceC5136g1, C5196p c5196p) {
        UB mo14124f = abstractC5195o1.mo14124f(t);
        C5226u<ET> mo14102d = abstractC5200q.mo14102d(t);
        do {
            try {
                if (interfaceC5136g1.mo14477C() == Integer.MAX_VALUE) {
                    return;
                }
            } finally {
                abstractC5195o1.mo14117o(t, mo14124f);
            }
        } while (m13818j(interfaceC5136g1, c5196p, abstractC5200q, mo14102d, abstractC5195o1, mo14124f));
    }

    /* renamed from: j */
    public final <UT, UB, ET extends C5226u.InterfaceC5228b<ET>> boolean m13818j(InterfaceC5136g1 interfaceC5136g1, C5196p c5196p, AbstractC5200q<ET> abstractC5200q, C5226u<ET> c5226u, AbstractC5195o1<UT, UB> abstractC5195o1, UB ub) {
        int mo14433v = interfaceC5136g1.mo14433v();
        if (mo14433v != C5230u1.f19571a) {
            if (C5230u1.m13943b(mo14433v) == 2) {
                Object mo14104b = abstractC5200q.mo14104b(c5196p, this.f19699a, C5230u1.m13944a(mo14433v));
                if (mo14104b != null) {
                    abstractC5200q.mo14098h(interfaceC5136g1, mo14104b, c5196p, c5226u);
                    return true;
                }
                return abstractC5195o1.m14165m(ub, interfaceC5136g1);
            }
            return interfaceC5136g1.mo14471I();
        }
        int i = 0;
        Object obj = null;
        AbstractC5137h abstractC5137h = null;
        while (interfaceC5136g1.mo14477C() != Integer.MAX_VALUE) {
            int mo14433v2 = interfaceC5136g1.mo14433v();
            if (mo14433v2 == C5230u1.f19573c) {
                i = interfaceC5136g1.mo14442m();
                obj = abstractC5200q.mo14104b(c5196p, this.f19699a, i);
            } else if (mo14433v2 == C5230u1.f19574d) {
                if (obj != null) {
                    abstractC5200q.mo14098h(interfaceC5136g1, obj, c5196p, c5226u);
                } else {
                    abstractC5137h = interfaceC5136g1.mo14474F();
                }
            } else if (!interfaceC5136g1.mo14471I()) {
                break;
            }
        }
        if (interfaceC5136g1.mo14433v() == C5230u1.f19572b) {
            if (abstractC5137h != null) {
                if (obj != null) {
                    abstractC5200q.mo14097i(abstractC5137h, obj, c5196p, c5226u);
                } else {
                    abstractC5195o1.mo14126d(ub, i, abstractC5137h);
                }
            }
            return true;
        }
        throw C5117c0.m14638a();
    }
}
