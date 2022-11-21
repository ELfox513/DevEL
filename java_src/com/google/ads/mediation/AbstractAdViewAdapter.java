package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.internal.ads.zzcoi;
import java.util.Date;
import java.util.Set;
import p025c3.AbstractC1038a;
import p040d2.C3292h;
import p040d2.C3293i;
import p040d2.C3295k;
import p041d3.C3319x;
import p041d3.InterfaceC3300e;
import p041d3.InterfaceC3304i;
import p041d3.InterfaceC3309n;
import p041d3.InterfaceC3311p;
import p041d3.InterfaceC3314s;
import p041d3.InterfaceC3316u;
import p041d3.InterfaceC3320y;
import p168r4.C6479yu;
import p168r4.InterfaceC6000lx;
import p168r4.vl0;
import p184t2.C6706e;
import p184t2.C6708f;
import p184t2.C6710g;
import p184t2.C6712i;
/* loaded from: classes.dex */
public abstract class AbstractAdViewAdapter implements com.google.android.gms.ads.mediation.MediationBannerAdapter, MediationNativeAdapter, InterfaceC3316u, zzcoi, InterfaceC3320y {
    @RecentlyNonNull
    public static final String AD_UNIT_ID_PARAMETER = "pubid";
    private C6706e adLoader;
    @RecentlyNonNull
    public C6712i mAdView;
    @RecentlyNonNull
    public AbstractC1038a mInterstitialAd;

    @RecentlyNonNull
    public abstract Bundle buildExtrasBundle(@RecentlyNonNull Bundle bundle, @RecentlyNonNull Bundle bundle2);

