package p168r4;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.et2 */
/* loaded from: classes2.dex */
public abstract class et2<E> {

    /* renamed from: d */
    public static final h83<?> f23136d = y73.m4814a(null);

    /* renamed from: a */
    public final i83 f23137a;

    /* renamed from: b */
    public final ScheduledExecutorService f23138b;

    /* renamed from: c */
    public final ft2<E> f23139c;

    public et2(i83 i83Var, ScheduledExecutorService scheduledExecutorService, ft2<E> ft2Var) {
        this.f23137a = i83Var;
        this.f23138b = scheduledExecutorService;
        this.f23139c = ft2Var;
    }

    /* renamed from: g */
    public abstract String mo9273g(E e);

    /* renamed from: e */
    public final <I> dt2<I> m11682e(E e, h83<I> h83Var) {
        return new dt2<>(this, e, h83Var, Collections.singletonList(h83Var), h83Var);
    }

    /* renamed from: f */
    public final us2 m11681f(E e, h83<?>... h83VarArr) {
        return new us2(this, e, Arrays.asList(h83VarArr), null);
    }
}
