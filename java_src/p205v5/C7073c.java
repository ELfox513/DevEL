package p205v5;

import android.os.Bundle;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import p196u5.C6930f;
/* renamed from: v5.c */
/* loaded from: classes2.dex */
public class C7073c implements InterfaceC7072b, InterfaceC7071a {

    /* renamed from: a */
    public final C7075e f36065a;

    /* renamed from: b */
    public final int f36066b;

    /* renamed from: c */
    public final TimeUnit f36067c;

    /* renamed from: e */
    public CountDownLatch f36069e;

    /* renamed from: d */
    public final Object f36068d = new Object();

    /* renamed from: f */
    public boolean f36070f = false;

    @Override // p205v5.InterfaceC7071a
    /* renamed from: a */
    public void mo2568a(String str, Bundle bundle) {
        synchronized (this.f36068d) {
            C6930f m3016f = C6930f.m3016f();
            m3016f.m3013i("Logging event " + str + " to Firebase Analytics with params " + bundle);
            this.f36069e = new CountDownLatch(1);
            this.f36070f = false;
            this.f36065a.mo2568a(str, bundle);
            C6930f.m3016f().m3013i("Awaiting app exception callback from Analytics...");
            try {
                if (this.f36069e.await(this.f36066b, this.f36067c)) {
                    this.f36070f = true;
                    C6930f.m3016f().m3013i("App exception callback received from Analytics listener.");
                } else {
                    C6930f.m3016f().m3011k("Timeout exceeded while awaiting app exception callback from Analytics listener.");
                }
            } catch (InterruptedException unused) {
                C6930f.m3016f().m3018d("Interrupted while awaiting app exception callback from Analytics listener.");
            }
            this.f36069e = null;
        }
    }

    @Override // p205v5.InterfaceC7072b
    /* renamed from: b */
    public void mo2570b(String str, Bundle bundle) {
        CountDownLatch countDownLatch = this.f36069e;
        if (countDownLatch != null && "_ae".equals(str)) {
            countDownLatch.countDown();
        }
    }

    public C7073c(C7075e c7075e, int i, TimeUnit timeUnit) {
        this.f36065a = c7075e;
        this.f36066b = i;
        this.f36067c = timeUnit;
    }
}
