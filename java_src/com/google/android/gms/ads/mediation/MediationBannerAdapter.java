package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import p041d3.InterfaceC3300e;
import p041d3.InterfaceC3301f;
import p041d3.InterfaceC3304i;
import p184t2.C6710g;
@Deprecated
/* loaded from: classes.dex */
public interface MediationBannerAdapter extends InterfaceC3301f {
    @RecentlyNonNull
    View getBannerView();

    @Override // p041d3.InterfaceC3301f, com.google.android.gms.ads.mediation.MediationNativeAdapter, com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    /* synthetic */ void onDestroy();

    @Override // p041d3.InterfaceC3301f, com.google.android.gms.ads.mediation.MediationNativeAdapter, com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    /* synthetic */ void onPause();

    @Override // p041d3.InterfaceC3301f, com.google.android.gms.ads.mediation.MediationNativeAdapter, com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    /* synthetic */ void onResume();

    void requestBannerAd(@RecentlyNonNull Context context, @RecentlyNonNull InterfaceC3304i interfaceC3304i, @RecentlyNonNull Bundle bundle, @RecentlyNonNull C6710g c6710g, @RecentlyNonNull InterfaceC3300e interfaceC3300e, Bundle bundle2);
}
