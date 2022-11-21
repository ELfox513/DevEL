package p093j1;

import com.android.billingclient.api.C1085b;
import java.util.concurrent.Future;
import p027c5.C1062a;
/* renamed from: j1.b0 */
/* loaded from: classes.dex */
public final class RunnableC4276b0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Future f18116a;

    /* renamed from: b */
    public final /* synthetic */ Runnable f18117b;

    public RunnableC4276b0(C1085b c1085b, Future future, Runnable runnable) {
        this.f18116a = future;
        this.f18117b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f18116a.isDone() && !this.f18116a.isCancelled()) {
            this.f18116a.cancel(true);
            C1062a.m24710l("BillingClient", "Async task is taking too long, cancel it!");
            Runnable runnable = this.f18117b;
            if (runnable != null) {
                runnable.run();
            }
        }
    }
}
