package p070g5;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import p018b5.InterfaceC0744l1;
/* renamed from: g5.oa */
/* loaded from: classes2.dex */
public final class C3772oa implements InterfaceC3636d6 {

    /* renamed from: a */
    public final InterfaceC0744l1 f16805a;

    /* renamed from: b */
    public final /* synthetic */ AppMeasurementDynamiteService f16806b;

    public C3772oa(AppMeasurementDynamiteService appMeasurementDynamiteService, InterfaceC0744l1 interfaceC0744l1) {
        this.f16806b = appMeasurementDynamiteService;
        this.f16805a = interfaceC0744l1;
    }

    @Override // p070g5.InterfaceC3636d6
    /* renamed from: a */
    public final void mo3992a(String str, String str2, Bundle bundle, long j) {
        try {
            this.f16805a.mo25560e1(str, str2, bundle, j);
        } catch (RemoteException e) {
            C3611b5 c3611b5 = this.f16806b.f7838a;
            if (c3611b5 != null) {
                c3611b5.mo17858F().m18013r().m18041b("Event listener threw exception", e);
            }
        }
    }
}
