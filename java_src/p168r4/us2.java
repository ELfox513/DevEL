package p168r4;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: r4.us2 */
/* loaded from: classes2.dex */
public final class us2 {

    /* renamed from: a */
    public final Object f32372a;

    /* renamed from: b */
    public final List<h83<?>> f32373b;

    /* renamed from: c */
    public final /* synthetic */ et2 f32374c;

    public /* synthetic */ us2(et2 et2Var, Object obj, List list, vs2 vs2Var) {
        this.f32374c = et2Var;
        this.f32372a = obj;
        this.f32373b = list;
    }

    /* renamed from: a */
    public final <O> dt2<O> m6383a(Callable<O> callable) {
        i83 i83Var;
        w73 m4800o = y73.m4800o(this.f32373b);
        h83 m5812a = m4800o.m5812a(ss2.f31501a, qm0.f30195f);
        et2 et2Var = this.f32374c;
        Object obj = this.f32372a;
        List<h83<?>> list = this.f32373b;
        i83Var = et2Var.f23137a;
        return new dt2<>(et2Var, obj, m5812a, list, m4800o.m5812a(callable, i83Var));
    }
}
