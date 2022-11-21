package p070g5;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import p018b5.InterfaceC0693i1;
/* renamed from: g5.ma */
/* loaded from: classes2.dex */
public final class RunnableC3748ma implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC0693i1 f16739a;

    /* renamed from: b */
    public final /* synthetic */ AppMeasurementDynamiteService f16740b;

    public RunnableC3748ma(AppMeasurementDynamiteService appMeasurementDynamiteService, InterfaceC0693i1 interfaceC0693i1) {
        this.f16740b = appMeasurementDynamiteService;
        this.f16739a = interfaceC0693i1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16740b.f7838a.m18538K().m18147x(this.f16739a, this.f16740b.f7838a.m18525i());
    }
}
