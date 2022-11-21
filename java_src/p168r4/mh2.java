package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.mh2 */
/* loaded from: classes2.dex */
public final class mh2 implements vr3<kh2> {

    /* renamed from: a */
    public final is3<el0> f27728a;

    /* renamed from: b */
    public final is3<Integer> f27729b;

    /* renamed from: c */
    public final is3<Context> f27730c;

    /* renamed from: d */
    public final is3<nl0> f27731d;

    /* renamed from: e */
    public final is3<ScheduledExecutorService> f27732e;

    /* renamed from: f */
    public final is3<Executor> f27733f;

    /* renamed from: g */
    public final is3<String> f27734g;

    public mh2(is3<el0> is3Var, is3<Integer> is3Var2, is3<Context> is3Var3, is3<nl0> is3Var4, is3<ScheduledExecutorService> is3Var5, is3<Executor> is3Var6, is3<String> is3Var7) {
        this.f27728a = is3Var;
        this.f27729b = is3Var2;
        this.f27730c = is3Var3;
        this.f27731d = is3Var4;
        this.f27732e = is3Var5;
        this.f27733f = is3Var6;
        this.f27734g = is3Var7;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new kh2(new el0(), ((hi2) this.f27729b).mo4079a().intValue(), ((gu0) this.f27730c).m11050b(), this.f27731d.mo4079a(), this.f27732e.mo4079a(), i83Var, ((gi2) this.f27734g).m11148b(), null);
    }
}
