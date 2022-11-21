package p168r4;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* renamed from: r4.i73 */
/* loaded from: classes2.dex */
public final class i73 extends j73 {

    /* renamed from: p */
    public final Callable f24997p;

    /* renamed from: q */
    public final /* synthetic */ k73 f24998q;

    @Override // p168r4.g83
    /* renamed from: a */
    public final Object mo5804a() {
        return this.f24997p.call();
    }

    @Override // p168r4.g83
    /* renamed from: c */
    public final String mo5803c() {
        return this.f24997p.toString();
    }

    @Override // p168r4.j73
    /* renamed from: h */
    public final void mo10391h(Object obj) {
        this.f24998q.mo8450u(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i73(k73 k73Var, Callable callable, Executor executor) {
        super(k73Var, executor);
        this.f24998q = k73Var;
        callable.getClass();
        this.f24997p = callable;
    }
}
