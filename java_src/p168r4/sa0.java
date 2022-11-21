package p168r4;

import android.net.Uri;
/* renamed from: r4.sa0 */
/* loaded from: classes2.dex */
public final class sa0 extends hm0 {

    /* renamed from: b */
    public final ra0 f31291b;

    public sa0(ra0 ra0Var, String str) {
        super(str);
        this.f31291b = ra0Var;
    }

    @Override // p168r4.hm0, p168r4.ul0
    /* renamed from: q */
    public final void mo6488q(String str) {
        String str2;
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            str2 = "LeibnizHttpUrlPinger pinging URL: ".concat(valueOf);
        } else {
            str2 = new String("LeibnizHttpUrlPinger pinging URL: ");
        }
        cm0.m12442a(str2);
        if ("oda".equals(Uri.parse(str).getScheme())) {
            return;
        }
        cm0.m12442a("URL does not match oda:// scheme, falling back on HttpUrlPinger");
        super.mo6488q(str);
    }
}
