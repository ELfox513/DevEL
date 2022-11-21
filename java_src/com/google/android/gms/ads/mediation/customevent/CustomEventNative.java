package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import p041d3.InterfaceC3314s;
import p050e3.InterfaceC3365a;
import p050e3.InterfaceC3369e;
/* loaded from: classes.dex */
public interface CustomEventNative extends InterfaceC3365a {
    /* synthetic */ void onDestroy();

    /* synthetic */ void onPause();

    /* synthetic */ void onResume();

    void requestNativeAd(@RecentlyNonNull Context context, @RecentlyNonNull InterfaceC3369e interfaceC3369e, String str, @RecentlyNonNull InterfaceC3314s interfaceC3314s, Bundle bundle);
}
