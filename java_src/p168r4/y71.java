package p168r4;

import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.y71 */
/* loaded from: classes2.dex */
public final class y71 implements vr3<w71> {

    /* renamed from: a */
    public final is3<v71> f33988a;

    /* renamed from: b */
    public final is3<Set<ve1<n71>>> f33989b;

    /* renamed from: c */
    public final is3<Executor> f33990c;

    /* renamed from: d */
    public final is3<ScheduledExecutorService> f33991d;

    public y71(is3<v71> is3Var, is3<Set<ve1<n71>>> is3Var2, is3<Executor> is3Var3, is3<ScheduledExecutorService> is3Var4) {
        this.f33988a = is3Var;
        this.f33989b = is3Var2;
        this.f33990c = is3Var3;
        this.f33991d = is3Var4;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        v71 mo4079a = ((x71) this.f33988a).mo4079a();
        Set mo4079a2 = ((gs3) this.f33989b).mo4079a();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new w71(mo4079a, mo4079a2, i83Var, this.f33991d.mo4079a());
    }
}
