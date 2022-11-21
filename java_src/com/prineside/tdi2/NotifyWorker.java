package com.prineside.tdi2;

import android.content.Context;
import android.util.Log;
import androidx.work.C0380b;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
/* loaded from: classes2.dex */
public class NotifyWorker extends Worker {

    /* renamed from: r */
    public Context f8779r;

    public NotifyWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f8779r = context;
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0370a doWork() {
        try {
            C0380b inputData = getInputData();
            AndroidLauncher.showNotificationNow(this.f8779r, inputData.m26660h("id", 9001), inputData.m26658j("title"), inputData.m26658j("description"));
        } catch (Exception e) {
            Log.e("NotifyWorker", "failed to show notification", e);
        }
        return ListenableWorker.AbstractC0370a.m26699c();
    }
}
