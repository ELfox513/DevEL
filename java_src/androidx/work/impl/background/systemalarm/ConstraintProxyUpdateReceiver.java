package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
import p066g1.C3552e;
import p209w0.AbstractC7114j;
import p217x0.C7199i;
/* loaded from: classes.dex */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final String f1388a = AbstractC7114j.m2489f("ConstrntProxyUpdtRecvr");

    /* renamed from: androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver$a */
    /* loaded from: classes.dex */
    public class RunnableC0395a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Intent f1389a;

        /* renamed from: b */
        public final /* synthetic */ Context f1390b;

        /* renamed from: d */
        public final /* synthetic */ BroadcastReceiver.PendingResult f1391d;

        public RunnableC0395a(Intent intent, Context context, BroadcastReceiver.PendingResult pendingResult) {
            this.f1389a = intent;
            this.f1390b = context;
            this.f1391d = pendingResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                boolean booleanExtra = this.f1389a.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra2 = this.f1389a.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                boolean booleanExtra3 = this.f1389a.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra4 = this.f1389a.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                AbstractC7114j.m2491c().mo2488a(ConstraintProxyUpdateReceiver.f1388a, String.format("Updating proxies: BatteryNotLowProxy enabled (%s), BatteryChargingProxy enabled (%s), StorageNotLowProxy (%s), NetworkStateProxy enabled (%s)", Boolean.valueOf(booleanExtra), Boolean.valueOf(booleanExtra2), Boolean.valueOf(booleanExtra3), Boolean.valueOf(booleanExtra4)), new Throwable[0]);
                C3552e.m18623a(this.f1390b, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                C3552e.m18623a(this.f1390b, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                C3552e.m18623a(this.f1390b, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                C3552e.m18623a(this.f1390b, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
            } finally {
                this.f1391d.finish();
            }
        }
    }

    /* renamed from: a */
    public static Intent m26626a(Context context, boolean z, boolean z2, boolean z3, boolean z4) {
        Intent intent = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
        intent.setComponent(new ComponentName(context, ConstraintProxyUpdateReceiver.class));
        intent.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z2).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z3).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z4);
        return intent;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        if (intent != null) {
            str = intent.getAction();
        } else {
            str = null;
        }
        if (!"androidx.work.impl.background.systemalarm.UpdateProxies".equals(str)) {
            AbstractC7114j.m2491c().mo2488a(f1388a, String.format("Ignoring unknown action %s", str), new Throwable[0]);
        } else {
            C7199i.m2163n(context).m2158s().mo17407b(new RunnableC0395a(intent, context, goAsync()));
        }
    }
}
