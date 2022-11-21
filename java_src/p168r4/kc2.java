package p168r4;

import java.util.concurrent.atomic.AtomicReference;
import p026c4.InterfaceC1045f;
import p168r4.dg2;
/* renamed from: r4.kc2 */
/* loaded from: classes2.dex */
public final class kc2<S extends dg2> implements eg2<S> {

    /* renamed from: a */
    public final AtomicReference<jc2<S>> f26368a = new AtomicReference<>();

    /* renamed from: b */
    public final InterfaceC1045f f26369b;

    /* renamed from: c */
    public final eg2<S> f26370c;

    /* renamed from: d */
    public final long f26371d;

    public kc2(eg2<S> eg2Var, long j, InterfaceC1045f interfaceC1045f) {
        this.f26369b = interfaceC1045f;
        this.f26370c = eg2Var;
        this.f26371d = j;
    }

    @Override // p168r4.eg2
    public final h83<S> zza() {
        jc2<S> jc2Var = this.f26368a.get();
        if (jc2Var == null || jc2Var.m10309a()) {
            jc2Var = new jc2<>(this.f26370c.zza(), this.f26371d, this.f26369b);
            this.f26368a.set(jc2Var);
        }
        return jc2Var.f25996a;
    }
}
