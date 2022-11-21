package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.p52 */
/* loaded from: classes2.dex */
public final class p52 implements vr3<o52> {

    /* renamed from: a */
    public final is3<Context> f29345a;

    /* renamed from: b */
    public final is3<Executor> f29346b;

    /* renamed from: c */
    public final is3<ap1> f29347c;

    public p52(is3<Context> is3Var, is3<Executor> is3Var2, is3<ap1> is3Var3) {
        this.f29345a = is3Var;
        this.f29346b = is3Var2;
        this.f29347c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new o52(this.f29345a.mo4079a(), this.f29346b.mo4079a(), this.f29347c.mo4079a());
    }
}
