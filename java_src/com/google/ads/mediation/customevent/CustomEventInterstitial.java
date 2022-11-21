package com.google.ads.mediation.customevent;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;
import p040d2.C3283a;
import p049e2.InterfaceC3361b;
@Deprecated
/* loaded from: classes.dex */
public interface CustomEventInterstitial {
    /* synthetic */ void destroy();

    void requestInterstitialAd(@RecentlyNonNull InterfaceC3361b interfaceC3361b, @RecentlyNonNull Activity activity, @RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull C3283a c3283a, @RecentlyNonNull Object obj);

    void showInterstitial();
}
