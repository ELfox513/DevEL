package p168r4;

import android.os.Bundle;
/* renamed from: r4.ud2 */
/* loaded from: classes2.dex */
public final class ud2 implements dg2<Bundle> {

    /* renamed from: a */
    public final Bundle f32250a;

    public ud2(Bundle bundle) {
        this.f32250a = bundle;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle m6400a = up2.m6400a(bundle2, "device");
        m6400a.putBundle("android_mem_info", this.f32250a);
        bundle2.putBundle("device", m6400a);
    }
}
