package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import p209w0.AbstractC7114j;
import p217x0.C7199i;
/* loaded from: classes.dex */
public class RescheduleReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final String f1393a = AbstractC7114j.m2489f("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC7114j.m2491c().mo2488a(f1393a, String.format("Received intent %s", intent), new Throwable[0]);
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                C7199i.m2163n(context).m2154w(goAsync());
                return;
            } catch (IllegalStateException e) {
                AbstractC7114j.m2491c().mo2487b(f1393a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
                return;
            }
        }
        context.startService(C0396a.m26621e(context));
    }
}
