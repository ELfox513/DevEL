package p168r4;

import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.yt2 */
/* loaded from: classes2.dex */
public final class yt2 implements vr3<xt2> {

    /* renamed from: a */
    public final is3<du2> f34212a;

    /* renamed from: b */
    public final is3<ku2> f34213b;

    /* renamed from: c */
    public final is3<ScheduledExecutorService> f34214c;

    public yt2(is3<du2> is3Var, is3<ku2> is3Var2, is3<ScheduledExecutorService> is3Var3) {
        this.f34212a = is3Var;
        this.f34213b = is3Var2;
        this.f34214c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        Object obj;
        or3 m6729c = tr3.m6729c(this.f34212a);
        or3 m6729c2 = tr3.m6729c(this.f34213b);
        ScheduledExecutorService mo4079a = this.f34214c.mo4079a();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31048j6)).booleanValue()) {
            obj = new au2((xt2) m6729c.m8710a(), mo4079a);
        } else {
            obj = (xt2) m6729c2.m8710a();
        }
        ds3.m11980b(obj);
        return obj;
    }
}
