package p168r4;

import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.ti2 */
/* loaded from: classes2.dex */
public final class ti2 implements vr3<ri2> {

    /* renamed from: a */
    public final is3<nl0> f31867a;

    /* renamed from: b */
    public final is3<Boolean> f31868b;

    /* renamed from: c */
    public final is3<cl0> f31869c;

    /* renamed from: d */
    public final is3<i83> f31870d;

    /* renamed from: e */
    public final is3<String> f31871e;

    /* renamed from: f */
    public final is3<ScheduledExecutorService> f31872f;

    public ti2(is3<nl0> is3Var, is3<Boolean> is3Var2, is3<cl0> is3Var3, is3<i83> is3Var4, is3<String> is3Var5, is3<ScheduledExecutorService> is3Var6) {
        this.f31867a = is3Var;
        this.f31868b = is3Var2;
        this.f31869c = is3Var3;
        this.f31870d = is3Var4;
        this.f31871e = is3Var5;
        this.f31872f = is3Var6;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        nl0 mo4079a = this.f31867a.mo4079a();
        boolean booleanValue = ((ji2) this.f31868b).mo4079a().booleanValue();
        cl0 cl0Var = new cl0();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new ri2(mo4079a, booleanValue, cl0Var, i83Var, ((gi2) this.f31871e).m11148b(), this.f31872f.mo4079a(), null);
    }
}
