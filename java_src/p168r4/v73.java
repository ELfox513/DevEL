package p168r4;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* renamed from: r4.v73 */
/* loaded from: classes2.dex */
public final class v73<V> implements Runnable {

    /* renamed from: a */
    public final Future<V> f32641a;

    /* renamed from: b */
    public final t73<? super V> f32642b;

    public v73(Future<V> future, t73<? super V> t73Var) {
        this.f32641a = future;
        this.f32642b = t73Var;
    }

    public final String toString() {
        t03 m6668a = u03.m6668a(this);
        m6668a.m6937a(this.f32642b);
        return m6668a.toString();
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable m12839a;
        Future<V> future = this.f32641a;
        if ((future instanceof a93) && (m12839a = b93.m12839a((a93) future)) != null) {
            this.f32642b.mo4627a(m12839a);
            return;
        }
        try {
            this.f32642b.mo4626b(y73.m4798q(this.f32641a));
        } catch (Error e) {
            e = e;
            this.f32642b.mo4627a(e);
        } catch (RuntimeException e2) {
            e = e2;
            this.f32642b.mo4627a(e);
        } catch (ExecutionException e3) {
            this.f32642b.mo4627a(e3.getCause());
        }
    }
}
