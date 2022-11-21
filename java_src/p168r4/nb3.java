package p168r4;

import java.security.GeneralSecurityException;
/* renamed from: r4.nb3 */
/* loaded from: classes2.dex */
public final class nb3 extends o93<ai3, xh3> {

    /* renamed from: b */
    public final /* synthetic */ ob3 f28246b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nb3(ob3 ob3Var, Class cls) {
        super(cls);
        this.f28246b = ob3Var;
    }

    @Override // p168r4.o93
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo5374b(ai3 ai3Var) {
        ai3 ai3Var2 = ai3Var;
        if (!ai3Var2.m13016C().isEmpty() && ai3Var2.m13015D()) {
            return;
        }
        throw new GeneralSecurityException("invalid key format: missing KEK URI or DEK template");
    }

    @Override // p168r4.o93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ xh3 mo5372d(ai3 ai3Var) {
        wh3 m5309I = xh3.m5309I();
        m5309I.m5721x(ai3Var);
        m5309I.m5722v(0);
        return m5309I.m9614o();
    }

    @Override // p168r4.o93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ ai3 mo5373c(ll3 ll3Var) {
        return ai3.m13013I(ll3Var, bm3.m12746a());
    }
}
