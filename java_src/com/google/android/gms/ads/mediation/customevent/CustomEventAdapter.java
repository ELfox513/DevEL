package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.common.annotation.KeepName;
import p041d3.InterfaceC3300e;
import p041d3.InterfaceC3304i;
import p041d3.InterfaceC3309n;
import p041d3.InterfaceC3311p;
import p041d3.InterfaceC3314s;
import p050e3.C3370f;
import p050e3.C3371g;
import p050e3.C3372h;
import p168r4.cm0;
import p184t2.C6702a;
import p184t2.C6710g;
@KeepName
/* loaded from: classes.dex */
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {

    /* renamed from: e */
    public static final C6702a f7646e = new C6702a(0, "Could not instantiate custom event adapter", "com.google.android.gms.ads");

    /* renamed from: a */
    public View f7647a;

    /* renamed from: b */
    public CustomEventBanner f7648b;

    /* renamed from: c */
    public CustomEventInterstitial f7649c;

    /* renamed from: d */
    public CustomEventNative f7650d;

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    @RecentlyNonNull
    public View getBannerView() {
        return this.f7647a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        CustomEventInterstitial customEventInterstitial = this.f7649c;
        if (customEventInterstitial != null) {
            customEventInterstitial.showInterstitial();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, p041d3.InterfaceC3301f, com.google.android.gms.ads.mediation.MediationNativeAdapter, com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void onDestroy() {
        CustomEventBanner customEventBanner = this.f7648b;
        if (customEventBanner != null) {
            customEventBanner.onDestroy();
        }
        CustomEventInterstitial customEventInterstitial = this.f7649c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onDestroy();
        }
        CustomEventNative customEventNative = this.f7650d;
        if (customEventNative != null) {
            customEventNative.onDestroy();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, p041d3.InterfaceC3301f, com.google.android.gms.ads.mediation.MediationNativeAdapter, com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void onPause() {
        CustomEventBanner customEventBanner = this.f7648b;
        if (customEventBanner != null) {
            customEventBanner.onPause();
        }
        CustomEventInterstitial customEventInterstitial = this.f7649c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onPause();
        }
        CustomEventNative customEventNative = this.f7650d;
        if (customEventNative != null) {
            customEventNative.onPause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, p041d3.InterfaceC3301f, com.google.android.gms.ads.mediation.MediationNativeAdapter, com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void onResume() {
        CustomEventBanner customEventBanner = this.f7648b;
        if (customEventBanner != null) {
            customEventBanner.onResume();
        }
        CustomEventInterstitial customEventInterstitial = this.f7649c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onResume();
        }
        CustomEventNative customEventNative = this.f7650d;
        if (customEventNative != null) {
            customEventNative.onResume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(@RecentlyNonNull Context context, @RecentlyNonNull InterfaceC3304i interfaceC3304i, @RecentlyNonNull Bundle bundle, @RecentlyNonNull C6710g c6710g, @RecentlyNonNull InterfaceC3300e interfaceC3300e, Bundle bundle2) {
        Bundle bundle3;
        CustomEventBanner customEventBanner = (CustomEventBanner) m23096a(CustomEventBanner.class, bundle.getString("class_name"));
        this.f7648b = customEventBanner;
        if (customEventBanner == null) {
            interfaceC3304i.mo11236i(this, f7646e);
            return;
        }
        if (bundle2 == null) {
            bundle3 = null;
        } else {
            bundle3 = bundle2.getBundle(bundle.getString("class_name"));
        }
        CustomEventBanner customEventBanner2 = this.f7648b;
        customEventBanner2.getClass();
        customEventBanner2.requestBannerAd(context, new C3370f(this, interfaceC3304i), bundle.getString("parameter"), c6710g, interfaceC3300e, bundle3);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(@RecentlyNonNull Context context, @RecentlyNonNull InterfaceC3309n interfaceC3309n, @RecentlyNonNull Bundle bundle, @RecentlyNonNull InterfaceC3300e interfaceC3300e, Bundle bundle2) {
        Bundle bundle3;
        CustomEventInterstitial customEventInterstitial = (CustomEventInterstitial) m23096a(CustomEventInterstitial.class, bundle.getString("class_name"));
        this.f7649c = customEventInterstitial;
        if (customEventInterstitial == null) {
            interfaceC3309n.mo11233l(this, f7646e);
            return;
        }
        if (bundle2 == null) {
            bundle3 = null;
        } else {
            bundle3 = bundle2.getBundle(bundle.getString("class_name"));
        }
        CustomEventInterstitial customEventInterstitial2 = this.f7649c;
        customEventInterstitial2.getClass();
        customEventInterstitial2.requestInterstitialAd(context, new C3371g(this, this, interfaceC3309n), bundle.getString("parameter"), interfaceC3300e, bundle3);
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(@RecentlyNonNull Context context, @RecentlyNonNull InterfaceC3311p interfaceC3311p, @RecentlyNonNull Bundle bundle, @RecentlyNonNull InterfaceC3314s interfaceC3314s, Bundle bundle2) {
        Bundle bundle3;
        CustomEventNative customEventNative = (CustomEventNative) m23096a(CustomEventNative.class, bundle.getString("class_name"));
        this.f7650d = customEventNative;
        if (customEventNative == null) {
            interfaceC3311p.mo11232m(this, f7646e);
            return;
        }
        if (bundle2 == null) {
            bundle3 = null;
        } else {
            bundle3 = bundle2.getBundle(bundle.getString("class_name"));
        }
        CustomEventNative customEventNative2 = this.f7650d;
        customEventNative2.getClass();
        customEventNative2.requestNativeAd(context, new C3372h(this, interfaceC3311p), bundle.getString("parameter"), interfaceC3314s, bundle3);
    }

    /* renamed from: a */
    public static <T> T m23096a(Class<T> cls, String str) {
        str.getClass();
        try {
            return cls.cast(Class.forName(str).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
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
