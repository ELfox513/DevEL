package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.ts1 */
/* loaded from: classes2.dex */
public final class ts1 implements vr3<qs1> {

    /* renamed from: a */
    public final is3<Executor> f31979a;

    /* renamed from: b */
    public final is3<hm0> f31980b;

    /* renamed from: c */
    public final is3<fu2> f31981c;

    /* renamed from: d */
    public final is3<hu2> f31982d;

    public ts1(is3<Executor> is3Var, is3<hm0> is3Var2, is3<fu2> is3Var3, is3<hu2> is3Var4) {
        this.f31979a = is3Var;
        this.f31980b = is3Var2;
        this.f31981c = is3Var3;
        this.f31982d = is3Var4;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new qs1(i83Var, this.f31980b.mo4079a(), ((gu2) this.f31981c).mo4079a(), new hu2());
    }
}
