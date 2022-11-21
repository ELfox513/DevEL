package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.common.annotation.KeepName;
import p024c2.C1037c;
import p024c2.EnumC1035a;
import p040d2.C3283a;
import p040d2.InterfaceC3285c;
import p040d2.InterfaceC3286d;
import p049e2.C3362c;
import p049e2.C3363d;
import p049e2.C3364e;
import p050e3.C3367c;
import p168r4.cm0;
@KeepName
/* loaded from: classes.dex */
public final class CustomEventAdapter implements MediationBannerAdapter<C3367c, C3362c>, MediationInterstitialAdapter<C3367c, C3362c> {

    /* renamed from: a */
    public View f7614a;

    /* renamed from: b */
    public CustomEventBanner f7615b;

    /* renamed from: c */
    public CustomEventInterstitial f7616c;

    @Override // com.google.ads.mediation.MediationBannerAdapter, p040d2.InterfaceC3284b
    @RecentlyNonNull
    public Class<C3367c> getAdditionalParametersType() {
        return C3367c.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    @RecentlyNonNull
    public View getBannerView() {
        return this.f7614a;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter, p040d2.InterfaceC3284b
    @RecentlyNonNull
    public Class<C3362c> getServerParametersType() {
        return C3362c.class;
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        this.f7616c.showInterstitial();
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter, p040d2.InterfaceC3284b
    public void destroy() {
        CustomEventBanner customEventBanner = this.f7615b;
        if (customEventBanner != null) {
            customEventBanner.destroy();
        }
        CustomEventInterstitial customEventInterstitial = this.f7616c;
        if (customEventInterstitial != null) {
            customEventInterstitial.destroy();
        }
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(@RecentlyNonNull InterfaceC3285c interfaceC3285c, @RecentlyNonNull Activity activity, @RecentlyNonNull C3362c c3362c, @RecentlyNonNull C1037c c1037c, @RecentlyNonNull C3283a c3283a, @RecentlyNonNull C3367c c3367c) {
        CustomEventBanner customEventBanner = (CustomEventBanner) m23104a(c3362c.f15728b);
        this.f7615b = customEventBanner;
        if (customEventBanner == null) {
            interfaceC3285c.mo9412b(this, EnumC1035a.INTERNAL_ERROR);
            return;
        }
        this.f7615b.requestBannerAd(new C3363d(this, interfaceC3285c), activity, c3362c.f15727a, c3362c.f15729c, c1037c, c3283a, c3367c == null ? null : c3367c.m19039a(c3362c.f15727a));
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(@RecentlyNonNull InterfaceC3286d interfaceC3286d, @RecentlyNonNull Activity activity, @RecentlyNonNull C3362c c3362c, @RecentlyNonNull C3283a c3283a, @RecentlyNonNull C3367c c3367c) {
        CustomEventInterstitial customEventInterstitial = (CustomEventInterstitial) m23104a(c3362c.f15728b);
        this.f7616c = customEventInterstitial;
        if (customEventInterstitial == null) {
            interfaceC3286d.mo9413a(this, EnumC1035a.INTERNAL_ERROR);
            return;
        }
        this.f7616c.requestInterstitialAd(new C3364e(this, this, interfaceC3286d), activity, c3362c.f15727a, c3362c.f15729c, c3283a, c3367c == null ? null : c3367c.m19039a(c3362c.f15727a));
    }

    /* renamed from: a */
    public static <T> T m23104a(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(message).length());
            sb.append("Could not instantiate custom event adapter: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            cm0.m12437f(sb.toString());
            return null;
        }
    }
}
