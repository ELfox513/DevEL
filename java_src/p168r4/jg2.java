package p168r4;

import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: r4.jg2 */
/* loaded from: classes2.dex */
public final class jg2<T> implements vr3<ig2<T>> {

    /* renamed from: a */
    public final is3<Executor> f26023a;

    /* renamed from: b */
    public final is3<Set<eg2<? extends dg2<T>>>> f26024b;

    public jg2(is3<Executor> is3Var, is3<Set<eg2<? extends dg2<T>>>> is3Var2) {
        this.f26023a = is3Var;
        this.f26024b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: b */
    public final ig2<T> mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new ig2<>(i83Var, ((gs3) this.f26024b).mo4079a());
    }
}
