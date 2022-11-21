package p070g5;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import p018b5.InterfaceC0693i1;
/* renamed from: g5.h8 */
/* loaded from: classes2.dex */
public final class RunnableC3686h8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC0693i1 f16594a;

    /* renamed from: b */
    public final /* synthetic */ String f16595b;

    /* renamed from: d */
    public final /* synthetic */ String f16596d;

    /* renamed from: k */
    public final /* synthetic */ boolean f16597k;

    /* renamed from: p */
    public final /* synthetic */ AppMeasurementDynamiteService f16598p;

    public RunnableC3686h8(AppMeasurementDynamiteService appMeasurementDynamiteService, InterfaceC0693i1 interfaceC0693i1, String str, String str2, boolean z) {
        this.f16598p = appMeasurementDynamiteService;
        this.f16594a = interfaceC0693i1;
        this.f16595b = str;
        this.f16596d = str2;
        this.f16597k = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16598p.f7838a.m18540I().m17882V(this.f16594a, this.f16595b, this.f16596d, this.f16597k);
    }
}
