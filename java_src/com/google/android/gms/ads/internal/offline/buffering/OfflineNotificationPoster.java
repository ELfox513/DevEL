package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import p060f4.BinderC3514b;
import p168r4.C6479yu;
import p168r4.cb0;
import p168r4.ke0;
/* loaded from: classes.dex */
public class OfflineNotificationPoster extends Worker {

    /* renamed from: r */
    public final ke0 f7619r;

    public OfflineNotificationPoster(@RecentlyNonNull Context context, @RecentlyNonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f7619r = C6479yu.m4567b().m5568m(context, new cb0());
    }

    @Override // androidx.work.Worker
    @RecentlyNonNull
    public final ListenableWorker.AbstractC0370a doWork() {
        try {
            this.f7619r.mo10053U0(BinderC3514b.m18741L0(getApplicationContext()), getInputData().m26658j("uri"), getInputData().m26658j("gws_query_id"));
            return ListenableWorker.AbstractC0370a.m26699c();
        } catch (RemoteException unused) {
            return ListenableWorker.AbstractC0370a.m26701a();
        }
    }
}
