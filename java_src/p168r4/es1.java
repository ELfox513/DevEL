package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.es1 */
/* loaded from: classes2.dex */
public final class es1 implements vr3<ve1<nt2>> {

    /* renamed from: a */
    public final is3<os1> f23129a;

    /* renamed from: b */
    public final is3<Executor> f23130b;

    /* renamed from: c */
    public final is3<sz1> f23131c;

    public es1(is3<os1> is3Var, is3<Executor> is3Var2, is3<sz1> is3Var3) {
        this.f23129a = is3Var;
        this.f23130b = is3Var2;
        this.f23131c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        os1 mo4079a = this.f23129a.mo4079a();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        sz1 mo4079a2 = this.f23131c.mo4079a();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31040i6)).booleanValue()) {
            return new ve1(mo4079a2, i83Var);
        }
        return new ve1(mo4079a, i83Var);
    }
}
