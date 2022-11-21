package p004a3;

import android.app.Activity;
import android.os.Bundle;
import p016b3.C0543w1;
/* renamed from: a3.u */
/* loaded from: classes.dex */
public final class BinderC0080u extends BinderC0073n {
    public BinderC0080u(Activity activity) {
        super(activity);
    }

    @Override // p004a3.BinderC0073n, p168r4.we0
    /* renamed from: l0 */
    public final void mo5751l0(Bundle bundle) {
        C0543w1.m26251k("AdOverlayParcel is null or does not contain valid overlay type.");
        this.f126E = 4;
        this.f127a.finish();
    }
}
