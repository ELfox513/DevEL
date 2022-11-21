package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import p041d3.InterfaceC3300e;
import p041d3.InterfaceC3301f;
import p041d3.InterfaceC3309n;
@Deprecated
/* loaded from: classes.dex */
public interface MediationInterstitialAdapter extends InterfaceC3301f {
    @Override // 
    /* synthetic */ void onDestroy();

    @Override // 
    /* synthetic */ void onPause();

    @Override // 
    /* synthetic */ void onResume();

    void requestInterstitialAd(@RecentlyNonNull Context context, @RecentlyNonNull InterfaceC3309n interfaceC3309n, @RecentlyNonNull Bundle bundle, @RecentlyNonNull InterfaceC3300e interfaceC3300e, Bundle bundle2);

    void showInterstitial();
}
