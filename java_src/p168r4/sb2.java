package p168r4;

import android.os.Bundle;
import android.text.TextUtils;
/* renamed from: r4.sb2 */
/* loaded from: classes2.dex */
public final class sb2 implements dg2<Bundle> {

    /* renamed from: a */
    public final String f31300a;

    /* renamed from: b */
    public final int f31301b;

    public sb2(String str, int i) {
        this.f31300a = str;
        this.f31301b = i;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (!TextUtils.isEmpty(this.f31300a) && this.f31301b != -1) {
            Bundle m6400a = up2.m6400a(bundle2, "pii");
            bundle2.putBundle("pii", m6400a);
            m6400a.putString("pvid", this.f31300a);
            m6400a.putInt("pvid_s", this.f31301b);
        }
    }
}
