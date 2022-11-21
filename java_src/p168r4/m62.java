package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.m62 */
/* loaded from: classes2.dex */
public final class m62 implements vr3<l62> {

    /* renamed from: a */
    public final is3<Context> f27510a;

    /* renamed from: b */
    public final is3<Executor> f27511b;

    /* renamed from: c */
    public final is3<ap1> f27512c;

    public m62(is3<Context> is3Var, is3<Executor> is3Var2, is3<ap1> is3Var3) {
        this.f27510a = is3Var;
        this.f27511b = is3Var2;
        this.f27512c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new l62(this.f27510a.mo4079a(), this.f27511b.mo4079a(), this.f27512c.mo4079a());
    }
}
