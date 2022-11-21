package p168r4;

import android.os.Bundle;
/* renamed from: r4.tc2 */
/* loaded from: classes2.dex */
public final class tc2 implements dg2<Bundle> {

    /* renamed from: a */
    public final String f31762a;

    /* renamed from: b */
    public final String f31763b;

    /* renamed from: c */
    public final Bundle f31764c;

    public /* synthetic */ tc2(String str, String str2, Bundle bundle, uc2 uc2Var) {
        this.f31762a = str;
        this.f31763b = str2;
        this.f31764c = bundle;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("consent_string", this.f31762a);
        bundle2.putString("fc_consent", this.f31763b);
        bundle2.putBundle("iab_consent_info", this.f31764c);
    }
}
