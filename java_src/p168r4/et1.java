package p168r4;

import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: r4.et1 */
/* loaded from: classes2.dex */
public final class et1 implements vr3<Set<ve1<ga1>>> {

    /* renamed from: a */
    public final ys1 f23133a;

    /* renamed from: b */
    public final is3<jt1> f23134b;

    /* renamed from: c */
    public final is3<Executor> f23135c;

    public et1(ys1 ys1Var, is3<jt1> is3Var, is3<Executor> is3Var2) {
        this.f23133a = ys1Var;
        this.f23134b = is3Var;
        this.f23135c = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        Set<ve1<ga1>> m4586e = ys1.m4586e(this.f23134b.mo4079a(), i83Var);
        ds3.m11980b(m4586e);
        return m4586e;
    }
}
