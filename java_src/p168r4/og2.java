package p168r4;

import android.os.Bundle;
import android.text.TextUtils;
/* renamed from: r4.og2 */
/* loaded from: classes2.dex */
public final class og2 implements dg2<Bundle> {

    /* renamed from: a */
    public final String f28989a;

    /* renamed from: b */
    public final int f28990b;

    /* renamed from: c */
    public final int f28991c;

    /* renamed from: d */
    public final int f28992d;

    /* renamed from: e */
    public final boolean f28993e;

    /* renamed from: f */
    public final int f28994f;

    public og2(String str, int i, int i2, int i3, boolean z, int i4) {
        this.f28989a = str;
        this.f28990b = i;
        this.f28991c = i2;
        this.f28992d = i3;
        this.f28993e = z;
        this.f28994f = i4;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.f28989a;
        boolean z = true;
        up2.m6399b(bundle2, "carrier", str, !TextUtils.isEmpty(str));
        Integer valueOf = Integer.valueOf(this.f28990b);
        if (this.f28990b == -2) {
            z = false;
        }
        up2.m6398c(bundle2, "cnt", valueOf, z);
        bundle2.putInt("gnt", this.f28991c);
        bundle2.putInt("pt", this.f28992d);
        Bundle m6400a = up2.m6400a(bundle2, "device");
        bundle2.putBundle("device", m6400a);
        Bundle m6400a2 = up2.m6400a(m6400a, "network");
        m6400a.putBundle("network", m6400a2);
        m6400a2.putInt("active_network_state", this.f28994f);
        m6400a2.putBoolean("active_network_metered", this.f28993e);
    }
}
