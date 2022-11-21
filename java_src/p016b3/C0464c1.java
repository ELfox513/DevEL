package p016b3;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import p168r4.c03;
import p220x3.C7297q;
/* renamed from: b3.c1 */
/* loaded from: classes.dex */
public final class C0464c1 {

    /* renamed from: a */
    public HandlerThread f1586a = null;

    /* renamed from: b */
    public Handler f1587b = null;

    /* renamed from: c */
    public int f1588c = 0;

    /* renamed from: d */
    public final Object f1589d = new Object();

    /* renamed from: b */
    public final Handler m26395b() {
        return this.f1587b;
    }

    /* renamed from: a */
    public final Looper m26396a() {
        Looper looper;
        synchronized (this.f1589d) {
            if (this.f1588c == 0) {
                if (this.f1586a == null) {
                    C0543w1.m26251k("Starting the looper thread.");
                    HandlerThread handlerThread = new HandlerThread("LooperProvider");
                    this.f1586a = handlerThread;
                    handlerThread.start();
                    this.f1587b = new c03(this.f1586a.getLooper());
                    C0543w1.m26251k("Looper thread started.");
                } else {
                    C0543w1.m26251k("Resuming the looper thread");
                    this.f1589d.notifyAll();
                }
            } else {
                C7297q.m1882k(this.f1586a, "Invalid state: mHandlerThread should already been initialized.");
            }
            this.f1588c++;
            looper = this.f1586a.getLooper();
        }
        return looper;
    }
}
