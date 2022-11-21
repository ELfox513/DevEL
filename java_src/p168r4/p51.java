package p168r4;

import java.util.concurrent.Executor;
import p004a3.InterfaceC0076q;
/* renamed from: r4.p51 */
/* loaded from: classes2.dex */
public final class p51 implements vr3<ve1<InterfaceC0076q>> {

    /* renamed from: a */
    public final is3<xb1> f29343a;

    /* renamed from: b */
    public final is3<Executor> f29344b;

    public p51(is3<xb1> is3Var, is3<Executor> is3Var2) {
        this.f29343a = is3Var;
        this.f29344b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new ve1(this.f29343a.mo4079a(), this.f29344b.mo4079a());
    }
}
