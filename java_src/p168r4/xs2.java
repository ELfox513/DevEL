package p168r4;

import java.util.Collections;
import java.util.concurrent.Callable;
/* renamed from: r4.xs2 */
/* loaded from: classes2.dex */
public final class xs2 {
    /* renamed from: a */
    public static final <O> dt2<O> m5028a(h83<O> h83Var, Object obj, et2 et2Var) {
        h83 h83Var2;
        h83Var2 = et2.f23136d;
        return new dt2<>(et2Var, obj, h83Var2, Collections.emptyList(), h83Var);
    }

    /* renamed from: b */
    public static final <O> dt2<O> m5027b(Callable<O> callable, Object obj, et2 et2Var) {
        i83 i83Var;
        i83Var = et2Var.f23137a;
        return m5026c(callable, i83Var, obj, et2Var);
    }

    /* renamed from: c */
    public static final <O> dt2<O> m5026c(Callable<O> callable, i83 i83Var, Object obj, et2 et2Var) {
        h83 h83Var;
        h83Var = et2.f23136d;
        return new dt2<>(et2Var, obj, h83Var, Collections.emptyList(), i83Var.mo8015c(callable));
    }

    /* renamed from: d */
    public static final dt2 m5025d(final qs2 qs2Var, i83 i83Var, Object obj, et2 et2Var) {
        return m5026c(new Callable(qs2Var) { // from class: r4.ws2

            /* renamed from: a */
            public final qs2 f33312a;

            {
                this.f33312a = qs2Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                this.f33312a.zza();
                return null;
            }
        }, i83Var, obj, et2Var);
    }
}
