package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import p085i2.AbstractC4113m;
import p085i2.C4119r;
import p175s2.C6577a;
/* loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    /* renamed from: b */
    public static /* synthetic */ void m23102b() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        C4119r.m17337f(context);
        AbstractC4113m.AbstractC4114a mo17349d = AbstractC4113m.m17357a().mo17351b(queryParameter).mo17349d(C6577a.m3881b(intValue));
        if (queryParameter2 != null) {
            mo17349d.mo17350c(Base64.decode(queryParameter2, 0));
        }
        C4119r.m17340c().m17338e().m14686q(mo17349d.mo17352a(), i, new Runnable() { // from class: o2.b
            @Override // java.lang.Runnable
            public final void run() {
                AlarmManagerSchedulerBroadcastReceiver.m23102b();
            }
        });
    }
}
