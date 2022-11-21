package p070g5;

import android.content.ComponentName;
import android.content.Context;
/* renamed from: g5.t8 */
/* loaded from: classes2.dex */
public final class RunnableC3830t8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ServiceConnectionC3854v8 f16959a;

    public RunnableC3830t8(ServiceConnectionC3854v8 serviceConnectionC3854v8) {
        this.f16959a = serviceConnectionC3854v8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3866w8 c3866w8 = this.f16959a.f17013d;
        Context mo17856O = c3866w8.f17008a.mo17856O();
        this.f16959a.f17013d.f17008a.mo17857G();
        C3866w8.m17891J(c3866w8, new ComponentName(mo17856O, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
