package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.dx1 */
/* loaded from: classes2.dex */
public final class dx1 implements vr3<cx1> {

    /* renamed from: a */
    public final is3<bu0> f22668a;

    /* renamed from: b */
    public final is3<Context> f22669b;

    /* renamed from: c */
    public final is3<im0> f22670c;

    /* renamed from: d */
    public final is3<hp2> f22671d;

    /* renamed from: e */
    public final is3<Executor> f22672e;

    /* renamed from: f */
    public final is3<String> f22673f;

    /* renamed from: g */
    public final is3<ea1> f22674g;

    /* renamed from: h */
    public final is3<ia1> f22675h;

    public dx1(is3<bu0> is3Var, is3<Context> is3Var2, is3<im0> is3Var3, is3<hp2> is3Var4, is3<Executor> is3Var5, is3<String> is3Var6, is3<ea1> is3Var7, is3<ia1> is3Var8) {
        this.f22668a = is3Var;
        this.f22669b = is3Var2;
        this.f22670c = is3Var3;
        this.f22671d = is3Var4;
        this.f22672e = is3Var5;
        this.f22673f = is3Var6;
        this.f22674g = is3Var7;
        this.f22675h = is3Var8;
    }

    @Override // p168r4.is3
    /* renamed from: b */
    public final cx1 mo4079a() {
        bu0 mo4079a = this.f22668a.mo4079a();
        Context m9281b = ((mq2) this.f22669b).m9281b();
        im0 m8207b = ((pu0) this.f22670c).m8207b();
        hp2 m4418b = ((z61) this.f22671d).m4418b();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new cx1(mo4079a, m9281b, m8207b, m4418b, i83Var, this.f22673f.mo4079a(), ((fa1) this.f22674g).mo4079a(), ((ka1) this.f22675h).mo4079a());
    }
}
