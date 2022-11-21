package p016b3;

import android.os.Looper;
import android.os.Message;
import p168r4.c03;
import p235z2.C7601t;
/* renamed from: b3.x1 */
/* loaded from: classes.dex */
public final class HandlerC0546x1 extends c03 {
    public HandlerC0546x1(Looper looper) {
        super(looper);
    }

    @Override // p168r4.c03
    /* renamed from: a */
    public final void mo12672a(Message message) {
        try {
            super.mo12672a(message);
        } catch (Throwable th) {
            C7601t.m939d();
            C0497k2.m26307o(C7601t.m935h().m9050q(), th);
            throw th;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            C7601t.m935h().m9056k(e, "AdMobHandler.handleMessage");
        }
    }
}
