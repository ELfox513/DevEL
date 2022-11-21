package p018b5;

import android.app.Activity;
import android.os.Bundle;
import p060f4.BinderC3514b;
import p220x3.C7297q;
/* renamed from: b5.p2 */
/* loaded from: classes2.dex */
public final class C0813p2 extends AbstractRunnableC0779n2 {

    /* renamed from: p */
    public final /* synthetic */ Bundle f2137p;

    /* renamed from: q */
    public final /* synthetic */ Activity f2138q;

    /* renamed from: r */
    public final /* synthetic */ C0949x2 f2139r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0813p2(C0949x2 c0949x2, Bundle bundle, Activity activity) {
        super(c0949x2.f2388a, true);
        this.f2139r = c0949x2;
        this.f2137p = bundle;
        this.f2138q = activity;
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: a */
    public final void mo24898a() {
        Bundle bundle;
        InterfaceC0642f1 interfaceC0642f1;
        if (this.f2137p != null) {
            bundle = new Bundle();
            if (this.f2137p.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = this.f2137p.get("com.google.app_measurement.screen_service");
                if (obj instanceof Bundle) {
                    bundle.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                }
            }
        } else {
            bundle = null;
        }
        interfaceC0642f1 = this.f2139r.f2388a.f2434i;
        ((InterfaceC0642f1) C7297q.m1883j(interfaceC0642f1)).onActivityCreated(BinderC3514b.m18741L0(this.f2138q), bundle, this.f2053b);
    }
}
