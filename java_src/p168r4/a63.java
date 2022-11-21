package p168r4;

import java.lang.Throwable;
/* renamed from: r4.a63 */
/* loaded from: classes2.dex */
public final class a63<V, X extends Throwable> extends b63<V, X, p03<? super X, ? extends V>, V> {
    public a63(h83<? extends V> h83Var, Class<X> cls, p03<? super X, ? extends V> p03Var) {
        super(h83Var, cls, p03Var);
    }

    @Override // p168r4.b63
    /* renamed from: F */
    public final void mo4427F(V v) {
        mo8450u(v);
    }

    @Override // p168r4.b63
    /* renamed from: G */
    public final /* bridge */ /* synthetic */ Object mo4426G(Object obj, Throwable th) {
        return ((p03) obj).apply(th);
    }
}
