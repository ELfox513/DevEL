package p144o7;
/* renamed from: o7.o1 */
/* loaded from: classes2.dex */
public abstract class AbstractC5195o1<T, B> {
    /* renamed from: a */
    public abstract void mo14129a(B b, int i, int i2);

    /* renamed from: b */
    public abstract void mo14128b(B b, int i, long j);

    /* renamed from: c */
    public abstract void mo14127c(B b, int i, T t);

    /* renamed from: d */
    public abstract void mo14126d(B b, int i, AbstractC5137h abstractC5137h);

    /* renamed from: e */
    public abstract void mo14125e(B b, int i, long j);

    /* renamed from: f */
    public abstract B mo14124f(Object obj);

    /* renamed from: g */
    public abstract T mo14123g(Object obj);

    /* renamed from: h */
    public abstract int mo14122h(T t);

    /* renamed from: i */
    public abstract int mo14121i(T t);

    /* renamed from: j */
    public abstract void mo14120j(Object obj);

    /* renamed from: k */
    public abstract T mo14119k(T t, T t2);

    /* renamed from: n */
    public abstract B mo14118n();

    /* renamed from: o */
    public abstract void mo14117o(Object obj, B b);

    /* renamed from: p */
    public abstract void mo14116p(Object obj, T t);

    /* renamed from: q */
    public abstract boolean mo14115q(InterfaceC5136g1 interfaceC5136g1);

    /* renamed from: r */
    public abstract T mo14114r(B b);

    /* renamed from: s */
    public abstract void mo14113s(T t, InterfaceC5242v1 interfaceC5242v1);

    /* renamed from: t */
    public abstract void mo14112t(T t, InterfaceC5242v1 interfaceC5242v1);

    /* renamed from: l */
    public final void m14166l(B b, InterfaceC5136g1 interfaceC5136g1) {
        while (interfaceC5136g1.mo14477C() != Integer.MAX_VALUE && m14165m(b, interfaceC5136g1)) {
        }
    }

    /* renamed from: m */
    public final boolean m14165m(B b, InterfaceC5136g1 interfaceC5136g1) {
        int mo14433v = interfaceC5136g1.mo14433v();
        int m13944a = C5230u1.m13944a(mo14433v);
        int m13943b = C5230u1.m13943b(mo14433v);
        if (m13943b != 0) {
            if (m13943b != 1) {
                if (m13943b != 2) {
                    if (m13943b != 3) {
                        if (m13943b != 4) {
                            if (m13943b == 5) {
                                mo14129a(b, m13944a, interfaceC5136g1.mo14446i());
                                return true;
                            }
                            throw C5117c0.m14635d();
                        }
                        return false;
                    }
                    B mo14118n = mo14118n();
                    int m13942c = C5230u1.m13942c(m13944a, 4);
                    m14166l(mo14118n, interfaceC5136g1);
                    if (m13942c == interfaceC5136g1.mo14433v()) {
                        mo14127c(b, m13944a, mo14114r(mo14118n));
                        return true;
                    }
                    throw C5117c0.m14638a();
                }
                mo14126d(b, m13944a, interfaceC5136g1.mo14474F());
                return true;
            }
            mo14128b(b, m13944a, interfaceC5136g1.mo14452c());
            return true;
        }
        mo14125e(b, m13944a, interfaceC5136g1.mo14467M());
        return true;
    }
}
