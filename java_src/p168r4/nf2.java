package p168r4;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.nf2 */
/* loaded from: classes2.dex */
public final class nf2 implements vr3<lf2> {

    /* renamed from: a */
    public final is3<i83> f28267a;

    /* renamed from: b */
    public final is3<ScheduledExecutorService> f28268b;

    /* renamed from: c */
    public final is3<String> f28269c;

    /* renamed from: d */
    public final is3<Context> f28270d;

    /* renamed from: e */
    public final is3<hp2> f28271e;

    /* renamed from: f */
    public final is3<bu0> f28272f;

    public nf2(is3<i83> is3Var, is3<ScheduledExecutorService> is3Var2, is3<String> is3Var3, is3<Context> is3Var4, is3<hp2> is3Var5, is3<bu0> is3Var6) {
        this.f28267a = is3Var;
        this.f28268b = is3Var2;
        this.f28269c = is3Var3;
        this.f28270d = is3Var4;
        this.f28271e = is3Var5;
        this.f28272f = is3Var6;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new lf2(i83Var, this.f28268b.mo4079a(), this.f28269c.mo4079a(), this.f28270d.mo4079a(), ((z61) this.f28271e).m4418b(), this.f28272f.mo4079a());
    }
}
