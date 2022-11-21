package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import p041d3.InterfaceC3301f;
import p041d3.InterfaceC3311p;
import p041d3.InterfaceC3314s;
@Deprecated
/* loaded from: classes.dex */
public interface MediationNativeAdapter extends InterfaceC3301f {
    @Override // com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    /* synthetic */ void onDestroy();

    @Override // com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    /* synthetic */ void onPause();

    @Override // com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    /* synthetic */ void onResume();

    void requestNativeAd(@RecentlyNonNull Context context, @RecentlyNonNull InterfaceC3311p interfaceC3311p, @RecentlyNonNull Bundle bundle, @RecentlyNonNull InterfaceC3314s interfaceC3314s, Bundle bundle2);
}
