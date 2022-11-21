package p168r4;
/* renamed from: r4.j63 */
/* loaded from: classes2.dex */
public final class j63 extends c63 {
    public /* synthetic */ j63(g63 g63Var) {
        super(null);
    }

    @Override // p168r4.c63
    /* renamed from: a */
    public final void mo9151a(o63 o63Var, Thread thread) {
        o63Var.f28911a = thread;
    }

    @Override // p168r4.c63
    /* renamed from: b */
    public final void mo9150b(o63 o63Var, o63 o63Var2) {
        o63Var.f28912b = o63Var2;
    }

    @Override // p168r4.c63
    /* renamed from: c */
    public final boolean mo9149c(p63<?> p63Var, o63 o63Var, o63 o63Var2) {
        o63 o63Var3;
        synchronized (p63Var) {
            o63Var3 = p63Var.f29373d;
            if (o63Var3 == o63Var) {
                p63Var.f29373d = o63Var2;
                return true;
            }
            return false;
        }
    }

    @Override // p168r4.c63
    /* renamed from: d */
    public final boolean mo9148d(p63<?> p63Var, f63 f63Var, f63 f63Var2) {
        f63 f63Var3;
        synchronized (p63Var) {
            f63Var3 = p63Var.f29372b;
            if (f63Var3 == f63Var) {
                p63Var.f29372b = f63Var2;
                return true;
            }
            return false;
        }
    }

    @Override // p168r4.c63
    /* renamed from: e */
    public final boolean mo9147e(p63<?> p63Var, Object obj, Object obj2) {
        Object obj3;
        synchronized (p63Var) {
            obj3 = p63Var.f29371a;
            if (obj3 == obj) {
                p63Var.f29371a = obj2;
                return true;
            }
            return false;
        }
    }
}
