package p168r4;

import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: r4.it1 */
/* loaded from: classes2.dex */
public final class it1 implements vr3<Set<ve1<nt2>>> {

    /* renamed from: a */
    public final ys1 f25265a;

    /* renamed from: b */
    public final is3<jt1> f25266b;

    /* renamed from: c */
    public final is3<Executor> f25267c;

    public it1(ys1 ys1Var, is3<jt1> is3Var, is3<Executor> is3Var2) {
        this.f25265a = ys1Var;
        this.f25266b = is3Var;
        this.f25267c = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        Set<ve1<nt2>> m4582i = ys1.m4582i(this.f25266b.mo4079a(), i83Var);
        ds3.m11980b(m4582i);
        return m4582i;
    }
}
