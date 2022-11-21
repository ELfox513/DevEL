package com.google.ads.mediation;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;
import p040d2.AbstractC3287e;
import p040d2.C3283a;
import p040d2.InterfaceC3284b;
import p040d2.InterfaceC3286d;
import p040d2.InterfaceC3290f;
@Deprecated
/* loaded from: classes.dex */
public interface MediationInterstitialAdapter<ADDITIONAL_PARAMETERS extends InterfaceC3290f, SERVER_PARAMETERS extends AbstractC3287e> extends InterfaceC3284b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    @Override // p040d2.InterfaceC3284b
    /* synthetic */ void destroy();

    @Override // p040d2.InterfaceC3284b
    @RecentlyNonNull
    /* synthetic */ Class<ADDITIONAL_PARAMETERS> getAdditionalParametersType();

    @Override // p040d2.InterfaceC3284b
    @RecentlyNonNull
    /* synthetic */ Class<SERVER_PARAMETERS> getServerParametersType();

    void requestInterstitialAd(@RecentlyNonNull InterfaceC3286d interfaceC3286d, @RecentlyNonNull Activity activity, @RecentlyNonNull SERVER_PARAMETERS server_parameters, @RecentlyNonNull C3283a c3283a, @RecentlyNonNull ADDITIONAL_PARAMETERS additional_parameters);

    void showInterstitial();
}
