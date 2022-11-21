package p168r4;

import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.sw1 */
/* loaded from: classes2.dex */
public final class sw1 implements vr3<rw1> {

    /* renamed from: a */
    public final is3<ScheduledExecutorService> f31539a;

    /* renamed from: b */
    public final is3<i83> f31540b;

    /* renamed from: c */
    public final is3<lx1> f31541c;

    /* renamed from: d */
    public final is3<az1> f31542d;

    public sw1(is3<ScheduledExecutorService> is3Var, is3<i83> is3Var2, is3<lx1> is3Var3, is3<az1> is3Var4) {
        this.f31539a = is3Var;
        this.f31540b = is3Var2;
        this.f31541c = is3Var3;
        this.f31542d = is3Var4;
    }

    @Override // p168r4.is3
    /* renamed from: b */
    public final rw1 mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new rw1(this.f31539a.mo4079a(), i83Var, ((mx1) this.f31541c).mo4079a(), tr3.m6729c(this.f31542d));
    }
}
