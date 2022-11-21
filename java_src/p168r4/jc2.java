package p168r4;

import p026c4.InterfaceC1045f;
import p168r4.dg2;
/* renamed from: r4.jc2 */
/* loaded from: classes2.dex */
public final class jc2<S extends dg2<?>> {

    /* renamed from: a */
    public final h83<S> f25996a;

    /* renamed from: b */
    public final long f25997b;

    /* renamed from: c */
    public final InterfaceC1045f f25998c;

    public jc2(h83<S> h83Var, long j, InterfaceC1045f interfaceC1045f) {
        this.f25996a = h83Var;
        this.f25998c = interfaceC1045f;
        this.f25997b = interfaceC1045f.mo24762b() + j;
    }

    /* renamed from: a */
    public final boolean m10309a() {
        return this.f25997b < this.f25998c.mo24762b();
    }
}
