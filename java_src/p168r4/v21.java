package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.v21 */
/* loaded from: classes2.dex */
public final class v21 implements vr3<q21> {

    /* renamed from: a */
    public final is3<h31> f32549a;

    /* renamed from: b */
    public final is3<d40> f32550b;

    /* renamed from: c */
    public final is3<Runnable> f32551c;

    /* renamed from: d */
    public final is3<Executor> f32552d;

    public v21(is3<h31> is3Var, is3<d40> is3Var2, is3<Runnable> is3Var3, is3<Executor> is3Var4) {
        this.f32549a = is3Var;
        this.f32550b = is3Var2;
        this.f32551c = is3Var3;
        this.f32552d = is3Var4;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new q21(((f51) this.f32549a).mo4079a(), ((u21) this.f32550b).m6647b(), ((t21) this.f32551c).m6922b(), this.f32552d.mo4079a());
    }
}
