package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import p070g5.C3627c9;
import p070g5.InterfaceC3615b9;
@TargetApi(24)
/* loaded from: classes2.dex */
public final class AppMeasurementJobService extends JobService implements InterfaceC3615b9 {

    /* renamed from: a */
    public C3627c9<AppMeasurementJobService> f7835a;

    @Override // p070g5.InterfaceC3615b9
    /* renamed from: D */
    public final boolean mo18507D(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // p070g5.InterfaceC3615b9
    /* renamed from: E */
    public final void mo18506E(Intent intent) {
    }

    @Override // p070g5.InterfaceC3615b9
    @TargetApi(24)
    /* renamed from: F */
    public final void mo18505F(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    /* renamed from: a */
    public final C3627c9<AppMeasurementJobService> m22977a() {
        if (this.f7835a == null) {
            this.f7835a = new C3627c9<>(this);
        }
        return this.f7835a;
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        m22977a().m18437g(intent);
    }

    public boolean onStartJob(JobParameters jobParameters) {
        m22977a().m18435i(jobParameters);
        return true;
    }

    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        m22977a().m18434j(intent);
        return true;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        m22977a().m18439e();
    }

    @Override // android.app.Service
    public void onDestroy() {
        m22977a().m18438f();
        super.onDestroy();
    }
}
