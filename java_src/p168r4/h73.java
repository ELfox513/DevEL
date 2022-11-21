package p168r4;

import java.util.Collections;
import java.util.List;
/* renamed from: r4.h73 */
/* loaded from: classes2.dex */
public abstract class h73<V, C> extends x63<V, C> {

    /* renamed from: A */
    public List<g73<V>> f24499A;

    public h73(j33<? extends h83<? extends V>> j33Var, boolean z) {
        super(j33Var, true, true);
        List<g73<V>> m10984a;
        if (j33Var.isEmpty()) {
            m10984a = Collections.emptyList();
        } else {
            m10984a = h43.m10984a(j33Var.size());
        }
        for (int i = 0; i < j33Var.size(); i++) {
            m10984a.add(null);
        }
        this.f24499A = m10984a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p168r4.x63
    /* renamed from: M */
    public final void mo5471M() {
        List<g73<V>> list = this.f24499A;
        if (list != null) {
            mo8450u(mo10961X(list));
        }
    }

    @Override // p168r4.x63
    /* renamed from: N */
    public final void mo5470N(int i) {
        super.mo5470N(i);
        this.f24499A = null;
    }

    @Override // p168r4.x63
    /* renamed from: W */
    public final void mo5461W(int i, V v) {
        List<g73<V>> list = this.f24499A;
        if (list != null) {
            list.set(i, new g73<>(v));
        }
    }

    /* renamed from: X */
    public abstract C mo10961X(List<g73<V>> list);
}
