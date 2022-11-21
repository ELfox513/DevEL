package p168r4;

import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.TelephonyDisplayInfo;
/* renamed from: r4.ub */
/* loaded from: classes2.dex */
public final class C6312ub extends PhoneStateListener {

    /* renamed from: a */
    public final /* synthetic */ C6349vb f32239a;

    public /* synthetic */ C6312ub(C6349vb c6349vb, C6238sb c6238sb) {
        this.f32239a = c6349vb;
    }

    @Override // android.telephony.PhoneStateListener
    public final void onServiceStateChanged(ServiceState serviceState) {
        String serviceState2;
        boolean z;
        int i;
        if (serviceState == null) {
            serviceState2 = "";
        } else {
            serviceState2 = serviceState.toString();
        }
        if (!serviceState2.contains("nrState=CONNECTED") && !serviceState2.contains("nrState=NOT_RESTRICTED")) {
            z = false;
        } else {
            z = true;
        }
        C6349vb c6349vb = this.f32239a;
        if (true != z) {
            i = 5;
        } else {
            i = 10;
        }
        C6349vb.m6190d(c6349vb, i);
    }

    @Override // android.telephony.PhoneStateListener
    public final void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
        boolean z;
        int i;
        int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
        if (overrideNetworkType != 3 && overrideNetworkType != 4) {
            z = false;
        } else {
            z = true;
        }
        C6349vb c6349vb = this.f32239a;
        if (true != z) {
            i = 5;
        } else {
            i = 10;
        }
        C6349vb.m6190d(c6349vb, i);
    }
}
