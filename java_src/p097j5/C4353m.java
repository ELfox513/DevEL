package p097j5;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* renamed from: j5.m */
/* loaded from: classes2.dex */
public final class C4353m implements InterfaceC4354n {

    /* renamed from: a */
    public final CountDownLatch f18228a = new CountDownLatch(1);

    public /* synthetic */ C4353m(RunnableC4349j0 runnableC4349j0) {
    }

    /* renamed from: a */
    public final boolean m16760a(long j, TimeUnit timeUnit) {
        return this.f18228a.await(j, timeUnit);
    }

    @Override // p097j5.InterfaceC4340f
    /* renamed from: c */
    public final void mo1c(Object obj) {
        this.f18228a.countDown();
    }

    @Override // p097j5.InterfaceC4334c
    /* renamed from: d */
    public final void mo15406d() {
        this.f18228a.countDown();
    }

    @Override // p097j5.InterfaceC4338e
    /* renamed from: e */
    public final void mo0e(Exception exc) {
        this.f18228a.countDown();
    }
}
