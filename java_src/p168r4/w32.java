package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.w32 */
/* loaded from: classes2.dex */
public final class w32 implements vr3<v32> {

    /* renamed from: a */
    public final is3<Context> f33045a;

    /* renamed from: b */
    public final is3<im0> f33046b;

    /* renamed from: c */
    public final is3<hp2> f33047c;

    /* renamed from: d */
    public final is3<Executor> f33048d;

    /* renamed from: e */
    public final is3<vg1> f33049e;

    /* renamed from: f */
    public final is3<rp1> f33050f;

    /* renamed from: g */
    public final is3<x50> f33051g;

    public w32(is3<Context> is3Var, is3<im0> is3Var2, is3<hp2> is3Var3, is3<Executor> is3Var4, is3<vg1> is3Var5, is3<rp1> is3Var6, is3<x50> is3Var7) {
        this.f33045a = is3Var;
        this.f33046b = is3Var2;
        this.f33047c = is3Var3;
        this.f33048d = is3Var4;
        this.f33049e = is3Var5;
        this.f33050f = is3Var6;
        this.f33051g = is3Var7;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new v32(this.f33045a.mo4079a(), ((pu0) this.f33046b).m8207b(), ((z61) this.f33047c).m4418b(), this.f33048d.mo4079a(), this.f33049e.mo4079a(), this.f33050f.mo4079a(), new x50());
    }
}
