package p168r4;

import android.os.Bundle;
/* renamed from: r4.qd2 */
/* loaded from: classes2.dex */
public final class qd2 implements dg2<Bundle> {

    /* renamed from: a */
    public final String f30095a;

    /* renamed from: b */
    public final boolean f30096b;

    /* renamed from: c */
    public final boolean f30097c;

    public qd2(String str, boolean z, boolean z2) {
        this.f30095a = str;
        this.f30096b = z;
        this.f30097c = z2;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (!this.f30095a.isEmpty()) {
            bundle2.putString("inspector_extras", this.f30095a);
        }
        bundle2.putInt("test_mode", this.f30096b ? 1 : 0);
        bundle2.putInt("linked_device", this.f30097c ? 1 : 0);
    }
}
