package p168r4;

import java.util.concurrent.BlockingQueue;
/* renamed from: r4.a84 */
/* loaded from: classes2.dex */
public final class a84 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ q84 f20418a;

    /* renamed from: b */
    public final /* synthetic */ b84 f20419b;

    public a84(b84 b84Var, q84 q84Var) {
        this.f20419b = b84Var;
        this.f20418a = q84Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BlockingQueue blockingQueue;
        try {
            blockingQueue = this.f20419b.f20908b;
            blockingQueue.put(this.f20418a);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
