package p039d1;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import p084i1.InterfaceC4086a;
import p209w0.AbstractC7114j;
/* renamed from: d1.j */
/* loaded from: classes.dex */
public class C3281j extends AbstractC3270c<Boolean> {

    /* renamed from: i */
    public static final String f15592i = AbstractC7114j.m2489f("StorageNotLowTracker");

    public C3281j(Context context, InterfaceC4086a interfaceC4086a) {
        super(context, interfaceC4086a);
    }

    @Override // p039d1.AbstractC3270c
    /* renamed from: g */
    public IntentFilter mo19204g() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        return intentFilter;
    }

    @Override // p039d1.AbstractC3272d
    /* renamed from: i */
    public Boolean mo19205b() {
        Intent registerReceiver = this.f15580b.registerReceiver(null, mo19204g());
        if (registerReceiver != null && registerReceiver.getAction() != null) {
            String action = registerReceiver.getAction();
            action.hashCode();
            if (!action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                if (!action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                    return null;
                }
                return Boolean.TRUE;
            }
            return Boolean.FALSE;
        }
        return Boolean.TRUE;
    }

    @Override // p039d1.AbstractC3270c
    /* renamed from: h */
    public void mo19203h(Context context, Intent intent) {
        if (intent.getAction() == null) {
            return;
        }
        AbstractC7114j.m2491c().mo2488a(f15592i, String.format("Received %s", intent.getAction()), new Throwable[0]);
        String action = intent.getAction();
        action.hashCode();
        if (!action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
            if (action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                m19216d(Boolean.TRUE);
                return;
            }
            return;
        }
        m19216d(Boolean.FALSE);
    }
}
