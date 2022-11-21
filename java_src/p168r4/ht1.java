package p168r4;

import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: r4.ht1 */
/* loaded from: classes2.dex */
public final class ht1 implements vr3<Set<ve1<d81>>> {

    /* renamed from: a */
    public final ys1 f24819a;

    /* renamed from: b */
    public final is3<jt1> f24820b;

    /* renamed from: c */
    public final is3<Executor> f24821c;

    public ht1(ys1 ys1Var, is3<jt1> is3Var, is3<Executor> is3Var2) {
        this.f24819a = ys1Var;
        this.f24820b = is3Var;
        this.f24821c = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        Set<ve1<d81>> m4583h = ys1.m4583h(this.f24820b.mo4079a(), i83Var);
        ds3.m11980b(m4583h);
        return m4583h;
    }
}
