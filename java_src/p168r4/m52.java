package p168r4;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.m52 */
/* loaded from: classes2.dex */
public final class m52<AdT> implements vr3<l52<AdT>> {

    /* renamed from: a */
    public final is3<mt2> f27497a;

    /* renamed from: b */
    public final is3<g52> f27498b;

    /* renamed from: c */
    public final is3<l71> f27499c;

    /* renamed from: d */
    public final is3<mu2> f27500d;

    /* renamed from: e */
    public final is3<pu2> f27501e;

    /* renamed from: f */
    public final is3<l31<AdT>> f27502f;

    /* renamed from: g */
    public final is3<Executor> f27503g;

    /* renamed from: h */
    public final is3<ScheduledExecutorService> f27504h;

    /* renamed from: i */
    public final is3<v12> f27505i;

    public m52(is3<mt2> is3Var, is3<g52> is3Var2, is3<l71> is3Var3, is3<mu2> is3Var4, is3<pu2> is3Var5, is3<l31<AdT>> is3Var6, is3<Executor> is3Var7, is3<ScheduledExecutorService> is3Var8, is3<v12> is3Var9) {
        this.f27497a = is3Var;
        this.f27498b = is3Var2;
        this.f27499c = is3Var3;
        this.f27500d = is3Var4;
        this.f27501e = is3Var5;
        this.f27502f = is3Var6;
        this.f27503g = is3Var7;
        this.f27504h = is3Var8;
        this.f27505i = is3Var9;
    }

    @Override // p168r4.is3
    /* renamed from: b */
    public final l52<AdT> mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new l52<>(this.f27497a.mo4079a(), this.f27498b.mo4079a(), this.f27499c.mo4079a(), this.f27500d.mo4079a(), this.f27501e.mo4079a(), this.f27502f.mo4079a(), i83Var, this.f27504h.mo4079a(), this.f27505i.mo4079a());
    }
}
