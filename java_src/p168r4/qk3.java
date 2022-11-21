package p168r4;

import java.io.PrintWriter;
/* renamed from: r4.qk3 */
/* loaded from: classes2.dex */
public final class qk3 extends gk3 {
    @Override // p168r4.gk3
    /* renamed from: a */
    public final void mo7805a(Throwable th, Throwable th2) {
        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
    }

    @Override // p168r4.gk3
    /* renamed from: b */
    public final void mo7804b(Throwable th) {
        th.printStackTrace();
    }

    @Override // p168r4.gk3
    /* renamed from: c */
    public final void mo7803c(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
    }
}
