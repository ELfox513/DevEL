package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.List;
import p057f1.C3482p;
import p209w0.AbstractC7114j;
import p209w0.C7103b;
import p209w0.EnumC7116k;
/* loaded from: classes.dex */
public abstract class ConstraintProxy extends BroadcastReceiver {

    /* renamed from: a */
    public static final String f1387a = AbstractC7114j.m2489f("ConstraintProxy");

    /* loaded from: classes.dex */
    public static class BatteryChargingProxy extends ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(Context context, Intent intent) {
            super.onReceive(context, intent);
        }
    }

    /* loaded from: classes.dex */
    public static class BatteryNotLowProxy extends ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(Context context, Intent intent) {
            super.onReceive(context, intent);
        }
    }

    /* loaded from: classes.dex */
    public static class NetworkStateProxy extends ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(Context context, Intent intent) {
            super.onReceive(context, intent);
        }
    }

    /* loaded from: classes.dex */
    public static class StorageNotLowProxy extends ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(Context context, Intent intent) {
            super.onReceive(context, intent);
        }
    }

    /* renamed from: a */
    public static void m26627a(Context context, List<C3482p> list) {
        boolean z;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        for (C3482p c3482p : list) {
            C7103b c7103b = c3482p.f15930j;
            z2 |= c7103b.m2520f();
            z3 |= c7103b.m2519g();
            z4 |= c7103b.m2517i();
            if (c7103b.m2524b() != EnumC7116k.NOT_REQUIRED) {
                z = true;
            } else {
                z = false;
            }
            z5 |= z;
            if (z2 && z3 && z4 && z5) {
                break;
            }
        }
        context.sendBroadcast(ConstraintProxyUpdateReceiver.m26626a(context, z2, z3, z4, z5));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC7114j.m2491c().mo2488a(f1387a, String.format("onReceive : %s", intent), new Throwable[0]);
        context.startService(C0396a.m26624a(context));
    }
}
