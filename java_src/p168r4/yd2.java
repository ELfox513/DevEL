package p168r4;

import android.os.Bundle;
/* renamed from: r4.yd2 */
/* loaded from: classes2.dex */
public final class yd2 implements dg2<Bundle> {

    /* renamed from: a */
    public final mo2 f34030a;

    public yd2(mo2 mo2Var) {
        this.f34030a = mo2Var;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        mo2 mo2Var = this.f34030a;
        if (mo2Var != null) {
            bundle2.putBoolean("render_in_browser", mo2Var.m9307b());
            bundle2.putBoolean("disable_ml", this.f34030a.m9306c());
        }
    }
}
