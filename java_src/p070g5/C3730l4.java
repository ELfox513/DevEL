package p070g5;

import android.content.Context;
import android.content.Intent;
import p220x3.C7297q;
/* renamed from: g5.l4 */
/* loaded from: classes2.dex */
public final class C3730l4 {

    /* renamed from: a */
    public final InterfaceC3718k4 f16704a;

    public C3730l4(InterfaceC3718k4 interfaceC3718k4) {
        C7297q.m1883j(interfaceC3718k4);
        this.f16704a = interfaceC3718k4;
    }

    /* renamed from: a */
    public final void m18069a(Context context, Intent intent) {
        C3611b5 m18544C = C3611b5.m18544C(context, null, null);
        C3789q3 mo17858F = m18544C.mo17858F();
        if (intent == null) {
            mo17858F.m18013r().m18042a("Receiver called with null intent");
            return;
        }
        m18544C.mo17857G();
        String action = intent.getAction();
        mo17858F.m18014q().m18041b("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            mo17858F.m18014q().m18042a("Starting wakeful intent.");
            this.f16704a.mo18083a(context, className);
        } else if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            mo17858F.m18013r().m18042a("Install Referrer Broadcasts are deprecated");
        }
    }
}
