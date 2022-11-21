package p168r4;

import android.os.Bundle;
import android.text.TextUtils;
/* renamed from: r4.mf2 */
/* loaded from: classes2.dex */
public final class mf2 implements dg2<Bundle> {

    /* renamed from: a */
    public final String f27590a;

    public mf2(String str) {
        this.f27590a = str;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (TextUtils.isEmpty(this.f27590a)) {
            return;
        }
        bundle2.putString("query_info", this.f27590a);
    }
}
