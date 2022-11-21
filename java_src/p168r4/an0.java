package p168r4;

import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: r4.an0 */
/* loaded from: classes2.dex */
public final class an0 implements t73 {

    /* renamed from: a */
    public final /* synthetic */ cn0 f20546a;

    public an0(cn0 cn0Var) {
        this.f20546a = cn0Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        AtomicInteger atomicInteger;
        atomicInteger = this.f20546a.f21603b;
        atomicInteger.set(-1);
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final void mo4626b(Object obj) {
        AtomicInteger atomicInteger;
        atomicInteger = this.f20546a.f21603b;
        atomicInteger.set(1);
    }
}
