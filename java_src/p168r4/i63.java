package p168r4;
/* renamed from: r4.i63 */
/* loaded from: classes2.dex */
public final class i63<V> implements Runnable {

    /* renamed from: a */
    public final p63<V> f24988a;

    /* renamed from: b */
    public final h83<? extends V> f24989b;

    public i63(p63<V> p63Var, h83<? extends V> h83Var) {
        this.f24988a = p63Var;
        this.f24989b = h83Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object m8469h;
        c63 c63Var;
        obj = this.f24988a.f29371a;
        if (obj != this) {
            return;
        }
        m8469h = p63.m8469h(this.f24989b);
        c63Var = p63.f29369q;
        if (c63Var.mo9147e(this.f24988a, this, m8469h)) {
            p63.m8477B(this.f24988a);
        }
    }
}
