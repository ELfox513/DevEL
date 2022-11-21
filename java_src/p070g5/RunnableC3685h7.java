package p070g5;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import p018b5.InterfaceC0693i1;
/* renamed from: g5.h7 */
/* loaded from: classes2.dex */
public final class RunnableC3685h7 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC0693i1 f16590a;

    /* renamed from: b */
    public final /* synthetic */ C3833u f16591b;

    /* renamed from: d */
    public final /* synthetic */ String f16592d;

    /* renamed from: k */
    public final /* synthetic */ AppMeasurementDynamiteService f16593k;

    public RunnableC3685h7(AppMeasurementDynamiteService appMeasurementDynamiteService, InterfaceC0693i1 interfaceC0693i1, C3833u c3833u, String str) {
        this.f16593k = appMeasurementDynamiteService;
        this.f16590a = interfaceC0693i1;
        this.f16591b = c3833u;
        this.f16592d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16593k.f7838a.m18540I().m17878k(this.f16590a, this.f16591b, this.f16592d);
    }
}
