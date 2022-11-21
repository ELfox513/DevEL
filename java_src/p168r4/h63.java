package p168r4;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p075h1.C3942b;
/* renamed from: r4.h63 */
/* loaded from: classes2.dex */
public final class h63 extends c63 {

    /* renamed from: a */
    public final AtomicReferenceFieldUpdater<o63, Thread> f24482a;

    /* renamed from: b */
    public final AtomicReferenceFieldUpdater<o63, o63> f24483b;

    /* renamed from: c */
    public final AtomicReferenceFieldUpdater<p63, o63> f24484c;

    /* renamed from: d */
    public final AtomicReferenceFieldUpdater<p63, f63> f24485d;

    /* renamed from: e */
    public final AtomicReferenceFieldUpdater<p63, Object> f24486e;

    public h63(AtomicReferenceFieldUpdater<o63, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<o63, o63> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<p63, o63> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<p63, f63> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<p63, Object> atomicReferenceFieldUpdater5) {
        super(null);
        this.f24482a = atomicReferenceFieldUpdater;
        this.f24483b = atomicReferenceFieldUpdater2;
        this.f24484c = atomicReferenceFieldUpdater3;
        this.f24485d = atomicReferenceFieldUpdater4;
        this.f24486e = atomicReferenceFieldUpdater5;
    }

    @Override // p168r4.c63
    /* renamed from: a */
    public final void mo9151a(o63 o63Var, Thread thread) {
        this.f24482a.lazySet(o63Var, thread);
    }

    @Override // p168r4.c63
    /* renamed from: b */
    public final void mo9150b(o63 o63Var, o63 o63Var2) {
        this.f24483b.lazySet(o63Var, o63Var2);
    }

    @Override // p168r4.c63
    /* renamed from: c */
    public final boolean mo9149c(p63<?> p63Var, o63 o63Var, o63 o63Var2) {
        return C3942b.m17695a(this.f24484c, p63Var, o63Var, o63Var2);
    }

    @Override // p168r4.c63
    /* renamed from: d */
    public final boolean mo9148d(p63<?> p63Var, f63 f63Var, f63 f63Var2) {
        return C3942b.m17695a(this.f24485d, p63Var, f63Var, f63Var2);
    }

    @Override // p168r4.c63
    /* renamed from: e */
    public final boolean mo9147e(p63<?> p63Var, Object obj, Object obj2) {
        return C3942b.m17695a(this.f24486e, p63Var, obj, obj2);
    }
}
