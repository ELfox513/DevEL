package p168r4;

import android.os.Bundle;
/* renamed from: r4.qf2 */
/* loaded from: classes2.dex */
public final class qf2 implements dg2<Bundle> {

    /* renamed from: a */
    public final String f30102a;

    /* renamed from: b */
    public final String f30103b;

    /* renamed from: c */
    public final String f30104c;

    /* renamed from: d */
    public final String f30105d;

    /* renamed from: e */
    public final Long f30106e;

    public qf2(String str, String str2, String str3, String str4, Long l) {
        this.f30102a = str;
        this.f30103b = str2;
        this.f30104c = str3;
        this.f30105d = str4;
        this.f30106e = l;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        up2.m6396e(bundle2, "gmp_app_id", this.f30102a);
        up2.m6396e(bundle2, "fbs_aiid", this.f30103b);
        up2.m6396e(bundle2, "fbs_aeid", this.f30104c);
        up2.m6396e(bundle2, "apm_id_origin", this.f30105d);
        Long l = this.f30106e;
        if (l != null) {
            bundle2.putLong("sai_timeout", l.longValue());
        }
    }
}
