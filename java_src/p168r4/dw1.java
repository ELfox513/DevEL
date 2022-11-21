package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.dw1 */
/* loaded from: classes2.dex */
public final class dw1 implements vr3<ve1<ga1>> {

    /* renamed from: a */
    public final is3<rx1> f22663a;

    /* renamed from: b */
    public final is3<Executor> f22664b;

    public dw1(is3<rx1> is3Var, is3<Executor> is3Var2) {
        this.f22663a = is3Var;
        this.f22664b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        rx1 mo4079a = ((sx1) this.f22663a).mo4079a();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new ve1(mo4079a, i83Var);
    }
}
