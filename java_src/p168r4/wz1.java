package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.wz1 */
/* loaded from: classes2.dex */
public final class wz1 implements vr3<ve1<nt2>> {

    /* renamed from: a */
    public final is3<i02> f33380a;

    /* renamed from: b */
    public final is3<Executor> f33381b;

    public wz1(is3<i02> is3Var, is3<Executor> is3Var2) {
        this.f33380a = is3Var;
        this.f33381b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i02 mo4079a = ((j02) this.f33380a).mo4079a();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new ve1(mo4079a, i83Var);
    }
}
