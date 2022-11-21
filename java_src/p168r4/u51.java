package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.u51 */
/* loaded from: classes2.dex */
public final class u51 implements vr3<ve1<d81>> {

    /* renamed from: a */
    public final is3<vr1> f32180a;

    /* renamed from: b */
    public final is3<Executor> f32181b;

    /* renamed from: c */
    public final is3<iz1> f32182c;

    public u51(is3<vr1> is3Var, is3<Executor> is3Var2, is3<iz1> is3Var3) {
        this.f32180a = is3Var;
        this.f32181b = is3Var2;
        this.f32182c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        vr1 mo4079a = this.f32180a.mo4079a();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        iz1 mo4079a2 = this.f32182c.mo4079a();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31040i6)).booleanValue()) {
            return new ve1(mo4079a2, i83Var);
        }
        return new ve1(mo4079a, i83Var);
    }
}
