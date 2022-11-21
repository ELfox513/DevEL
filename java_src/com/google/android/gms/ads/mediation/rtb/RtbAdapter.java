package com.google.android.gms.ads.mediation.rtb;

import androidx.annotation.RecentlyNonNull;
import p041d3.AbstractC3296a;
import p041d3.AbstractC3317v;
import p041d3.C3303h;
import p041d3.C3308m;
import p041d3.C3310o;
import p041d3.C3313r;
import p041d3.InterfaceC3299d;
import p041d3.InterfaceC3302g;
import p041d3.InterfaceC3306k;
import p041d3.InterfaceC3307l;
import p041d3.InterfaceC3312q;
import p059f3.C3510a;
import p059f3.InterfaceC3511b;
import p184t2.C6702a;
/* loaded from: classes.dex */
public abstract class RtbAdapter extends AbstractC3296a {
    public abstract void collectSignals(@RecentlyNonNull C3510a c3510a, @RecentlyNonNull InterfaceC3511b interfaceC3511b);

    public void loadRtbBannerAd(@RecentlyNonNull C3303h c3303h, @RecentlyNonNull InterfaceC3299d<InterfaceC3302g, Object> interfaceC3299d) {
        loadBannerAd(c3303h, interfaceC3299d);
    }

    public void loadRtbInterstitialAd(@RecentlyNonNull C3308m c3308m, @RecentlyNonNull InterfaceC3299d<InterfaceC3307l, Object> interfaceC3299d) {
        loadInterstitialAd(c3308m, interfaceC3299d);
    }

    public void loadRtbNativeAd(@RecentlyNonNull C3310o c3310o, @RecentlyNonNull InterfaceC3299d<AbstractC3317v, Object> interfaceC3299d) {
        loadNativeAd(c3310o, interfaceC3299d);
    }

    public void loadRtbRewardedAd(@RecentlyNonNull C3313r c3313r, @RecentlyNonNull InterfaceC3299d<InterfaceC3312q, Object> interfaceC3299d) {
        loadRewardedAd(c3313r, interfaceC3299d);
    }

    public void loadRtbRewardedInterstitialAd(@RecentlyNonNull C3313r c3313r, @RecentlyNonNull InterfaceC3299d<InterfaceC3312q, Object> interfaceC3299d) {
        loadRewardedInterstitialAd(c3313r, interfaceC3299d);
    }

    public void loadRtbInterscrollerAd(@RecentlyNonNull C3303h c3303h, @RecentlyNonNull InterfaceC3299d<InterfaceC3306k, Object> interfaceC3299d) {
        interfaceC3299d.mo5392a(new C6702a(7, getClass().getSimpleName().concat(" does not support interscroller ads."), "com.google.android.gms.ads"));
    }
}
