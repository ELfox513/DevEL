package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.ms1 */
/* loaded from: classes2.dex */
public final class ms1 implements vr3<ls1> {

    /* renamed from: a */
    public final is3<qs1> f27864a;

    /* renamed from: b */
    public final is3<Executor> f27865b;

    public ms1(is3<qs1> is3Var, is3<Executor> is3Var2) {
        this.f27864a = is3Var;
        this.f27865b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new ls1(this.f27864a.mo4079a(), i83Var);
    }
}
