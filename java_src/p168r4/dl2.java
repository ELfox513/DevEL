package p168r4;

import p168r4.i31;
import p168r4.r61;
/* renamed from: r4.dl2 */
/* loaded from: classes2.dex */
public final class dl2<R extends r61<AdT>, AdT extends i31> implements or2<R, AdT> {

    /* renamed from: a */
    public final am2<R, dr2<R, AdT>> f22330a;

    public dl2(am2<R, dr2<R, AdT>> am2Var) {
        this.f22330a = am2Var;
    }

    @Override // p168r4.or2
    /* renamed from: a */
    public final void mo8712a(dr2<R, AdT> dr2Var) {
        dr2Var.f22410a = (R) ((al2) this.f22330a).m13001b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p168r4.or2
    /* renamed from: b */
    public final h83<dr2<R, AdT>> mo8711b(pr2<R, AdT> pr2Var) {
        el2 el2Var = (el2) pr2Var;
        return ((al2) this.f22330a).m13000c(el2Var.f23073b, el2Var.f23072a, null);
    }
}
