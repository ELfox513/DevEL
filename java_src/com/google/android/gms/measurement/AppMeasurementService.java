package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import p070g5.C3627c9;
import p070g5.InterfaceC3615b9;
import p092j0.AbstractC4271a;
/* loaded from: classes2.dex */
public final class AppMeasurementService extends Service implements InterfaceC3615b9 {

    /* renamed from: a */
    public C3627c9<AppMeasurementService> f7837a;

    @Override // p070g5.InterfaceC3615b9
    /* renamed from: D */
    public final boolean mo18507D(int i) {
        return stopSelfResult(i);
    }

    @Override // p070g5.InterfaceC3615b9
    /* renamed from: E */
    public final void mo18506E(Intent intent) {
        AbstractC4271a.m16881b(intent);
    }

    @Override // p070g5.InterfaceC3615b9
    /* renamed from: F */
    public final void mo18505F(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public final C3627c9<AppMeasurementService> m22976a() {
        if (this.f7837a == null) {
            this.f7837a = new C3627c9<>(this);
        }
        return this.f7837a;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return m22976a().m18442b(intent);
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        m22976a().m18437g(intent);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        m22976a().m18443a(intent, i, i2);
        return 2;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        m22976a().m18434j(intent);
        return true;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        m22976a().m18439e();
    }

    @Override // android.app.Service
    public void onDestroy() {
        m22976a().m18438f();
        super.onDestroy();
    }
}
