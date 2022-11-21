package p168r4;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* renamed from: r4.o0 */
/* loaded from: classes2.dex */
public final class C6079o0 extends BroadcastReceiver {

    /* renamed from: a */
    public boolean f28756a = true;

    /* renamed from: a */
    public final boolean m8945a() {
        return this.f28756a;
    }

    public C6079o0(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.registerReceiver(this, intentFilter);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.f28756a = true;
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            this.f28756a = false;
        }
    }
}
