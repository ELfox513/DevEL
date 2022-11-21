package p168r4;
/* renamed from: r4.r63 */
/* loaded from: classes2.dex */
public final class r63<I, O> extends u63<I, O, e73<? super I, ? extends O>, h83<? extends O>> {
    public r63(h83<? extends I> h83Var, e73<? super I, ? extends O> e73Var) {
        super(h83Var, e73Var);
    }

    @Override // p168r4.u63
    /* renamed from: F */
    public final /* bridge */ /* synthetic */ void mo6605F(Object obj) {
        m8458w((h83) obj);
    }

    @Override // p168r4.u63
    /* renamed from: G */
    public final /* bridge */ /* synthetic */ Object mo6604G(Object obj, Object obj2) {
        e73 e73Var = (e73) obj;
        h83<O> mo1029a = e73Var.mo1029a(obj2);
        z03.m4493d(mo1029a, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", e73Var);
        return mo1029a;
    }
}
