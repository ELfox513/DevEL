package p168r4;
/* renamed from: r4.u83 */
/* loaded from: classes2.dex */
public final class u83 extends g83<h83> {

    /* renamed from: d */
    public final d73 f32225d;

    /* renamed from: k */
    public final /* synthetic */ x83 f32226k;

    @Override // p168r4.g83
    /* renamed from: c */
    public final String mo5803c() {
        return this.f32225d.toString();
    }

    @Override // p168r4.g83
    /* renamed from: d */
    public final boolean mo5802d() {
        return this.f32226k.isDone();
    }

    @Override // p168r4.g83
    /* renamed from: f */
    public final void mo5800f(Throwable th) {
        this.f32226k.mo8449v(th);
    }

    public u83(x83 x83Var, d73 d73Var) {
        this.f32226k = x83Var;
        d73Var.getClass();
        this.f32225d = d73Var;
    }

    @Override // p168r4.g83
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ h83 mo5804a() {
        h83 zza = this.f32225d.zza();
        z03.m4493d(zza, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.f32225d);
        return zza;
    }

    @Override // p168r4.g83
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ void mo5801e(h83 h83Var) {
        this.f32226k.m8458w(h83Var);
    }
}
