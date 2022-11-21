package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.zi2 */
/* loaded from: classes2.dex */
public final class zi2 implements vr3<yi2> {

    /* renamed from: a */
    public final is3<Context> f34643a;

    /* renamed from: b */
    public final is3<Executor> f34644b;

    /* renamed from: c */
    public final is3<bu0> f34645c;

    /* renamed from: d */
    public final is3<am2<j01, p01>> f34646d;

    /* renamed from: e */
    public final is3<fk2> f34647e;

    /* renamed from: f */
    public final is3<fp2> f34648f;

    public zi2(is3<Context> is3Var, is3<Executor> is3Var2, is3<bu0> is3Var3, is3<am2<j01, p01>> is3Var4, is3<fk2> is3Var5, is3<fp2> is3Var6) {
        this.f34643a = is3Var;
        this.f34644b = is3Var2;
        this.f34645c = is3Var3;
        this.f34646d = is3Var4;
        this.f34647e = is3Var5;
        this.f34648f = is3Var6;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new yi2(this.f34643a.mo4079a(), this.f34644b.mo4079a(), this.f34645c.mo4079a(), ((em2) this.f34646d).mo4079a(), this.f34647e.mo4079a(), new fp2());
    }
}
