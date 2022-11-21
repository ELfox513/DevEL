package p168r4;

import java.io.PrintWriter;
import java.util.List;
/* renamed from: r4.ok3 */
/* loaded from: classes2.dex */
public final class ok3 extends gk3 {

    /* renamed from: a */
    public final ik3 f29036a = new ik3();

    @Override // p168r4.gk3
    /* renamed from: a */
    public final void mo7805a(Throwable th, Throwable th2) {
        if (th2 != th) {
            this.f29036a.m10602a(th, true).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }

    @Override // p168r4.gk3
    /* renamed from: b */
    public final void mo7804b(Throwable th) {
        th.printStackTrace();
        List<Throwable> m10602a = this.f29036a.m10602a(th, false);
        if (m10602a == null) {
            return;
        }
        synchronized (m10602a) {
            for (Throwable th2 : m10602a) {
                System.err.print("Suppressed: ");
                th2.printStackTrace();
            }
        }
    }

    @Override // p168r4.gk3
    /* renamed from: c */
    public final void mo7803c(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
        List<Throwable> m10602a = this.f29036a.m10602a(th, false);
        if (m10602a == null) {
            return;
        }
        synchronized (m10602a) {
            for (Throwable th2 : m10602a) {
                printWriter.print("Suppressed: ");
                th2.printStackTrace(printWriter);
            }
        }
    }
}
