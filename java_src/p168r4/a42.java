package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.a42 */
/* loaded from: classes2.dex */
public final class a42 implements vr3<z32> {

    /* renamed from: a */
    public final is3<Context> f20366a;

    /* renamed from: b */
    public final is3<im0> f20367b;

    /* renamed from: c */
    public final is3<vg1> f20368c;

    /* renamed from: d */
    public final is3<Executor> f20369d;

    public a42(is3<Context> is3Var, is3<im0> is3Var2, is3<vg1> is3Var3, is3<Executor> is3Var4) {
        this.f20366a = is3Var;
        this.f20367b = is3Var2;
        this.f20368c = is3Var3;
        this.f20369d = is3Var4;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new z32(this.f20366a.mo4079a(), ((pu0) this.f20367b).m8207b(), this.f20368c.mo4079a(), i83Var);
    }
}
