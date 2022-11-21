package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import p041d3.InterfaceC3300e;
import p050e3.InterfaceC3365a;
import p050e3.InterfaceC3366b;
import p184t2.C6710g;
/* loaded from: classes.dex */
public interface CustomEventBanner extends InterfaceC3365a {
    /* synthetic */ void onDestroy();

    /* synthetic */ void onPause();

    /* synthetic */ void onResume();

    void requestBannerAd(@RecentlyNonNull Context context, @RecentlyNonNull InterfaceC3366b interfaceC3366b, String str, @RecentlyNonNull C6710g c6710g, @RecentlyNonNull InterfaceC3300e interfaceC3300e, Bundle bundle);
}
