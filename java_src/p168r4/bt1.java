package p168r4;

import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: r4.bt1 */
/* loaded from: classes2.dex */
public final class bt1 implements vr3<Set<ve1<e81>>> {

    /* renamed from: a */
    public final ys1 f21205a;

    /* renamed from: b */
    public final is3<jt1> f21206b;

    /* renamed from: c */
    public final is3<Executor> f21207c;

    public bt1(ys1 ys1Var, is3<jt1> is3Var, is3<Executor> is3Var2) {
        this.f21205a = ys1Var;
        this.f21206b = is3Var;
        this.f21207c = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        Set<ve1<e81>> m4588c = ys1.m4588c(this.f21206b.mo4079a(), i83Var);
        ds3.m11980b(m4588c);
        return m4588c;
    }
}
