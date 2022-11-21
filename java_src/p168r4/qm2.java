package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.qm2 */
/* loaded from: classes2.dex */
public final class qm2 implements vr3<pm2> {

    /* renamed from: a */
    public final is3<Context> f30197a;

    /* renamed from: b */
    public final is3<Executor> f30198b;

    /* renamed from: c */
    public final is3<bu0> f30199c;

    /* renamed from: d */
    public final is3<d92> f30200d;

    /* renamed from: e */
    public final is3<qn2> f30201e;

    /* renamed from: f */
    public final is3<fp2> f30202f;

    public qm2(is3<Context> is3Var, is3<Executor> is3Var2, is3<bu0> is3Var3, is3<d92> is3Var4, is3<qn2> is3Var5, is3<fp2> is3Var6) {
        this.f30197a = is3Var;
        this.f30198b = is3Var2;
        this.f30199c = is3Var3;
        this.f30200d = is3Var4;
        this.f30201e = is3Var5;
        this.f30202f = is3Var6;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new pm2(this.f30197a.mo4079a(), this.f30198b.mo4079a(), this.f30199c.mo4079a(), this.f30200d.mo4079a(), this.f30201e.mo4079a(), new fp2());
    }
}
