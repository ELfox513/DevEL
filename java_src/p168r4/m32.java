package p168r4;

import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.m32 */
/* loaded from: classes2.dex */
public final class m32 implements vr3<l32> {

    /* renamed from: a */
    public final is3<f21> f27462a;

    /* renamed from: b */
    public final is3<s22> f27463b;

    /* renamed from: c */
    public final is3<l71> f27464c;

    /* renamed from: d */
    public final is3<ScheduledExecutorService> f27465d;

    /* renamed from: e */
    public final is3<i83> f27466e;

    public m32(is3<f21> is3Var, is3<s22> is3Var2, is3<l71> is3Var3, is3<ScheduledExecutorService> is3Var4, is3<i83> is3Var5) {
        this.f27462a = is3Var;
        this.f27463b = is3Var2;
        this.f27464c = is3Var3;
        this.f27465d = is3Var4;
        this.f27466e = is3Var5;
    }

    @Override // p168r4.is3
    /* renamed from: b */
    public final l32 mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new l32(this.f27462a.mo4079a(), ((t22) this.f27463b).mo4079a(), this.f27464c.mo4079a(), this.f27465d.mo4079a(), i83Var);
    }
}
