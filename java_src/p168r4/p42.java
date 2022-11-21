package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.p42 */
/* loaded from: classes2.dex */
public final class p42 implements vr3<o42> {

    /* renamed from: a */
    public final is3<Context> f29335a;

    /* renamed from: b */
    public final is3<sh1> f29336b;

    /* renamed from: c */
    public final is3<Executor> f29337c;

    public p42(is3<Context> is3Var, is3<sh1> is3Var2, is3<Executor> is3Var3) {
        this.f29335a = is3Var;
        this.f29336b = is3Var2;
        this.f29337c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new o42(this.f29335a.mo4079a(), this.f29336b.mo4079a(), this.f29337c.mo4079a());
    }
}
