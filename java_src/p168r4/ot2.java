package p168r4;

import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.ot2 */
/* loaded from: classes2.dex */
public final class ot2 implements vr3<mt2> {

    /* renamed from: a */
    public final is3<i83> f29128a;

    /* renamed from: b */
    public final is3<ScheduledExecutorService> f29129b;

    /* renamed from: c */
    public final is3<lt2> f29130c;

    public ot2(is3<i83> is3Var, is3<ScheduledExecutorService> is3Var2, is3<lt2> is3Var3) {
        this.f29128a = is3Var;
        this.f29129b = is3Var2;
        this.f29130c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new mt2(i83Var, this.f29129b.mo4079a(), ((pt2) this.f29130c).mo4079a());
    }
}
