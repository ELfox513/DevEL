package p168r4;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
/* renamed from: r4.u2 */
/* loaded from: classes2.dex */
public final class RunnableC6303u2 extends BroadcastReceiver implements Runnable {

    /* renamed from: a */
    public final InterfaceC6340v2 f32146a;

    /* renamed from: b */
    public final Handler f32147b;

    /* renamed from: d */
    public final /* synthetic */ C6377w2 f32148d;

    public RunnableC6303u2(C6377w2 c6377w2, Handler handler, InterfaceC6340v2 interfaceC6340v2) {
        this.f32148d = c6377w2;
        this.f32147b = handler;
        this.f32146a = interfaceC6340v2;
    }

    @Override // java.lang.Runnable
    public final void run() {
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
            this.f32147b.post(this);
        }
    }
}
