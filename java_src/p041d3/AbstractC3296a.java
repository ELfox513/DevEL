package p041d3;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import java.util.List;
import p184t2.C6702a;
/* renamed from: d3.a */
/* loaded from: classes.dex */
public abstract class AbstractC3296a {
    @RecentlyNonNull
    public abstract C3318w getSDKVersionInfo();

    @RecentlyNonNull
    public abstract C3318w getVersionInfo();

    public abstract void initialize(@RecentlyNonNull Context context, @RecentlyNonNull InterfaceC3297b interfaceC3297b, @RecentlyNonNull List<C3305j> list);

    public void loadBannerAd(@RecentlyNonNull C3303h c3303h, @RecentlyNonNull InterfaceC3299d<InterfaceC3302g, Object> interfaceC3299d) {
        interfaceC3299d.mo5392a(new C6702a(7, getClass().getSimpleName().concat(" does not support banner ads."), "com.google.android.gms.ads"));
    }

    public void loadInterscrollerAd(@RecentlyNonNull C3303h c3303h, @RecentlyNonNull InterfaceC3299d<InterfaceC3306k, Object> interfaceC3299d) {
        interfaceC3299d.mo5392a(new C6702a(7, getClass().getSimpleName().concat(" does not support interscroller ads."), "com.google.android.gms.ads"));
    }

    public void loadInterstitialAd(@RecentlyNonNull C3308m c3308m, @RecentlyNonNull InterfaceC3299d<InterfaceC3307l, Object> interfaceC3299d) {
        interfaceC3299d.mo5392a(new C6702a(7, getClass().getSimpleName().concat(" does not support interstitial ads."), "com.google.android.gms.ads"));
    }

    public void loadNativeAd(@RecentlyNonNull C3310o c3310o, @RecentlyNonNull InterfaceC3299d<AbstractC3317v, Object> interfaceC3299d) {
        interfaceC3299d.mo5392a(new C6702a(7, getClass().getSimpleName().concat(" does not support native ads."), "com.google.android.gms.ads"));
    }

    public void loadRewardedAd(@RecentlyNonNull C3313r c3313r, @RecentlyNonNull InterfaceC3299d<InterfaceC3312q, Object> interfaceC3299d) {
        interfaceC3299d.mo5392a(new C6702a(7, getClass().getSimpleName().concat(" does not support rewarded ads."), "com.google.android.gms.ads"));
    }

    public void loadRewardedInterstitialAd(@RecentlyNonNull C3313r c3313r, @RecentlyNonNull InterfaceC3299d<InterfaceC3312q, Object> interfaceC3299d) {
        interfaceC3299d.mo5392a(new C6702a(7, getClass().getSimpleName().concat(" does not support rewarded interstitial ads."), "com.google.android.gms.ads"));
    }
}
