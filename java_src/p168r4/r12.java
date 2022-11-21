package p168r4;
/* renamed from: r4.r12 */
/* loaded from: classes2.dex */
public final class r12<DelegateT, AdapterT> implements q12<AdapterT> {

    /* renamed from: a */
    public final q12<DelegateT> f30407a;

    /* renamed from: b */
    public final p03<DelegateT, AdapterT> f30408b;

    public r12(q12<DelegateT> q12Var, p03<DelegateT, AdapterT> p03Var) {
        this.f30407a = q12Var;
        this.f30408b = p03Var;
    }

    @Override // p168r4.q12
    /* renamed from: a */
    public final boolean mo4841a(bp2 bp2Var, no2 no2Var) {
        return this.f30407a.mo4841a(bp2Var, no2Var);
    }

    @Override // p168r4.q12
    /* renamed from: b */
    public final h83<AdapterT> mo4840b(bp2 bp2Var, no2 no2Var) {
        return y73.m4805j(this.f30407a.mo4840b(bp2Var, no2Var), this.f30408b, qm0.f30190a);
    }
}
