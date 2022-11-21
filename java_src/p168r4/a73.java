package p168r4;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p075h1.C3942b;
/* renamed from: r4.a73 */
/* loaded from: classes2.dex */
public final class a73 extends y63 {

    /* renamed from: a */
    public final AtomicReferenceFieldUpdater<c73<?>, Set<Throwable>> f20411a;

    /* renamed from: b */
    public final AtomicIntegerFieldUpdater<c73<?>> f20412b;

    public a73(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        super(null);
        this.f20411a = atomicReferenceFieldUpdater;
        this.f20412b = atomicIntegerFieldUpdater;
    }

    @Override // p168r4.y63
    /* renamed from: a */
    public final void mo4829a(c73<?> c73Var, Set<Throwable> set, Set<Throwable> set2) {
        C3942b.m17695a(this.f20411a, c73Var, null, set2);
    }

    @Override // p168r4.y63
    /* renamed from: b */
    public final int mo4828b(c73<?> c73Var) {
        return this.f20412b.decrementAndGet(c73Var);
    }
}
