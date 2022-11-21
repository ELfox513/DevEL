package p168r4;

import java.lang.Throwable;
/* renamed from: r4.z53 */
/* loaded from: classes2.dex */
public final class z53<V, X extends Throwable> extends b63<V, X, e73<? super X, ? extends V>, h83<? extends V>> {
    public z53(h83<? extends V> h83Var, Class<X> cls, e73<? super X, ? extends V> e73Var) {
        super(h83Var, cls, e73Var);
    }

    @Override // p168r4.b63
    /* renamed from: F */
    public final /* bridge */ /* synthetic */ void mo4427F(Object obj) {
        m8458w((h83) obj);
    }

    @Override // p168r4.b63
    /* renamed from: G */
    public final /* bridge */ /* synthetic */ Object mo4426G(Object obj, Throwable th) {
        e73 e73Var = (e73) obj;
        h83 mo1029a = e73Var.mo1029a(th);
        z03.m4493d(mo1029a, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", e73Var);
        return mo1029a;
    }
}
