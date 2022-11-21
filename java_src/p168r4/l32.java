package p168r4;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.l32 */
/* loaded from: classes2.dex */
public final class l32 implements q12<h11> {

    /* renamed from: a */
    public final f21 f27056a;

    /* renamed from: b */
    public final s22 f27057b;

    /* renamed from: c */
    public final i83 f27058c;

    /* renamed from: d */
    public final l71 f27059d;

    /* renamed from: e */
    public final ScheduledExecutorService f27060e;

    public l32(f21 f21Var, s22 s22Var, l71 l71Var, ScheduledExecutorService scheduledExecutorService, i83 i83Var) {
        this.f27056a = f21Var;
        this.f27057b = s22Var;
        this.f27059d = l71Var;
        this.f27060e = scheduledExecutorService;
        this.f27058c = i83Var;
    }

    @Override // p168r4.q12
    /* renamed from: b */
    public final h83<h11> mo4840b(final bp2 bp2Var, final no2 no2Var) {
        return this.f27058c.mo8015c(new Callable(this, bp2Var, no2Var) { // from class: r4.i32

            /* renamed from: a */
            public final l32 f24953a;

            /* renamed from: b */
            public final bp2 f24954b;

            /* renamed from: c */
            public final no2 f24955c;

            {
                this.f24953a = this;
                this.f24954b = bp2Var;
                this.f24955c = no2Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f24953a.m9800e(this.f24954b, this.f24955c);
            }
        });
    }

    @Override // p168r4.q12
    /* renamed from: a */
    public final boolean mo4841a(bp2 bp2Var, no2 no2Var) {
        if (bp2Var.f21153a.f34161a.m10835a() != null && this.f27057b.mo4841a(bp2Var, no2Var)) {
            return true;
        }
        return false;
    }

    /* renamed from: e */
    public final /* synthetic */ h11 m9800e(final bp2 bp2Var, final no2 no2Var) {
        return this.f27056a.mo8150e(new x31(bp2Var, no2Var, null), new s21(bp2Var.f21153a.f34161a.m10835a(), new Runnable(this, bp2Var, no2Var) { // from class: r4.j32

            /* renamed from: a */
            public final l32 f25877a;

            /* renamed from: b */
            public final bp2 f25878b;

            /* renamed from: d */
            public final no2 f25879d;

            {
                this.f25877a = this;
                this.f25878b = bp2Var;
                this.f25879d = no2Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f25877a.m9799f(this.f25878b, this.f25879d);
            }
        })).zza();
    }

    /* renamed from: f */
    public final /* synthetic */ void m9799f(bp2 bp2Var, no2 no2Var) {
        y73.m4799p(y73.m4807h(this.f27057b.mo4840b(bp2Var, no2Var), no2Var.f28391N, TimeUnit.SECONDS, this.f27060e), new k32(this), this.f27058c);
    }
}
