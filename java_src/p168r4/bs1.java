package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.bs1 */
/* loaded from: classes2.dex */
public final class bs1 implements vr3<ve1<m71>> {

    /* renamed from: a */
    public final is3<xr1> f21202a;

    /* renamed from: b */
    public final is3<Executor> f21203b;

    /* renamed from: c */
    public final is3<lz1> f21204c;

    public bs1(is3<xr1> is3Var, is3<Executor> is3Var2, is3<lz1> is3Var3) {
        this.f21202a = is3Var;
        this.f21203b = is3Var2;
        this.f21204c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        xr1 mo4079a = this.f21202a.mo4079a();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        lz1 mo4079a2 = this.f21204c.mo4079a();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31040i6)).booleanValue()) {
            return new ve1(mo4079a2, i83Var);
        }
        return new ve1(mo4079a, i83Var);
    }
}
