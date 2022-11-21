package p168r4;

import android.os.Bundle;
/* renamed from: r4.db2 */
/* loaded from: classes2.dex */
public final class db2 implements dg2<Bundle> {

    /* renamed from: a */
    public final Bundle f22216a;

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (!this.f22216a.isEmpty()) {
            bundle2.putBundle("installed_adapter_data", this.f22216a);
        }
    }
}
