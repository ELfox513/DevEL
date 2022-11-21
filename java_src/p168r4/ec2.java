package p168r4;

import android.os.Bundle;
/* renamed from: r4.ec2 */
/* loaded from: classes2.dex */
public final class ec2 implements dg2<Bundle> {

    /* renamed from: a */
    public final double f22940a;

    /* renamed from: b */
    public final boolean f22941b;

    public ec2(double d, boolean z) {
        this.f22940a = d;
        this.f22941b = z;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle m6400a = up2.m6400a(bundle2, "device");
        bundle2.putBundle("device", m6400a);
        Bundle m6400a2 = up2.m6400a(m6400a, "battery");
        m6400a.putBundle("battery", m6400a2);
        m6400a2.putBoolean("is_charging", this.f22941b);
        m6400a2.putDouble("battery_level", this.f22940a);
    }
}
