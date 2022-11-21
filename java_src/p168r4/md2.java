package p168r4;

import android.os.Bundle;
/* renamed from: r4.md2 */
/* loaded from: classes2.dex */
public final class md2 implements dg2<Bundle> {

    /* renamed from: a */
    public final Boolean f27587a;

    public md2(Boolean bool) {
        this.f27587a = bool;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        Boolean bool = this.f27587a;
        if (bool != null) {
            bundle2.putBoolean("hw_accel", bool.booleanValue());
        }
    }
}
