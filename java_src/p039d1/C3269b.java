package p039d1;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import p084i1.InterfaceC4086a;
import p209w0.AbstractC7114j;
/* renamed from: d1.b */
/* loaded from: classes.dex */
public class C3269b extends AbstractC3270c<Boolean> {

    /* renamed from: i */
    public static final String f15574i = AbstractC7114j.m2489f("BatteryNotLowTracker");

    public C3269b(Context context, InterfaceC4086a interfaceC4086a) {
        super(context, interfaceC4086a);
    }

    @Override // p039d1.AbstractC3270c
    /* renamed from: g */
    public IntentFilter mo19204g() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_OKAY");
        intentFilter.addAction("android.intent.action.BATTERY_LOW");
        return intentFilter;
    }

    @Override // p039d1.AbstractC3272d
    /* renamed from: i */
    public Boolean mo19205b() {
        Intent registerReceiver = this.f15580b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            AbstractC7114j.m2491c().mo2487b(f15574i, "getInitialState - null intent received", new Throwable[0]);
            return null;
        }
        return Boolean.valueOf((registerReceiver.getIntExtra("status", -1) == 1 || ((float) registerReceiver.getIntExtra("level", -1)) / ((float) registerReceiver.getIntExtra("scale", -1)) > 0.15f) ? true : true);
    }

    @Override // p039d1.AbstractC3270c
    /* renamed from: h */
    public void mo19203h(Context context, Intent intent) {
        if (intent.getAction() == null) {
            return;
        }
        AbstractC7114j.m2491c().mo2488a(f15574i, String.format("Received %s", intent.getAction()), new Throwable[0]);
        String action = intent.getAction();
        action.hashCode();
        if (!action.equals("android.intent.action.BATTERY_OKAY")) {
            if (action.equals("android.intent.action.BATTERY_LOW")) {
                m19216d(Boolean.FALSE);
                return;
            }
            return;
        }
        m19216d(Boolean.TRUE);
    }
}
