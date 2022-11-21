package p168r4;

import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: r4.zs1 */
/* loaded from: classes2.dex */
public final class zs1 implements vr3<Set<ve1<j71>>> {

    /* renamed from: a */
    public final ys1 f34721a;

    /* renamed from: b */
    public final is3<jt1> f34722b;

    /* renamed from: c */
    public final is3<Executor> f34723c;

    public zs1(ys1 ys1Var, is3<jt1> is3Var, is3<Executor> is3Var2) {
        this.f34721a = ys1Var;
        this.f34722b = is3Var;
        this.f34723c = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        Set<ve1<j71>> m4590a = ys1.m4590a(this.f34722b.mo4079a(), i83Var);
        ds3.m11980b(m4590a);
        return m4590a;
    }
}
