package p168r4;

import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.xw1 */
/* loaded from: classes2.dex */
public final class xw1 implements vr3<ww1> {

    /* renamed from: a */
    public final is3<hp2> f33789a;

    /* renamed from: b */
    public final is3<wv1> f33790b;

    /* renamed from: c */
    public final is3<i83> f33791c;

    /* renamed from: d */
    public final is3<ScheduledExecutorService> f33792d;

    /* renamed from: e */
    public final is3<f02> f33793e;

    public xw1(is3<hp2> is3Var, is3<wv1> is3Var2, is3<i83> is3Var3, is3<ScheduledExecutorService> is3Var4, is3<f02> is3Var5) {
        this.f33789a = is3Var;
        this.f33790b = is3Var2;
        this.f33791c = is3Var3;
        this.f33792d = is3Var4;
        this.f33793e = is3Var5;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        hp2 m4418b = ((z61) this.f33789a).m4418b();
        wv1 mo4079a = ((xv1) this.f33790b).mo4079a();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new ww1(m4418b, mo4079a, i83Var, this.f33792d.mo4079a(), this.f33793e.mo4079a());
    }
}
