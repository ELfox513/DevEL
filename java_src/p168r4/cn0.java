package p168r4;

import java.util.concurrent.atomic.AtomicInteger;
@Deprecated
/* renamed from: r4.cn0 */
/* loaded from: classes2.dex */
public class cn0<T> {

    /* renamed from: a */
    public final vm0<T> f21602a;

    /* renamed from: b */
    public final AtomicInteger f21603b;

    @Deprecated
    /* renamed from: c */
    public final void m12410c(T t) {
        this.f21602a.m6086e(t);
    }

    @Deprecated
    /* renamed from: d */
    public final void m12409d() {
        this.f21602a.m6085f(new Exception());
    }

    @Deprecated
    /* renamed from: e */
    public final int m12408e() {
        return this.f21603b.get();
    }

    @Deprecated
    /* renamed from: b */
    public final void m12411b(zm0<T> zm0Var, xm0 xm0Var) {
        y73.m4799p(this.f21602a, new bn0(this, zm0Var, xm0Var), qm0.f30195f);
    }

    public cn0() {
        vm0<T> vm0Var = new vm0<>();
        this.f21602a = vm0Var;
        this.f21603b = new AtomicInteger(0);
        y73.m4799p(vm0Var, new an0(this), qm0.f30195f);
    }
}
