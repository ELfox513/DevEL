package p168r4;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.qu1 */
/* loaded from: classes2.dex */
public final class qu1 implements vr3<pu1> {

    /* renamed from: a */
    public final is3<Executor> f30318a;

    /* renamed from: b */
    public final is3<Context> f30319b;

    /* renamed from: c */
    public final is3<WeakReference<Context>> f30320c;

    /* renamed from: d */
    public final is3<Executor> f30321d;

    /* renamed from: e */
    public final is3<gq1> f30322e;

    /* renamed from: f */
    public final is3<ScheduledExecutorService> f30323f;

    /* renamed from: g */
    public final is3<us1> f30324g;

    /* renamed from: h */
    public final is3<im0> f30325h;

    /* renamed from: i */
    public final is3<ge1> f30326i;

    public qu1(is3<Executor> is3Var, is3<Context> is3Var2, is3<WeakReference<Context>> is3Var3, is3<Executor> is3Var4, is3<gq1> is3Var5, is3<ScheduledExecutorService> is3Var6, is3<us1> is3Var7, is3<im0> is3Var8, is3<ge1> is3Var9) {
        this.f30318a = is3Var;
        this.f30319b = is3Var2;
        this.f30320c = is3Var3;
        this.f30321d = is3Var4;
        this.f30322e = is3Var5;
        this.f30323f = is3Var6;
        this.f30324g = is3Var7;
        this.f30325h = is3Var8;
        this.f30326i = is3Var9;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        Executor mo4079a = this.f30318a.mo4079a();
        Context m11050b = ((gu0) this.f30319b).m11050b();
        WeakReference<Context> m10823b = ((hu0) this.f30320c).m10823b();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new pu1(mo4079a, m11050b, m10823b, i83Var, this.f30322e.mo4079a(), this.f30323f.mo4079a(), this.f30324g.mo4079a(), ((pu0) this.f30325h).m8207b(), ((he1) this.f30326i).mo4079a());
    }
}
