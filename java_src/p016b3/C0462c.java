package p016b3;

import android.annotation.TargetApi;
import android.content.Context;
import android.telephony.TelephonyManager;
import p235z2.C7601t;
@TargetApi(26)
/* renamed from: b3.c */
/* loaded from: classes.dex */
public class C0462c extends C0537u2 {
    @Override // p016b3.C0478g
    /* renamed from: p */
    public final int mo26376p(Context context, TelephonyManager telephonyManager) {
        boolean isDataEnabled;
        C7601t.m939d();
        if (C0497k2.m26320e(context, "android.permission.ACCESS_NETWORK_STATE")) {
            isDataEnabled = telephonyManager.isDataEnabled();
            if (isDataEnabled) {
                return 2;
            }
        }
        return 1;
    }
}
