package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.bn1 */
/* loaded from: classes2.dex */
public final class bn1 implements vr3<zm1> {

    /* renamed from: a */
    public final is3<Executor> f21124a;

    /* renamed from: b */
    public final is3<zz0> f21125b;

    /* renamed from: c */
    public final is3<xe1> f21126c;

    public bn1(is3<Executor> is3Var, is3<zz0> is3Var2, is3<xe1> is3Var3) {
        this.f21124a = is3Var;
        this.f21125b = is3Var2;
        this.f21126c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new zm1(this.f21124a.mo4079a(), this.f21125b.mo4079a(), this.f21126c.mo4079a());
    }
}
