package p097j5;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
/* renamed from: j5.b0 */
/* loaded from: classes2.dex */
public final class RunnableC4333b0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC4346i f18206a;

    /* renamed from: b */
    public final /* synthetic */ C4335c0 f18207b;

    public RunnableC4333b0(C4335c0 c4335c0, AbstractC4346i abstractC4346i) {
        this.f18207b = c4335c0;
        this.f18206a = abstractC4346i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC4344h interfaceC4344h;
        try {
            interfaceC4344h = this.f18207b.f18209b;
            AbstractC4346i mo1703a = interfaceC4344h.mo1703a(this.f18206a.mo16790l());
            if (mo1703a == null) {
                this.f18207b.mo0e(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = C4350k.f18226b;
            mo1703a.mo16796f(executor, this.f18207b);
            mo1703a.mo16797e(executor, this.f18207b);
            mo1703a.mo16801a(executor, this.f18207b);
        } catch (C4342g e) {
            if (e.getCause() instanceof Exception) {
                this.f18207b.mo0e((Exception) e.getCause());
            } else {
                this.f18207b.mo0e(e);
            }
        } catch (CancellationException unused) {
            this.f18207b.mo15406d();
        } catch (Exception e2) {
            this.f18207b.mo0e(e2);
        }
    }
}
