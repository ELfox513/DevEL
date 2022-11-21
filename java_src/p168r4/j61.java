package p168r4;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.j61 */
/* loaded from: classes2.dex */
public final class j61 implements vr3<i61> {

    /* renamed from: a */
    public final is3<b81> f25932a;

    /* renamed from: b */
    public final is3<no2> f25933b;

    /* renamed from: c */
    public final is3<ScheduledExecutorService> f25934c;

    /* renamed from: d */
    public final is3<Executor> f25935d;

    public j61(is3<b81> is3Var, is3<no2> is3Var2, is3<ScheduledExecutorService> is3Var3, is3<Executor> is3Var4) {
        this.f25932a = is3Var;
        this.f25933b = is3Var2;
        this.f25934c = is3Var3;
        this.f25935d = is3Var4;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new i61(this.f25932a.mo4079a(), ((y31) this.f25933b).m4921b(), this.f25934c.mo4079a(), i83Var);
    }
}
