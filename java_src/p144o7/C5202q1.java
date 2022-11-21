package p144o7;
/* renamed from: o7.q1 */
/* loaded from: classes2.dex */
public class C5202q1 extends AbstractC5195o1<C5199p1, C5199p1> {
    @Override // p144o7.AbstractC5195o1
    /* renamed from: A */
    public C5199p1 mo14123g(Object obj) {
        return ((AbstractC5248y) obj).unknownFields;
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: B */
    public int mo14122h(C5199p1 c5199p1) {
        return c5199p1.m14156d();
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: C */
    public int mo14121i(C5199p1 c5199p1) {
        return c5199p1.m14155e();
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: E */
    public C5199p1 mo14118n() {
        return C5199p1.m14150j();
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: F */
    public void mo14117o(Object obj, C5199p1 c5199p1) {
        mo14116p(obj, c5199p1);
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: G */
    public void mo14116p(Object obj, C5199p1 c5199p1) {
        ((AbstractC5248y) obj).unknownFields = c5199p1;
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: H */
    public C5199p1 mo14114r(C5199p1 c5199p1) {
        c5199p1.m14152h();
        return c5199p1;
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: I */
    public void mo14113s(C5199p1 c5199p1, InterfaceC5242v1 interfaceC5242v1) {
        c5199p1.m14145o(interfaceC5242v1);
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: J */
    public void mo14112t(C5199p1 c5199p1, InterfaceC5242v1 interfaceC5242v1) {
        c5199p1.m14143q(interfaceC5242v1);
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: j */
    public void mo14120j(Object obj) {
        mo14123g(obj).m14152h();
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: q */
    public boolean mo14115q(InterfaceC5136g1 interfaceC5136g1) {
        return false;
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: u */
    public void mo14129a(C5199p1 c5199p1, int i, int i2) {
        c5199p1.m14147m(C5230u1.m13942c(i, 5), Integer.valueOf(i2));
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: v */
    public void mo14128b(C5199p1 c5199p1, int i, long j) {
        c5199p1.m14147m(C5230u1.m13942c(i, 1), Long.valueOf(j));
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: w */
    public void mo14127c(C5199p1 c5199p1, int i, C5199p1 c5199p12) {
        c5199p1.m14147m(C5230u1.m13942c(i, 3), c5199p12);
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: x */
    public void mo14126d(C5199p1 c5199p1, int i, AbstractC5137h abstractC5137h) {
        c5199p1.m14147m(C5230u1.m13942c(i, 2), abstractC5137h);
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: y */
    public void mo14125e(C5199p1 c5199p1, int i, long j) {
        c5199p1.m14147m(C5230u1.m13942c(i, 0), Long.valueOf(j));
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: D */
    public C5199p1 mo14119k(C5199p1 c5199p1, C5199p1 c5199p12) {
        if (!c5199p12.equals(C5199p1.m14157c())) {
            return C5199p1.m14151i(c5199p1, c5199p12);
        }
        return c5199p1;
    }

    @Override // p144o7.AbstractC5195o1
    /* renamed from: z */
    public C5199p1 mo14124f(Object obj) {
        C5199p1 mo14123g = mo14123g(obj);
        if (mo14123g == C5199p1.m14157c()) {
            C5199p1 m14150j = C5199p1.m14150j();
            mo14116p(obj, m14150j);
            return m14150j;
        }
        return mo14123g;
    }
}
