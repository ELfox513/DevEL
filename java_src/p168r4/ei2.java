package p168r4;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.ei2 */
/* loaded from: classes2.dex */
public final class ei2 implements vr3<ci2> {

    /* renamed from: a */
    public final is3<af0> f23008a;

    /* renamed from: b */
    public final is3<ScheduledExecutorService> f23009b;

    /* renamed from: c */
    public final is3<Context> f23010c;

    public ei2(is3<af0> is3Var, is3<ScheduledExecutorService> is3Var2, is3<Context> is3Var3) {
        this.f23008a = is3Var;
        this.f23009b = is3Var2;
        this.f23010c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new ci2(new af0(), this.f23009b.mo4079a(), ((gu0) this.f23010c).m11050b(), null);
    }
}