    @RecentlyNonNull
    public String getAdUnitId(@RecentlyNonNull Bundle bundle) {
        return bundle.getString(AD_UNIT_ID_PARAMETER);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    @RecentlyNonNull
    public View getBannerView() {
        return this.mAdView;
    }

    public AbstractC1038a getInterstitialAd() {
        return this.mInterstitialAd;
    }

    public C6706e.C6707a newAdLoader(Context context, String str) {
        return new C6706e.C6707a(context, str);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, p041d3.InterfaceC3301f, com.google.android.gms.ads.mediation.MediationNativeAdapter, com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void onDestroy() {
        C6712i c6712i = this.mAdView;
        if (c6712i != null) {
            c6712i.m3567a();
            this.mAdView = null;
        }
        if (this.mInterstitialAd != null) {
            this.mInterstitialAd = null;
        }
        if (this.adLoader != null) {
            this.adLoader = null;
        }
    }

    @Override // p041d3.InterfaceC3316u
    public void onImmersiveModeUpdated(boolean z) {
        AbstractC1038a abstractC1038a = this.mInterstitialAd;
        if (abstractC1038a != null) {
            abstractC1038a.mo12205c(z);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, p041d3.InterfaceC3301f, com.google.android.gms.ads.mediation.MediationNativeAdapter, com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void onPause() {
        C6712i c6712i = this.mAdView;
        if (c6712i != null) {
            c6712i.m3565c();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, p041d3.InterfaceC3301f, com.google.android.gms.ads.mediation.MediationNativeAdapter, com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void onResume() {
        C6712i c6712i = this.mAdView;
        if (c6712i != null) {
            c6712i.m3564d();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        AbstractC1038a abstractC1038a = this.mInterstitialAd;
        if (abstractC1038a != null) {
            abstractC1038a.mo12204d(null);
        }
    }

    public C6708f buildAdRequest(Context context, InterfaceC3300e interfaceC3300e, Bundle bundle, Bundle bundle2) {
        C6708f.C6709a c6709a = new C6708f.C6709a();
        Date mo5777f = interfaceC3300e.mo5777f();
        if (mo5777f != null) {
            c6709a.m3589f(mo5777f);
        }
        int mo5773k = interfaceC3300e.mo5773k();
        if (mo5773k != 0) {
            c6709a.m3588g(mo5773k);
        }
        Set<String> mo5775h = interfaceC3300e.mo5775h();
        if (mo5775h != null) {
            for (String str : mo5775h) {
                c6709a.m3594a(str);
            }
        }
        Location mo5774j = interfaceC3300e.mo5774j();
        if (mo5774j != null) {
            c6709a.m3591d(mo5774j);
        }
        if (interfaceC3300e.mo5776g()) {
            C6479yu.m4568a();
            c6709a.m3590e(vl0.m6110r(context));
        }
        if (interfaceC3300e.mo5779c() != -1) {
            boolean z = true;
            if (interfaceC3300e.mo5779c() != 1) {
                z = false;
            }
            c6709a.m3587h(z);
        }
        c6709a.m3586i(interfaceC3300e.mo5778e());
        c6709a.m3593b(AdMobAdapter.class, buildExtrasBundle(bundle, bundle2));
        return c6709a.m3592c();
    }

    @Override // com.google.android.gms.internal.ads.zzcoi
    @RecentlyNonNull
    public Bundle getInterstitialAdapterInfo() {
        C3319x c3319x = new C3319x();
        c3319x.m19153a(1);
        return c3319x.m19152b();
    }

    @Override // p041d3.InterfaceC3320y
    public InterfaceC6000lx getVideoController() {
        C6712i c6712i = this.mAdView;
        if (c6712i != null) {
            return c6712i.m3570e().m3546c();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(@RecentlyNonNull Context context, @RecentlyNonNull InterfaceC3304i interfaceC3304i, @RecentlyNonNull Bundle bundle, @RecentlyNonNull C6710g c6710g, @RecentlyNonNull InterfaceC3300e interfaceC3300e, @RecentlyNonNull Bundle bundle2) {
        C6712i c6712i = new C6712i(context);
        this.mAdView = c6712i;
        c6712i.setAdSize(new C6710g(c6710g.m3583c(), c6710g.m3585a()));
        this.mAdView.setAdUnitId(getAdUnitId(bundle));
        this.mAdView.setAdListener(new C3292h(this, interfaceC3304i));
        this.mAdView.m3566b(buildAdRequest(context, interfaceC3300e, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(@RecentlyNonNull Context context, @RecentlyNonNull InterfaceC3311p interfaceC3311p, @RecentlyNonNull Bundle bundle, @RecentlyNonNull InterfaceC3314s interfaceC3314s, @RecentlyNonNull Bundle bundle2) {
        C3295k c3295k;
        C3295k c3295k2 = new C3295k(this, interfaceC3311p);
        C6706e.C6707a m3598d = newAdLoader(context, bundle.getString(AD_UNIT_ID_PARAMETER)).m3598d(c3295k2);
        m3598d.m3596f(interfaceC3314s.mo10689i());
        m3598d.m3597e(interfaceC3314s.mo10691b());
        if (interfaceC3314s.mo10690d()) {
            m3598d.m3599c(c3295k2);
        }
        if (interfaceC3314s.zza()) {
            for (String str : interfaceC3314s.mo10692a().keySet()) {
                if (true != interfaceC3314s.mo10692a().get(str).booleanValue()) {
                    c3295k = null;
                } else {
                    c3295k = c3295k2;
                }
                m3598d.m3600b(str, c3295k2, c3295k);
            }
        }
        C6706e m3601a = m3598d.m3601a();
        this.adLoader = m3601a;
        m3601a.m3603a(buildAdRequest(context, interfaceC3314s, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(@RecentlyNonNull Context context, @RecentlyNonNull InterfaceC3309n interfaceC3309n, @RecentlyNonNull Bundle bundle, @RecentlyNonNull InterfaceC3300e interfaceC3300e, @RecentlyNonNull Bundle bundle2) {
        AbstractC1038a.m24782a(context, getAdUnitId(bundle), buildAdRequest(context, interfaceC3300e, bundle2, bundle), new C3293i(this, interfaceC3309n));
    }
}
