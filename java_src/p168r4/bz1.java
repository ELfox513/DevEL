package p168r4;

import android.content.Context;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* renamed from: r4.bz1 */
/* loaded from: classes2.dex */
public final class bz1 implements vr3<az1> {

    /* renamed from: a */
    public final is3<Context> f21277a;

    /* renamed from: b */
    public final is3<Executor> f21278b;

    /* renamed from: c */
    public final is3<ah0> f21279c;

    /* renamed from: d */
    public final is3<ux0> f21280d;

    /* renamed from: e */
    public final is3<zg0> f21281e;

    /* renamed from: f */
    public final is3<ArrayDeque<xy1>> f21282f;

    /* renamed from: g */
    public final is3<fz1> f21283g;

    public bz1(is3<Context> is3Var, is3<Executor> is3Var2, is3<ah0> is3Var3, is3<ux0> is3Var4, is3<zg0> is3Var5, is3<ArrayDeque<xy1>> is3Var6, is3<fz1> is3Var7) {
        this.f21277a = is3Var;
        this.f21278b = is3Var2;
        this.f21279c = is3Var3;
        this.f21280d = is3Var4;
        this.f21281e = is3Var5;
        this.f21282f = is3Var6;
        this.f21283g = is3Var7;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new az1(((gu0) this.f21277a).m11050b(), this.f21278b.mo4079a(), new ah0(), ((mu0) this.f21280d).mo4079a(), ((yu0) this.f21281e).mo4079a(), this.f21282f.mo4079a(), new fz1(), null);
    }
}
