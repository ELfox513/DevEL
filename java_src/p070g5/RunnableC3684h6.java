package p070g5;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import p018b5.InterfaceC0693i1;
/* renamed from: g5.h6 */
/* loaded from: classes2.dex */
public final class RunnableC3684h6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC0693i1 f16588a;

    /* renamed from: b */
    public final /* synthetic */ AppMeasurementDynamiteService f16589b;

    public RunnableC3684h6(AppMeasurementDynamiteService appMeasurementDynamiteService, InterfaceC0693i1 interfaceC0693i1) {
        this.f16589b = appMeasurementDynamiteService;
        this.f16588a = interfaceC0693i1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16589b.f7838a.m18540I().m17886R(this.f16588a);
    }
}
