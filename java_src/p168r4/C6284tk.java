package p168r4;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* renamed from: r4.tk */
/* loaded from: classes2.dex */
public final class C6284tk {

    /* renamed from: a */
    public final ExecutorService f31879a = C5988ll.m9652b("Loader:ExtractorMediaPeriod");

    /* renamed from: b */
    public HandlerC6173qk<? extends InterfaceC6210rk> f31880b;

    /* renamed from: c */
    public IOException f31881c;

    public C6284tk(String str) {
    }

    /* renamed from: f */
    public final boolean m6798f() {
        return this.f31880b != null;
    }

    /* renamed from: g */
    public final void m6797g() {
        this.f31880b.m7807c(false);
    }

    /* renamed from: h */
    public final void m6796h(Runnable runnable) {
        HandlerC6173qk<? extends InterfaceC6210rk> handlerC6173qk = this.f31880b;
        if (handlerC6173qk != null) {
            handlerC6173qk.m7807c(true);
        }
        this.f31879a.execute(runnable);
        this.f31879a.shutdown();
    }

    /* renamed from: i */
    public final void m6795i(int i) {
        IOException iOException = this.f31881c;
        if (iOException == null) {
            HandlerC6173qk<? extends InterfaceC6210rk> handlerC6173qk = this.f31880b;
            if (handlerC6173qk != null) {
                handlerC6173qk.m7809a(handlerC6173qk.f30164d);
                return;
            }
            return;
        }
        throw iOException;
    }

    /* renamed from: e */
    public final <T extends InterfaceC6210rk> long m6799e(T t, InterfaceC6136pk<T> interfaceC6136pk, int i) {
        boolean z;
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            z = true;
        } else {
            z = false;
        }
        C6358vk.m6137d(z);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new HandlerC6173qk(this, myLooper, t, interfaceC6136pk, i, elapsedRealtime).m7808b(0L);
        return elapsedRealtime;
    }
}
