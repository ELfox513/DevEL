package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import p168r4.C6479yu;
import p168r4.cb0;
import p168r4.ke0;
/* loaded from: classes.dex */
public class OfflinePingSender extends Worker {

    /* renamed from: r */
    public final ke0 f7620r;

    @Override // androidx.work.Worker
    @RecentlyNonNull
    public final ListenableWorker.AbstractC0370a doWork() {
        try {
            this.f7620r.mo10052g();
            return ListenableWorker.AbstractC0370a.m26699c();
        } catch (RemoteException unused) {
            return ListenableWorker.AbstractC0370a.m26701a();
        }
    }

    public OfflinePingSender(@RecentlyNonNull Context context, @RecentlyNonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f7620r = C6479yu.m4567b().m5568m(context, new cb0());
    }
}
