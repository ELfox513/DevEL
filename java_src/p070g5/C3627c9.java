package p070g5;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import p070g5.InterfaceC3615b9;
import p220x3.C7297q;
/* renamed from: g5.c9 */
/* loaded from: classes2.dex */
public final class C3627c9<T extends Context & InterfaceC3615b9> {

    /* renamed from: a */
    public final T f16417a;

    public C3627c9(T t) {
        C7297q.m1883j(t);
        this.f16417a = t;
    }

    /* renamed from: b */
    public final IBinder m18442b(Intent intent) {
        if (intent == null) {
            m18433k().m18018m().m18042a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new BinderC3839u5(C3616ba.m18474e0(this.f16417a), null);
        }
        m18433k().m18013r().m18041b("onBind received unknown action", action);
        return null;
    }

    /* renamed from: j */
    public final boolean m18434j(Intent intent) {
        if (intent == null) {
            m18433k().m18018m().m18042a("onUnbind called with null intent");
            return true;
        }
        m18433k().m18014q().m18041b("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    /* renamed from: a */
    public final int m18443a(final Intent intent, int i, final int i2) {
        C3611b5 m18544C = C3611b5.m18544C(this.f16417a, null, null);
        final C3789q3 mo17858F = m18544C.mo17858F();
        if (intent == null) {
            mo17858F.m18013r().m18042a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        m18544C.mo17857G();
        mo17858F.m18014q().m18040c("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            m18436h(new Runnable() { // from class: g5.y8
                @Override // java.lang.Runnable
                public final void run() {
                    C3627c9.this.m18441c(i2, mo17858F, intent);
                }
            });
        }
        return 2;
    }

    /* renamed from: c */
    public final /* synthetic */ void m18441c(int i, C3789q3 c3789q3, Intent intent) {
        if (this.f16417a.mo18507D(i)) {
            c3789q3.m18014q().m18041b("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            m18433k().m18014q().m18042a("Completed wakeful intent.");
            this.f16417a.mo18506E(intent);
        }
    }

    /* renamed from: e */
    public final void m18439e() {
        C3611b5 m18544C = C3611b5.m18544C(this.f16417a, null, null);
        C3789q3 mo17858F = m18544C.mo17858F();
        m18544C.mo17857G();
        mo17858F.m18014q().m18042a("Local AppMeasurementService is starting up");
    }

    /* renamed from: f */
    public final void m18438f() {
        C3611b5 m18544C = C3611b5.m18544C(this.f16417a, null, null);
        C3789q3 mo17858F = m18544C.mo17858F();
        m18544C.mo17857G();
        mo17858F.m18014q().m18042a("Local AppMeasurementService is shutting down");
    }

    /* renamed from: g */
    public final void m18437g(Intent intent) {
        if (intent == null) {
            m18433k().m18018m().m18042a("onRebind called with null intent");
            return;
        }
        m18433k().m18014q().m18041b("onRebind called. action", intent.getAction());
    }

    /* renamed from: h */
    public final void m18436h(Runnable runnable) {
        C3616ba m18474e0 = C3616ba.m18474e0(this.f16417a);
        m18474e0.mo17855P().m17826u(new RunnableC3603a9(this, m18474e0, runnable));
    }

    @TargetApi(24)
    /* renamed from: i */
    public final boolean m18435i(final JobParameters jobParameters) {
        C3611b5 m18544C = C3611b5.m18544C(this.f16417a, null, null);
        final C3789q3 mo17858F = m18544C.mo17858F();
        String string = jobParameters.getExtras().getString("action");
        m18544C.mo17857G();
        mo17858F.m18014q().m18041b("Local AppMeasurementJobService called. action", string);
        if ("com.google.android.gms.measurement.UPLOAD".equals(string)) {
            m18436h(new Runnable() { // from class: g5.z8
                @Override // java.lang.Runnable
                public final void run() {
                    C3627c9.this.m18440d(mo17858F, jobParameters);
                }
            });
            return true;
        }
        return true;
    }

    /* renamed from: k */
    public final C3789q3 m18433k() {
        return C3611b5.m18544C(this.f16417a, null, null).mo17858F();
    }

    /* renamed from: d */
    public final /* synthetic */ void m18440d(C3789q3 c3789q3, JobParameters jobParameters) {
        c3789q3.m18014q().m18042a("AppMeasurementJobService processed last upload request.");
        this.f16417a.mo18505F(jobParameters, false);
    }
}
