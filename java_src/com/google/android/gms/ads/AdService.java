package com.google.android.gms.ads;

import android.app.IntentService;
import android.content.Intent;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import p168r4.C6479yu;
import p168r4.cb0;
import p168r4.cm0;
/* loaded from: classes.dex */
public class AdService extends IntentService {
    public AdService() {
        super("AdService");
    }

    @Override // android.app.IntentService
    public final void onHandleIntent(@RecentlyNonNull Intent intent) {
        try {
            C6479yu.m4567b().m5568m(this, new cb0()).mo10054R0(intent);
        } catch (RemoteException e) {
            cm0.m12440c("RemoteException calling handleNotificationIntent: ".concat(e.toString()));
        }
    }
}
