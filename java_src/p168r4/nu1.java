package p168r4;

import java.util.concurrent.Executor;
import p235z2.C7601t;
/* renamed from: r4.nu1 */
/* loaded from: classes2.dex */
public final class nu1 implements t73<String> {

    /* renamed from: a */
    public final /* synthetic */ pu1 f28482a;

    public nu1(pu1 pu1Var) {
        this.f28482a = pu1Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        long j;
        vm0 vm0Var;
        synchronized (this) {
            this.f28482a.f29582c = true;
            pu1 pu1Var = this.f28482a;
            long mo24762b = C7601t.m932k().mo24762b();
            j = this.f28482a.f29583d;
            pu1Var.m8186u("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (mo24762b - j));
            vm0Var = this.f28482a.f29584e;
            vm0Var.m6085f(new Exception());
        }
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(String str) {
        long j;
        Executor executor;
        final String str2 = str;
        synchronized (this) {
            this.f28482a.f29582c = true;
            pu1 pu1Var = this.f28482a;
            long mo24762b = C7601t.m932k().mo24762b();
            j = this.f28482a.f29583d;
            pu1Var.m8186u("com.google.android.gms.ads.MobileAds", true, "", (int) (mo24762b - j));
            executor = this.f28482a.f29588i;
            executor.execute(new Runnable(this, str2) { // from class: r4.mu1

                /* renamed from: a */
                public final nu1 f27878a;

                /* renamed from: b */
                public final String f27879b;

                {
                    this.f27878a = this;
                    this.f27879b = str2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    nu1 nu1Var = this.f27878a;
                    pu1.m8196k(nu1Var.f28482a, this.f27879b);
                }
            });
        }
    }
}
