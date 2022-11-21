package p168r4;

import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: r4.at1 */
/* loaded from: classes2.dex */
public final class at1 implements vr3<Set<ve1<m71>>> {

    /* renamed from: a */
    public final ys1 f20608a;

    /* renamed from: b */
    public final is3<jt1> f20609b;

    /* renamed from: c */
    public final is3<Executor> f20610c;

    public at1(ys1 ys1Var, is3<jt1> is3Var, is3<Executor> is3Var2) {
        this.f20608a = ys1Var;
        this.f20609b = is3Var;
        this.f20610c = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        Set<ve1<m71>> m4589b = ys1.m4589b(this.f20609b.mo4079a(), i83Var);
        ds3.m11980b(m4589b);
        return m4589b;
    }
}
