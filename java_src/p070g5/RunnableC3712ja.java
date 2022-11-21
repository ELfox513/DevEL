package p070g5;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import p018b5.InterfaceC0693i1;
/* renamed from: g5.ja */
/* loaded from: classes2.dex */
public final class RunnableC3712ja implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC0693i1 f16664a;

    /* renamed from: b */
    public final /* synthetic */ String f16665b;

    /* renamed from: d */
    public final /* synthetic */ String f16666d;

    /* renamed from: k */
    public final /* synthetic */ AppMeasurementDynamiteService f16667k;

    public RunnableC3712ja(AppMeasurementDynamiteService appMeasurementDynamiteService, InterfaceC0693i1 interfaceC0693i1, String str, String str2) {
        this.f16667k = appMeasurementDynamiteService;
        this.f16664a = interfaceC0693i1;
        this.f16665b = str;
        this.f16666d = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16667k.f7838a.m18540I().m17884T(this.f16664a, this.f16665b, this.f16666d);
    }
}
