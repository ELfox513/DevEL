package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.bo2 */
/* loaded from: classes2.dex */
public final class bo2 implements vr3<ao2> {

    /* renamed from: a */
    public final is3<Context> f21139a;

    /* renamed from: b */
    public final is3<Executor> f21140b;

    /* renamed from: c */
    public final is3<bu0> f21141c;

    /* renamed from: d */
    public final is3<am2<ap1, uo1>> f21142d;

    /* renamed from: e */
    public final is3<qn2> f21143e;

    /* renamed from: f */
    public final is3<fp2> f21144f;

    /* renamed from: g */
    public final is3<cp2> f21145g;

    public bo2(is3<Context> is3Var, is3<Executor> is3Var2, is3<bu0> is3Var3, is3<am2<ap1, uo1>> is3Var4, is3<qn2> is3Var5, is3<fp2> is3Var6, is3<cp2> is3Var7) {
        this.f21139a = is3Var;
        this.f21140b = is3Var2;
        this.f21141c = is3Var3;
        this.f21142d = is3Var4;
        this.f21143e = is3Var5;
        this.f21144f = is3Var6;
        this.f21145g = is3Var7;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new ao2(this.f21139a.mo4079a(), this.f21140b.mo4079a(), this.f21141c.mo4079a(), ((fm2) this.f21142d).mo4079a(), this.f21143e.mo4079a(), new fp2(), this.f21145g.mo4079a());
    }
}
