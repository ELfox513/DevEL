package p168r4;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* renamed from: r4.ov2 */
/* loaded from: classes2.dex */
public final class ov2 extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ pv2 f29163a;

    public ov2(pv2 pv2Var) {
        this.f29163a = pv2Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        KeyguardManager keyguardManager;
        if (intent == null) {
            return;
        }
        if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            pv2.m8118f(this.f29163a, true);
        } else if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            pv2.m8118f(this.f29163a, false);
        } else if ("android.intent.action.SCREEN_ON".equals(intent.getAction()) && (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) != null && !keyguardManager.inKeyguardRestrictedInputMode()) {
            pv2.m8118f(this.f29163a, false);
        }
    }
}
