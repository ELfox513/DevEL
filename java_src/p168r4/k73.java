package p168r4;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* renamed from: r4.k73 */
/* loaded from: classes2.dex */
public final class k73<V> extends x63<Object, V> {

    /* renamed from: A */
    public j73<?> f26338A;

    public k73(j33<? extends h83<?>> j33Var, boolean z, Executor executor, Callable<V> callable) {
        super(j33Var, z, false);
        this.f26338A = new i73(this, callable, executor);
        m5464T();
    }

    @Override // p168r4.x63
    /* renamed from: M */
    public final void mo5471M() {
        j73<?> j73Var = this.f26338A;
        if (j73Var != null) {
            j73Var.m10390i();
        }
    }

    @Override // p168r4.x63
    /* renamed from: N */
    public final void mo5470N(int i) {
        super.mo5470N(i);
        if (i == 1) {
            this.f26338A = null;
        }
    }

    @Override // p168r4.x63
    /* renamed from: W */
    public final void mo5461W(int i, Object obj) {
    }

    @Override // p168r4.p63
    /* renamed from: s */
    public final void mo8460s() {
        j73<?> j73Var = this.f26338A;
        if (j73Var != null) {
            j73Var.m11251g();
        }
    }
}
