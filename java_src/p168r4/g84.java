package p168r4;

import android.os.Handler;
import java.util.concurrent.Executor;
/* renamed from: r4.g84 */
/* loaded from: classes2.dex */
public final class g84 {

    /* renamed from: a */
    public final Executor f23944a;

    public g84(Handler handler) {
        this.f23944a = new e84(this, handler);
    }

    /* renamed from: b */
    public final void m11249b(q84<?> q84Var, z84 z84Var) {
        q84Var.m7938h("post-error");
        w84 m5798b = w84.m5798b(z84Var);
        Executor executor = this.f23944a;
        ((e84) executor).f22911a.post(new f84(q84Var, m5798b, null));
    }

    /* renamed from: a */
    public final void m11250a(q84<?> q84Var, w84<?> w84Var, Runnable runnable) {
        q84Var.m7949E();
        q84Var.m7938h("post-response");
        Executor executor = this.f23944a;
        ((e84) executor).f22911a.post(new f84(q84Var, w84Var, runnable));
    }
}
