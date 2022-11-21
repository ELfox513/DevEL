package p168r4;

import java.util.concurrent.ScheduledExecutorService;
import p026c4.InterfaceC1045f;
/* renamed from: r4.g11 */
/* loaded from: classes2.dex */
public final class g11 implements vr3<aa1> {

    /* renamed from: a */
    public final is3<ScheduledExecutorService> f23823a;

    /* renamed from: b */
    public final is3<InterfaceC1045f> f23824b;

    public g11(is3<ScheduledExecutorService> is3Var, is3<InterfaceC1045f> is3Var2) {
        this.f23823a = is3Var;
        this.f23824b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: b */
    public final aa1 mo4079a() {
        return new aa1(this.f23823a.mo4079a(), this.f23824b.mo4079a());
    }
}
