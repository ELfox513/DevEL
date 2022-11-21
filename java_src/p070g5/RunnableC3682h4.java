package p070g5;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import net.bytebuddy.description.type.TypeDescription;
import p017b4.C0553a;
import p018b5.InterfaceC0879t0;
/* renamed from: g5.h4 */
/* loaded from: classes2.dex */
public final class RunnableC3682h4 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC0879t0 f16581a;

    /* renamed from: b */
    public final /* synthetic */ ServiceConnection f16582b;

    /* renamed from: d */
    public final /* synthetic */ ServiceConnectionC3694i4 f16583d;

    public RunnableC3682h4(ServiceConnectionC3694i4 serviceConnectionC3694i4, InterfaceC0879t0 interfaceC0879t0, ServiceConnection serviceConnection) {
        this.f16583d = serviceConnectionC3694i4;
        this.f16581a = interfaceC0879t0;
        this.f16582b = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        String str2;
        ServiceConnectionC3694i4 serviceConnectionC3694i4 = this.f16583d;
        C3706j4 c3706j4 = serviceConnectionC3694i4.f16611b;
        str = serviceConnectionC3694i4.f16610a;
        InterfaceC0879t0 interfaceC0879t0 = this.f16581a;
        ServiceConnection serviceConnection = this.f16582b;
        c3706j4.f16653a.mo17855P().mo17839c();
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        Bundle bundle2 = null;
        try {
            Bundle mo25242C0 = interfaceC0879t0.mo25242C0(bundle);
            if (mo25242C0 == null) {
                c3706j4.f16653a.mo17858F().m18018m().m18042a("Install Referrer Service returned a null response");
            } else {
                bundle2 = mo25242C0;
            }
        } catch (Exception e) {
            c3706j4.f16653a.mo17858F().m18018m().m18041b("Exception occurred while retrieving the Install Referrer", e.getMessage());
        }
        c3706j4.f16653a.mo17855P().mo17839c();
        C3611b5.m18519o();
        if (bundle2 != null) {
            long j = bundle2.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                c3706j4.f16653a.mo17858F().m18013r().m18042a("Service response is missing Install Referrer install timestamp");
            } else {
                String string = bundle2.getString("install_referrer");
                if (string != null && !string.isEmpty()) {
                    c3706j4.f16653a.mo17858F().m18014q().m18041b("InstallReferrer API result", string);
                    C3700ia m18538K = c3706j4.f16653a.m18538K();
                    if (string.length() != 0) {
                        str2 = TypeDescription.Generic.OfWildcardType.SYMBOL.concat(string);
                    } else {
                        str2 = new String(TypeDescription.Generic.OfWildcardType.SYMBOL);
                    }
                    Bundle m18154t0 = m18538K.m18154t0(Uri.parse(str2));
                    if (m18154t0 == null) {
                        c3706j4.f16653a.mo17858F().m18018m().m18042a("No campaign params defined in Install Referrer result");
                    } else {
                        String string2 = m18154t0.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = bundle2.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                c3706j4.f16653a.mo17858F().m18018m().m18042a("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                m18154t0.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == c3706j4.f16653a.m18546A().f16499f.m18548a()) {
                            c3706j4.f16653a.mo17858F().m18014q().m18042a("Logging Install Referrer campaign from module while it may have already been logged.");
                        }
                        if (c3706j4.f16653a.m18524j()) {
                            c3706j4.f16653a.m18546A().f16499f.m18547b(j);
                            c3706j4.f16653a.mo17858F().m18014q().m18041b("Logging Install Referrer campaign from gmscore with ", "referrer API v2");
                            m18154t0.putString("_cis", "referrer API v2");
                            c3706j4.f16653a.m18543D().m18217o("auto", "_cmp", m18154t0, str);
                        }
                    }
                } else {
                    c3706j4.f16653a.mo17858F().m18018m().m18042a("No referrer defined in Install Referrer response");
                }
            }
        }
        C0553a.m26188b().m26187c(c3706j4.f16653a.mo17856O(), serviceConnection);
    }
}
