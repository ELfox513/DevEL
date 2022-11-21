package p168r4;

import android.os.Bundle;
import com.prineside.tdi2.Config;
/* renamed from: r4.ed2 */
/* loaded from: classes2.dex */
public final class ed2 implements dg2<Bundle> {

    /* renamed from: a */
    public final String f22948a;

    /* renamed from: b */
    public final boolean f22949b;

    public ed2(String str, boolean z) {
        this.f22948a = str;
        this.f22949b = z;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("gct", this.f22948a);
        if (this.f22949b) {
            bundle2.putString("de", Config.SITE_API_VERSION);
        }
    }
}
