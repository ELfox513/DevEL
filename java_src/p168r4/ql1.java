package p168r4;

import java.util.concurrent.Executor;
import p016b3.C0539v0;
import p026c4.InterfaceC1045f;
/* renamed from: r4.ql1 */
/* loaded from: classes2.dex */
public final class ql1 implements vr3<pl1> {

    /* renamed from: a */
    public final is3<C0539v0> f30176a;

    /* renamed from: b */
    public final is3<InterfaceC1045f> f30177b;

    /* renamed from: c */
    public final is3<Executor> f30178c;

    public ql1(is3<C0539v0> is3Var, is3<InterfaceC1045f> is3Var2, is3<Executor> is3Var3) {
        this.f30176a = is3Var;
        this.f30177b = is3Var2;
        this.f30178c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new pl1(this.f30176a.mo4079a(), this.f30177b.mo4079a(), i83Var);
    }
}
