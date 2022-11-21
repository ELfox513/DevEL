package p016b3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* renamed from: b3.j2 */
/* loaded from: classes.dex */
public final class C0493j2 extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ C0497k2 f1624a;

    public /* synthetic */ C0493j2(C0497k2 c0497k2, C0489i2 c0489i2) {
        this.f1624a = c0497k2;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            C0497k2.m26346I(this.f1624a, true);
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            C0497k2.m26346I(this.f1624a, false);
        }
    }
}
