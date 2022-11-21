package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
import p026c4.InterfaceC1045f;
/* renamed from: r4.oi1 */
/* loaded from: classes2.dex */
public final class oi1 implements vr3<zz0> {

    /* renamed from: a */
    public final is3<C5879im> f29003a;

    /* renamed from: b */
    public final is3<Executor> f29004b;

    /* renamed from: c */
    public final is3<Context> f29005c;

    /* renamed from: d */
    public final is3<InterfaceC1045f> f29006d;

    public oi1(is3<C5879im> is3Var, is3<Executor> is3Var2, is3<Context> is3Var3, is3<InterfaceC1045f> is3Var4) {
        this.f29003a = is3Var;
        this.f29004b = is3Var2;
        this.f29005c = is3Var3;
        this.f29006d = is3Var4;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new zz0(this.f29004b.mo4079a(), new kz0(this.f29005c.mo4079a(), this.f29003a.mo4079a()), this.f29006d.mo4079a());
    }
}
