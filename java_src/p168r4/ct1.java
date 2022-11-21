package p168r4;

import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: r4.ct1 */
/* loaded from: classes2.dex */
public final class ct1 implements vr3<Set<ve1<y81>>> {

    /* renamed from: a */
    public final ys1 f21669a;

    /* renamed from: b */
    public final is3<jt1> f21670b;

    /* renamed from: c */
    public final is3<Executor> f21671c;

    public ct1(ys1 ys1Var, is3<jt1> is3Var, is3<Executor> is3Var2) {
        this.f21669a = ys1Var;
        this.f21670b = is3Var;
        this.f21671c = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        Set<ve1<y81>> m4587d = ys1.m4587d(this.f21670b.mo4079a(), i83Var);
        ds3.m11980b(m4587d);
        return m4587d;
    }
}
