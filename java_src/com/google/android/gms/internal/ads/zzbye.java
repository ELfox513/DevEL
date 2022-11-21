package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import p004a3.C0064e;
import p016b3.C0497k2;
import p026c4.C1054o;
import p041d3.InterfaceC3300e;
import p041d3.InterfaceC3309n;
import p136o.C5057c;
import p168r4.cm0;
import p168r4.im0;
import p168r4.q00;
import p168r4.td0;
import p168r4.ud0;
import p235z2.C7601t;
/* loaded from: classes2.dex */
public final class zzbye implements MediationInterstitialAdapter {

    /* renamed from: a */
    public Activity f7830a;

    /* renamed from: b */
    public InterfaceC3309n f7831b;

    /* renamed from: c */
    public Uri f7832c;

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void onDestroy() {
        cm0.m12442a("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void onPause() {
        cm0.m12442a("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void onResume() {
        cm0.m12442a("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, InterfaceC3309n interfaceC3309n, Bundle bundle, InterfaceC3300e interfaceC3300e, Bundle bundle2) {
        this.f7831b = interfaceC3309n;
        if (interfaceC3309n == null) {
            cm0.m12437f("Listener not set for mediation. Returning.");
        } else if (context instanceof Activity) {
            if (C1054o.m24739b() && q00.m8086a(context)) {
                String string = bundle.getString("tab_url");
                if (TextUtils.isEmpty(string)) {
                    cm0.m12437f("The tab_url retrieved from mediation metadata is empty. Bailing out.");
                    this.f7831b.mo11242c(this, 0);
                    return;
                }
                this.f7830a = (Activity) context;
                this.f7832c = Uri.parse(string);
                this.f7831b.mo11231n(this);
                return;
            }
            cm0.m12437f("Default browser does not support custom tabs. Bailing out.");
            this.f7831b.mo11242c(this, 0);
        } else {
            cm0.m12437f("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.f7831b.mo11242c(this, 0);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        C5057c m14739a = new C5057c.C5058a().m14739a();
        m14739a.f19270a.setData(this.f7832c);
        C0497k2.f1630i.post(new ud0(this, new AdOverlayInfoParcel(new C0064e(m14739a.f19270a, null), null, new td0(this), null, new im0(0, 0, false, false, false), null, null)));
        C7601t.m935h().m9059h();
    }
}
