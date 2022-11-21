package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import p041d3.InterfaceC3300e;
import p050e3.InterfaceC3365a;
import p050e3.InterfaceC3368d;
/* loaded from: classes.dex */
public interface CustomEventInterstitial extends InterfaceC3365a {
    /* synthetic */ void onDestroy();

    /* synthetic */ void onPause();

    /* synthetic */ void onResume();

    void requestInterstitialAd(@RecentlyNonNull Context context, @RecentlyNonNull InterfaceC3368d interfaceC3368d, String str, @RecentlyNonNull InterfaceC3300e interfaceC3300e, Bundle bundle);

    void showInterstitial();
}
