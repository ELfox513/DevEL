package p097j5;

import java.util.concurrent.Callable;
/* renamed from: j5.j0 */
/* loaded from: classes2.dex */
public final class RunnableC4349j0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C4347i0 f18223a;

    /* renamed from: b */
    public final /* synthetic */ Callable f18224b;

    public RunnableC4349j0(C4347i0 c4347i0, Callable callable) {
        this.f18223a = c4347i0;
        this.f18224b = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f18223a.m16783s(this.f18224b.call());
        } catch (Exception e) {
            this.f18223a.m16781u(e);
        } catch (Throwable th) {
            this.f18223a.m16781u(new RuntimeException(th));
        }
    }
}
