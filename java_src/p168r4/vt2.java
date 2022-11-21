package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.vt2 */
/* loaded from: classes2.dex */
public final class vt2 implements vr3<tt2> {

    /* renamed from: a */
    public final is3<Executor> f32806a;

    /* renamed from: b */
    public final is3<hm0> f32807b;

    public vt2(is3<Executor> is3Var, is3<hm0> is3Var2) {
        this.f32806a = is3Var;
        this.f32807b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new tt2(i83Var, this.f32807b.mo4079a());
    }
}
