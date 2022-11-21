package p016b3;

import android.content.Context;
/* renamed from: b3.e2 */
/* loaded from: classes.dex */
public final class RunnableC0473e2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f1602a;

    /* renamed from: b */
    public final /* synthetic */ C0497k2 f1603b;

    public RunnableC0473e2(C0497k2 c0497k2, Context context) {
        this.f1603b = c0497k2;
        this.f1602a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        obj = this.f1603b.f1635d;
        synchronized (obj) {
            this.f1603b.f1636e = C0497k2.m26301u(this.f1602a);
            obj2 = this.f1603b.f1635d;
            obj2.notifyAll();
        }
    }
}
