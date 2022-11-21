package p168r4;

import android.os.Bundle;
/* renamed from: r4.ve2 */
/* loaded from: classes2.dex */
public final class ve2 implements dg2<Bundle> {

    /* renamed from: a */
    public final String f32701a;

    /* renamed from: b */
    public final String f32702b;

    public ve2(String str, String str2) {
        this.f32701a = str;
        this.f32702b = str2;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31031h5)).booleanValue()) {
            bundle2.putString("request_id", this.f32702b);
        } else {
            bundle2.putString("request_id", this.f32701a);
        }
    }
}
