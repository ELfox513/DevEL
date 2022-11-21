package p168r4;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
/* renamed from: r4.u7 */
/* loaded from: classes2.dex */
public final class C6308u7 extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ C6419x7 f32217a;

    public /* synthetic */ C6308u7(C6419x7 c6419x7, C6234s7 c6234s7) {
        this.f32217a = c6419x7;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Handler m5460a = C6419x7.m5460a(this.f32217a);
        final C6419x7 c6419x7 = this.f32217a;
        m5460a.post(new Runnable(c6419x7) { // from class: r4.t7

            /* renamed from: a */
            public final C6419x7 f31724a;

            {
                this.f31724a = c6419x7;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C6419x7.m5455f(this.f31724a);
            }
        });
    }
}
