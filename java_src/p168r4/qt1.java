package p168r4;
/* renamed from: r4.qt1 */
/* loaded from: classes2.dex */
public final class qt1 {

    /* renamed from: a */
    public final o60 f30310a;

    public qt1(o60 o60Var) {
        this.f30310a = o60Var;
    }

    /* renamed from: a */
    public final void m7679a() {
        m7661s(new ot1("initialize", null));
    }

    /* renamed from: b */
    public final void m7678b(long j) {
        ot1 ot1Var = new ot1("creation", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "nativeObjectCreated";
        m7661s(ot1Var);
    }

    /* renamed from: c */
    public final void m7677c(long j) {
        ot1 ot1Var = new ot1("creation", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "nativeObjectNotCreated";
        m7661s(ot1Var);
    }

    /* renamed from: d */
    public final void m7676d(long j) {
        ot1 ot1Var = new ot1("interstitial", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "onNativeAdObjectNotAvailable";
        m7661s(ot1Var);
    }

    /* renamed from: e */
    public final void m7675e(long j) {
        ot1 ot1Var = new ot1("interstitial", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "onAdLoaded";
        m7661s(ot1Var);
    }

    /* renamed from: f */
    public final void m7674f(long j, int i) {
        ot1 ot1Var = new ot1("interstitial", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "onAdFailedToLoad";
        ot1Var.f29125d = Integer.valueOf(i);
        m7661s(ot1Var);
    }

    /* renamed from: g */
    public final void m7673g(long j) {
        ot1 ot1Var = new ot1("interstitial", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "onAdOpened";
        m7661s(ot1Var);
    }

    /* renamed from: h */
    public final void m7672h(long j) {
        ot1 ot1Var = new ot1("interstitial", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "onAdClicked";
        this.f30310a.mo8879u(ot1.m8699f(ot1Var));
    }

    /* renamed from: i */
    public final void m7671i(long j) {
        ot1 ot1Var = new ot1("interstitial", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "onAdClosed";
        m7661s(ot1Var);
    }

    /* renamed from: j */
    public final void m7670j(long j) {
        ot1 ot1Var = new ot1("rewarded", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "onNativeAdObjectNotAvailable";
        m7661s(ot1Var);
    }

    /* renamed from: k */
    public final void m7669k(long j) {
        ot1 ot1Var = new ot1("rewarded", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "onRewardedAdLoaded";
        m7661s(ot1Var);
    }

    /* renamed from: l */
    public final void m7668l(long j, int i) {
        ot1 ot1Var = new ot1("rewarded", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "onRewardedAdFailedToLoad";
        ot1Var.f29125d = Integer.valueOf(i);
        m7661s(ot1Var);
    }

    /* renamed from: m */
    public final void m7667m(long j) {
        ot1 ot1Var = new ot1("rewarded", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "onRewardedAdOpened";
        m7661s(ot1Var);
    }

    /* renamed from: n */
    public final void m7666n(long j, int i) {
        ot1 ot1Var = new ot1("rewarded", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "onRewardedAdFailedToShow";
        ot1Var.f29125d = Integer.valueOf(i);
        m7661s(ot1Var);
    }

    /* renamed from: o */
    public final void m7665o(long j) {
        ot1 ot1Var = new ot1("rewarded", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "onRewardedAdClosed";
        m7661s(ot1Var);
    }

    /* renamed from: p */
    public final void m7664p(long j, vh0 vh0Var) {
        ot1 ot1Var = new ot1("rewarded", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "onUserEarnedReward";
        ot1Var.f29126e = vh0Var.mo6150c();
        ot1Var.f29127f = Integer.valueOf(vh0Var.mo6149d());
        m7661s(ot1Var);
    }

    /* renamed from: q */
    public final void m7663q(long j) {
        ot1 ot1Var = new ot1("rewarded", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "onAdImpression";
        m7661s(ot1Var);
    }

    /* renamed from: r */
    public final void m7662r(long j) {
        ot1 ot1Var = new ot1("rewarded", null);
        ot1Var.f29122a = Long.valueOf(j);
        ot1Var.f29124c = "onAdClicked";
        m7661s(ot1Var);
    }

    /* renamed from: s */
    public final void m7661s(ot1 ot1Var) {
        String str;
        String m8699f = ot1.m8699f(ot1Var);
        if (m8699f.length() != 0) {
            str = "Dispatching AFMA event on publisher webview: ".concat(m8699f);
        } else {
            str = new String("Dispatching AFMA event on publisher webview: ");
        }
        cm0.m12438e(str);
        this.f30310a.mo8879u(m8699f);
    }
}
