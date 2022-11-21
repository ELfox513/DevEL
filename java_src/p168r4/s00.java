package p168r4;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.s00 */
/* loaded from: classes2.dex */
public final class s00 implements vr3<r00> {

    /* renamed from: a */
    public final is3<Context> f31197a;

    /* renamed from: b */
    public final is3<ScheduledExecutorService> f31198b;

    /* renamed from: c */
    public final is3<t00> f31199c;

    public s00(is3<Context> is3Var, is3<ScheduledExecutorService> is3Var2, is3<t00> is3Var3) {
        this.f31197a = is3Var;
        this.f31198b = is3Var2;
        this.f31199c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new r00(((mq2) this.f31197a).m9281b(), this.f31198b.mo4079a(), new t00(), null);
    }
}
