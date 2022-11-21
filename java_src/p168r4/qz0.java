package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.qz0 */
/* loaded from: classes2.dex */
public final class qz0 implements vr3<iz0> {

    /* renamed from: a */
    public final is3<C5879im> f30368a;

    /* renamed from: b */
    public final is3<na0> f30369b;

    /* renamed from: c */
    public final is3<Executor> f30370c;

    public qz0(is3<C5879im> is3Var, is3<na0> is3Var2, is3<Executor> is3Var3) {
        this.f30368a = is3Var;
        this.f30369b = is3Var2;
        this.f30370c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 m4090a = zr2.m4090a();
        ds3.m11980b(m4090a);
        return new iz0(this.f30368a.mo4079a().m10597d(), this.f30369b.mo4079a(), m4090a);
    }
}
