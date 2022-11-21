package p070g5;

import p042d4.C3324d;
import p042d4.C3325e;
/* renamed from: g5.j4 */
/* loaded from: classes2.dex */
public final class C3706j4 {

    /* renamed from: a */
    public final C3611b5 f16653a;

    public C3706j4(C3616ba c3616ba) {
        this.f16653a = c3616ba.m18480b0();
    }

    /* renamed from: a */
    public final boolean m18134a() {
        try {
            C3324d m19140a = C3325e.m19140a(this.f16653a.mo17856O());
            if (m19140a != null) {
                return m19140a.m19143f("com.android.vending", 128).versionCode >= 80837300;
            }
            this.f16653a.mo17858F().m18014q().m18042a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e) {
            this.f16653a.mo17858F().m18014q().m18041b("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }
}
