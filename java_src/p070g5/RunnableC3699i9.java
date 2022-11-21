package p070g5;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
/* renamed from: g5.i9 */
/* loaded from: classes2.dex */
public final class RunnableC3699i9 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3760na f16633a;

    /* renamed from: b */
    public final /* synthetic */ AppMeasurementDynamiteService f16634b;

    public RunnableC3699i9(AppMeasurementDynamiteService appMeasurementDynamiteService, C3760na c3760na) {
        this.f16634b = appMeasurementDynamiteService;
        this.f16633a = c3760na;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16634b.f7838a.m18543D().m18248D(this.f16633a);
    }
}
