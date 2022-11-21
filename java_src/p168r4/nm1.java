package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.nm1 */
/* loaded from: classes2.dex */
public final class nm1 implements vr3<mm1> {

    /* renamed from: a */
    public final is3<Executor> f28345a;

    /* renamed from: b */
    public final is3<hm1> f28346b;

    public nm1(is3<Executor> is3Var, is3<hm1> is3Var2) {
        this.f28345a = is3Var;
        this.f28346b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: b */
    public final mm1 mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new mm1(i83Var, ((im1) this.f28346b).mo4079a());
    }
}
