package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.wg2 */
/* loaded from: classes2.dex */
public final class wg2 implements vr3<ug2> {

    /* renamed from: a */
    public final is3<el0> f33188a;

    /* renamed from: b */
    public final is3<Context> f33189b;

    /* renamed from: c */
    public final is3<ScheduledExecutorService> f33190c;

    /* renamed from: d */
    public final is3<Executor> f33191d;

    /* renamed from: e */
    public final is3<Integer> f33192e;

    public wg2(is3<el0> is3Var, is3<Context> is3Var2, is3<ScheduledExecutorService> is3Var3, is3<Executor> is3Var4, is3<Integer> is3Var5) {
        this.f33188a = is3Var;
        this.f33189b = is3Var2;
        this.f33190c = is3Var3;
        this.f33191d = is3Var4;
        this.f33192e = is3Var5;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new ug2(new el0(), ((gu0) this.f33189b).m11050b(), this.f33190c.mo4079a(), i83Var, ((hi2) this.f33192e).mo4079a().intValue(), null);
    }
}
