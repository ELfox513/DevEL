package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.ik2 */
/* loaded from: classes2.dex */
public final class ik2 implements vr3<hk2> {

    /* renamed from: a */
    public final is3<Context> f25156a;

    /* renamed from: b */
    public final is3<Executor> f25157b;

    /* renamed from: c */
    public final is3<bu0> f25158c;

    /* renamed from: d */
    public final is3<am2<u01, a11>> f25159d;

    /* renamed from: e */
    public final is3<fk2> f25160e;

    /* renamed from: f */
    public final is3<fp2> f25161f;

    public ik2(is3<Context> is3Var, is3<Executor> is3Var2, is3<bu0> is3Var3, is3<am2<u01, a11>> is3Var4, is3<fk2> is3Var5, is3<fp2> is3Var6) {
        this.f25156a = is3Var;
        this.f25157b = is3Var2;
        this.f25158c = is3Var3;
        this.f25159d = is3Var4;
        this.f25160e = is3Var5;
        this.f25161f = is3Var6;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new hk2(this.f25156a.mo4079a(), this.f25157b.mo4079a(), this.f25158c.mo4079a(), ((dm2) this.f25159d).mo4079a(), this.f25160e.mo4079a(), new fp2());
    }
}
