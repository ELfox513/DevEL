package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.x22 */
/* loaded from: classes2.dex */
public final class x22 implements vr3<w22> {

    /* renamed from: a */
    public final is3<Context> f33421a;

    /* renamed from: b */
    public final is3<f21> f33422b;

    /* renamed from: c */
    public final is3<Executor> f33423c;

    public x22(is3<Context> is3Var, is3<f21> is3Var2, is3<Executor> is3Var3) {
        this.f33421a = is3Var;
        this.f33422b = is3Var2;
        this.f33423c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new w22(this.f33421a.mo4079a(), this.f33422b.mo4079a(), this.f33423c.mo4079a());
    }
}
