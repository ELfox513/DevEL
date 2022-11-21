package com.google.ads.mediation;

import android.app.Activity;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import p024c2.C1037c;
import p040d2.AbstractC3287e;
import p040d2.C3283a;
import p040d2.InterfaceC3284b;
import p040d2.InterfaceC3285c;
import p040d2.InterfaceC3290f;
@Deprecated
/* loaded from: classes.dex */
public interface MediationBannerAdapter<ADDITIONAL_PARAMETERS extends InterfaceC3290f, SERVER_PARAMETERS extends AbstractC3287e> extends InterfaceC3284b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    @Override // p040d2.InterfaceC3284b
    /* synthetic */ void destroy();

    @Override // p040d2.InterfaceC3284b
    @RecentlyNonNull
    /* synthetic */ Class<ADDITIONAL_PARAMETERS> getAdditionalParametersType();

    @RecentlyNonNull
    View getBannerView();

    @Override // p040d2.InterfaceC3284b
    @RecentlyNonNull
    /* synthetic */ Class<SERVER_PARAMETERS> getServerParametersType();

    void requestBannerAd(@RecentlyNonNull InterfaceC3285c interfaceC3285c, @RecentlyNonNull Activity activity, @RecentlyNonNull SERVER_PARAMETERS server_parameters, @RecentlyNonNull C1037c c1037c, @RecentlyNonNull C3283a c3283a, @RecentlyNonNull ADDITIONAL_PARAMETERS additional_parameters);
}
