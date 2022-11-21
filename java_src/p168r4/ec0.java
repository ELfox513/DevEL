package p168r4;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.internal.ads.zzcoh;
import com.google.android.gms.internal.ads.zzcoi;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p041d3.AbstractC3296a;
import p041d3.AbstractC3317v;
import p041d3.C3303h;
import p041d3.C3305j;
import p041d3.C3308m;
import p041d3.C3310o;
import p041d3.C3313r;
import p041d3.InterfaceC3301f;
import p041d3.InterfaceC3306k;
import p041d3.InterfaceC3307l;
import p041d3.InterfaceC3312q;
import p041d3.InterfaceC3315t;
import p041d3.InterfaceC3316u;
import p041d3.InterfaceC3320y;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p184t2.C6710g;
import p184t2.C6729x;
import p184t2.EnumC6703b;
import p202v2.InterfaceC6980f;
/* renamed from: r4.ec0 */
/* loaded from: classes2.dex */
public final class ec0 extends hb0 {

    /* renamed from: a */
    public final Object f22929a;

    /* renamed from: b */
    public gc0 f22930b;

    /* renamed from: d */
    public qh0 f22931d;

    /* renamed from: k */
    public InterfaceC3512a f22932k;

    /* renamed from: p */
    public View f22933p;

    /* renamed from: q */
    public InterfaceC3307l f22934q;

    /* renamed from: r */
    public AbstractC3317v f22935r;

    /* renamed from: s */
    public InterfaceC3312q f22936s;

    /* renamed from: t */
    public InterfaceC3306k f22937t;

    /* renamed from: u */
    public final String f22938u = "";

    public ec0(AbstractC3296a abstractC3296a) {
        this.f22929a = abstractC3296a;
    }

    /* renamed from: h7 */
    public static final boolean m11816h7(C6293tt c6293tt) {
        if (c6293tt.f31999q) {
            return true;
        }
        C6479yu.m4568a();
        return vl0.m6117k();
    }

    @Override // p168r4.ib0
    /* renamed from: D0 */
    public final qb0 mo10347D0() {
        return null;
    }

    @Override // p168r4.ib0
    /* renamed from: N2 */
    public final void mo10342N2(InterfaceC3512a interfaceC3512a, C6478yt c6478yt, C6293tt c6293tt, String str, lb0 lb0Var) {
        mo10330f6(interfaceC3512a, c6478yt, c6293tt, str, null, lb0Var);
    }

    @Override // p168r4.ib0
    /* renamed from: O */
    public final boolean mo10341O() {
        return false;
    }

    @Override // p168r4.ib0
    /* renamed from: U5 */
    public final void mo10338U5(C6293tt c6293tt, String str) {
        mo10316q6(c6293tt, str, null);
    }

    @Override // p168r4.ib0
    /* renamed from: Z */
    public final rb0 mo10336Z() {
        return null;
    }

    @Override // p168r4.ib0
    /* renamed from: k0 */
    public final ob0 mo10324k0() {
        InterfaceC3306k interfaceC3306k = this.f22937t;
        if (interfaceC3306k != null) {
            return new fc0(interfaceC3306k);
        }
        return null;
    }

    @Override // p168r4.ib0
    /* renamed from: l5 */
    public final void mo10321l5(InterfaceC3512a interfaceC3512a, C6293tt c6293tt, String str, String str2, lb0 lb0Var, d20 d20Var, List<String> list) {
        RemoteException remoteException;
        Object obj = this.f22929a;
        if (!(obj instanceof MediationNativeAdapter) && !(obj instanceof AbstractC3296a)) {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = AbstractC3296a.class.getCanonicalName();
            String canonicalName3 = this.f22929a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            cm0.m12437f(sb.toString());
            throw new RemoteException();
        }
        cm0.m12442a("Requesting native ad from adapter.");
        Object obj2 = this.f22929a;
        if (obj2 instanceof MediationNativeAdapter) {
            try {
                MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj2;
                List<String> list2 = c6293tt.f31998p;
                HashSet hashSet = list2 != null ? new HashSet(list2) : null;
                long j = c6293tt.f31995b;
                ic0 ic0Var = new ic0(j == -1 ? null : new Date(j), c6293tt.f31997k, hashSet, c6293tt.f32004v, m11816h7(c6293tt), c6293tt.f32000r, d20Var, list, c6293tt.f31987C, c6293tt.f31989E, m11815i7(str, c6293tt));
                Bundle bundle = c6293tt.f32006x;
                Bundle bundle2 = bundle != null ? bundle.getBundle(mediationNativeAdapter.getClass().getName()) : null;
                this.f22930b = new gc0(lb0Var);
                mediationNativeAdapter.requestNativeAd((Context) BinderC3514b.m18740t0(interfaceC3512a), this.f22930b, m11818f7(str, c6293tt, str2), ic0Var, bundle2);
            } finally {
            }
        } else if (obj2 instanceof AbstractC3296a) {
            try {
                ((AbstractC3296a) obj2).loadNativeAd(new C3310o((Context) BinderC3514b.m18740t0(interfaceC3512a), "", m11818f7(str, c6293tt, str2), m11817g7(c6293tt), m11816h7(c6293tt), c6293tt.f32004v, c6293tt.f32000r, c6293tt.f31989E, m11815i7(str, c6293tt), this.f22938u, d20Var), new cc0(this, lb0Var));
            } finally {
            }
        }
    }

    @Override // p168r4.ib0
    /* renamed from: t */
    public final Bundle mo10314t() {
        return new Bundle();
    }

    @Override // p168r4.ib0
    /* renamed from: t1 */
    public final void mo10313t1(InterfaceC3512a interfaceC3512a, C6293tt c6293tt, String str, lb0 lb0Var) {
        mo10311w2(interfaceC3512a, c6293tt, str, null, lb0Var);
    }

    public ec0(InterfaceC3301f interfaceC3301f) {
        this.f22929a = interfaceC3301f;
    }

    /* renamed from: i7 */
    public static final String m11815i7(String str, C6293tt c6293tt) {
        String str2 = c6293tt.f31990F;
        try {
            return new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException unused) {
            return str2;
        }
    }

    @Override // p168r4.ib0
    /* renamed from: D4 */
    public final void mo10346D4(InterfaceC3512a interfaceC3512a) {
        if (this.f22929a instanceof AbstractC3296a) {
            cm0.m12442a("Show rewarded ad from adapter.");
            InterfaceC3312q interfaceC3312q = this.f22936s;
            if (interfaceC3312q != null) {
                interfaceC3312q.m19192a((Context) BinderC3514b.m18740t0(interfaceC3512a));
                return;
            } else {
                cm0.m12440c("Can not show null mediation rewarded ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = AbstractC3296a.class.getCanonicalName();
        String canonicalName2 = this.f22929a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        cm0.m12437f(sb.toString());
        throw new RemoteException();
    }

    @Override // p168r4.ib0
    /* renamed from: F2 */
    public final void mo10345F2(InterfaceC3512a interfaceC3512a, C6293tt c6293tt, String str, lb0 lb0Var) {
        if (this.f22929a instanceof AbstractC3296a) {
            cm0.m12442a("Requesting rewarded interstitial ad from adapter.");
            try {
                ((AbstractC3296a) this.f22929a).loadRewardedInterstitialAd(new C3313r((Context) BinderC3514b.m18740t0(interfaceC3512a), "", m11818f7(str, c6293tt, null), m11817g7(c6293tt), m11816h7(c6293tt), c6293tt.f32004v, c6293tt.f32000r, c6293tt.f31989E, m11815i7(str, c6293tt), ""), new dc0(this, lb0Var));
                return;
            } catch (Exception e) {
                cm0.m12439d("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = AbstractC3296a.class.getCanonicalName();
        String canonicalName2 = this.f22929a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        cm0.m12437f(sb.toString());
        throw new RemoteException();
    }

    @Override // p168r4.ib0
    /* renamed from: I */
    public final rd0 mo10343I() {
        Object obj = this.f22929a;
        if (!(obj instanceof AbstractC3296a)) {
            return null;
        }
        ((AbstractC3296a) obj).getVersionInfo();
        return rd0.m7529X0(null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p168r4.ib0
    /* renamed from: O2 */
    public final void mo10340O2(InterfaceC3512a interfaceC3512a, k70 k70Var, List<q70> list) {
        char c;
        EnumC6703b enumC6703b;
        if (this.f22929a instanceof AbstractC3296a) {
            zb0 zb0Var = new zb0(this, k70Var);
            ArrayList arrayList = new ArrayList();
            for (q70 q70Var : list) {
                String str = q70Var.f30028a;
                switch (str.hashCode()) {
                    case -1396342996:
                        if (str.equals("banner")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1052618729:
                        if (str.equals("native")) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    case -239580146:
                        if (str.equals("rewarded")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case 604727084:
                        if (str.equals("interstitial")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1911491517:
                        if (str.equals("rewarded_interstitial")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                if (c != 0) {
                    if (c != 1) {
                        if (c != 2) {
                            if (c != 3) {
                                if (c != 4) {
                                    enumC6703b = null;
                                } else {
                                    enumC6703b = EnumC6703b.NATIVE;
                                }
                            } else {
                                enumC6703b = EnumC6703b.REWARDED_INTERSTITIAL;
                            }
                        } else {
                            enumC6703b = EnumC6703b.REWARDED;
                        }
                    } else {
                        enumC6703b = EnumC6703b.INTERSTITIAL;
                    }
                } else {
                    enumC6703b = EnumC6703b.BANNER;
                }
                if (enumC6703b != null) {
                    arrayList.add(new C3305j(enumC6703b, q70Var.f30029b));
                }
            }
            ((AbstractC3296a) this.f22929a).initialize((Context) BinderC3514b.m18740t0(interfaceC3512a), zb0Var, arrayList);
            return;
        }
        throw new RemoteException();
    }

    @Override // p168r4.ib0
    /* renamed from: P */
    public final InterfaceC6000lx mo10339P() {
        Object obj = this.f22929a;
        if (obj instanceof InterfaceC3320y) {
            try {
                return ((InterfaceC3320y) obj).getVideoController();
            } catch (Throwable th) {
                cm0.m12439d("", th);
            }
        }
        return null;
    }

    @Override // p168r4.ib0
    /* renamed from: X */
    public final rd0 mo10337X() {
        Object obj = this.f22929a;
        if (!(obj instanceof AbstractC3296a)) {
            return null;
        }
        ((AbstractC3296a) obj).getSDKVersionInfo();
        return rd0.m7529X0(null);
    }

    @Override // p168r4.ib0
    /* renamed from: a2 */
    public final void mo10335a2(InterfaceC3512a interfaceC3512a, C6293tt c6293tt, String str, qh0 qh0Var, String str2) {
        Object obj = this.f22929a;
        if (obj instanceof AbstractC3296a) {
            this.f22932k = interfaceC3512a;
            this.f22931d = qh0Var;
            qh0Var.mo7855M(BinderC3514b.m18741L0(obj));
            return;
        }
        String canonicalName = AbstractC3296a.class.getCanonicalName();
        String canonicalName2 = this.f22929a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        cm0.m12437f(sb.toString());
        throw new RemoteException();
    }

    @Override // p168r4.ib0
    /* renamed from: a7 */
    public final void mo10334a7(InterfaceC3512a interfaceC3512a, C6293tt c6293tt, String str, lb0 lb0Var) {
        if (this.f22929a instanceof AbstractC3296a) {
            cm0.m12442a("Requesting rewarded ad from adapter.");
            try {
                ((AbstractC3296a) this.f22929a).loadRewardedAd(new C3313r((Context) BinderC3514b.m18740t0(interfaceC3512a), "", m11818f7(str, c6293tt, null), m11817g7(c6293tt), m11816h7(c6293tt), c6293tt.f32004v, c6293tt.f32000r, c6293tt.f31989E, m11815i7(str, c6293tt), ""), new dc0(this, lb0Var));
                return;
            } catch (Exception e) {
                cm0.m12439d("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = AbstractC3296a.class.getCanonicalName();
        String canonicalName2 = this.f22929a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        cm0.m12437f(sb.toString());
        throw new RemoteException();
    }

    @Override // p168r4.ib0
    /* renamed from: c4 */
    public final void mo10333c4(InterfaceC3512a interfaceC3512a) {
        Object obj = this.f22929a;
        if (!(obj instanceof AbstractC3296a) && !(obj instanceof MediationInterstitialAdapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = AbstractC3296a.class.getCanonicalName();
            String canonicalName3 = this.f22929a.getClass().getCanonicalName();
            int length = String.valueOf(canonicalName).length();
            StringBuilder sb = new StringBuilder(length + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            cm0.m12437f(sb.toString());
            throw new RemoteException();
        } else if (obj instanceof MediationInterstitialAdapter) {
            mo10331f();
        } else {
            cm0.m12442a("Show interstitial ad from adapter.");
            InterfaceC3307l interfaceC3307l = this.f22934q;
            if (interfaceC3307l != null) {
                interfaceC3307l.m19193a((Context) BinderC3514b.m18740t0(interfaceC3512a));
            } else {
                cm0.m12440c("Can not show null mediation interstitial ad.");
                throw new RemoteException();
            }
        }
    }

    @Override // p168r4.ib0
    /* renamed from: d */
    public final InterfaceC3512a mo10332d() {
        Object obj = this.f22929a;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return BinderC3514b.m18741L0(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                cm0.m12439d("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof AbstractC3296a) {
            return BinderC3514b.m18741L0(this.f22933p);
        } else {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = AbstractC3296a.class.getCanonicalName();
            String canonicalName3 = this.f22929a.getClass().getCanonicalName();
            int length = String.valueOf(canonicalName).length();
            StringBuilder sb = new StringBuilder(length + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            cm0.m12437f(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // p168r4.ib0
    /* renamed from: f */
    public final void mo10331f() {
        if (this.f22929a instanceof MediationInterstitialAdapter) {
            cm0.m12442a("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.f22929a).showInterstitial();
                return;
            } catch (Throwable th) {
                cm0.m12439d("", th);
                throw new RemoteException();
            }
        }
        String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
        String canonicalName2 = this.f22929a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        cm0.m12437f(sb.toString());
        throw new RemoteException();
    }

    @Override // p168r4.ib0
    /* renamed from: f6 */
    public final void mo10330f6(InterfaceC3512a interfaceC3512a, C6478yt c6478yt, C6293tt c6293tt, String str, String str2, lb0 lb0Var) {
        C6710g m3537a;
        RemoteException remoteException;
        HashSet hashSet;
        Date date;
        Bundle bundle;
        Object obj = this.f22929a;
        if (!(obj instanceof MediationBannerAdapter) && !(obj instanceof AbstractC3296a)) {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = AbstractC3296a.class.getCanonicalName();
            String canonicalName3 = this.f22929a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            cm0.m12437f(sb.toString());
            throw new RemoteException();
        }
        cm0.m12442a("Requesting banner ad from adapter.");
        if (c6478yt.f34210y) {
            m3537a = C6729x.m3536b(c6478yt.f34201p, c6478yt.f34198b);
        } else {
            m3537a = C6729x.m3537a(c6478yt.f34201p, c6478yt.f34198b, c6478yt.f34197a);
        }
        C6710g c6710g = m3537a;
        Object obj2 = this.f22929a;
        if (obj2 instanceof MediationBannerAdapter) {
            try {
                MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) obj2;
                List<String> list = c6293tt.f31998p;
                if (list != null) {
                    hashSet = new HashSet(list);
                } else {
                    hashSet = null;
                }
                long j = c6293tt.f31995b;
                if (j == -1) {
                    date = null;
                } else {
                    date = new Date(j);
                }
                wb0 wb0Var = new wb0(date, c6293tt.f31997k, hashSet, c6293tt.f32004v, m11816h7(c6293tt), c6293tt.f32000r, c6293tt.f31987C, c6293tt.f31989E, m11815i7(str, c6293tt));
                Bundle bundle2 = c6293tt.f32006x;
                if (bundle2 != null) {
                    bundle = bundle2.getBundle(mediationBannerAdapter.getClass().getName());
                } else {
                    bundle = null;
                }
                mediationBannerAdapter.requestBannerAd((Context) BinderC3514b.m18740t0(interfaceC3512a), new gc0(lb0Var), m11818f7(str, c6293tt, str2), c6710g, wb0Var, bundle);
            } finally {
            }
        } else if (obj2 instanceof AbstractC3296a) {
            try {
                ((AbstractC3296a) obj2).loadBannerAd(new C3303h((Context) BinderC3514b.m18740t0(interfaceC3512a), "", m11818f7(str, c6293tt, str2), m11817g7(c6293tt), m11816h7(c6293tt), c6293tt.f32004v, c6293tt.f32000r, c6293tt.f31989E, m11815i7(str, c6293tt), c6710g, this.f22938u), new ac0(this, lb0Var));
            } finally {
            }
        }
    }

    /* renamed from: g7 */
    public final Bundle m11817g7(C6293tt c6293tt) {
        Bundle bundle;
        Bundle bundle2 = c6293tt.f32006x;
        if (bundle2 != null && (bundle = bundle2.getBundle(this.f22929a.getClass().getName())) != null) {
            return bundle;
        }
        return new Bundle();
    }

    @Override // p168r4.ib0
    /* renamed from: j */
    public final void mo10327j() {
        Object obj = this.f22929a;
        if (!(obj instanceof InterfaceC3301f)) {
            return;
        }
        try {
            ((InterfaceC3301f) obj).onDestroy();
        } catch (Throwable th) {
            cm0.m12439d("", th);
            throw new RemoteException();
        }
    }

    @Override // p168r4.ib0
    /* renamed from: j3 */
    public final void mo10326j3(boolean z) {
        Object obj = this.f22929a;
        if (obj instanceof InterfaceC3316u) {
            try {
                ((InterfaceC3316u) obj).onImmersiveModeUpdated(z);
                return;
            } catch (Throwable th) {
                cm0.m12439d("", th);
                return;
            }
        }
        String canonicalName = InterfaceC3316u.class.getCanonicalName();
        String canonicalName2 = this.f22929a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        cm0.m12442a(sb.toString());
    }

    @Override // p168r4.ib0
    /* renamed from: k */
    public final void mo10325k() {
        Object obj = this.f22929a;
        if (!(obj instanceof InterfaceC3301f)) {
            return;
        }
        try {
            ((InterfaceC3301f) obj).onPause();
        } catch (Throwable th) {
            cm0.m12439d("", th);
            throw new RemoteException();
        }
    }

    @Override // p168r4.ib0
    /* renamed from: l */
    public final void mo10323l() {
        Object obj = this.f22929a;
        if (!(obj instanceof InterfaceC3301f)) {
            return;
        }
        try {
            ((InterfaceC3301f) obj).onResume();
        } catch (Throwable th) {
            cm0.m12439d("", th);
            throw new RemoteException();
        }
    }

    @Override // p168r4.ib0
    /* renamed from: l4 */
    public final void mo10322l4(InterfaceC3512a interfaceC3512a, C6478yt c6478yt, C6293tt c6293tt, String str, String str2, lb0 lb0Var) {
        if (this.f22929a instanceof AbstractC3296a) {
            cm0.m12442a("Requesting interscroller ad from adapter.");
            try {
                AbstractC3296a abstractC3296a = (AbstractC3296a) this.f22929a;
                abstractC3296a.loadInterscrollerAd(new C3303h((Context) BinderC3514b.m18740t0(interfaceC3512a), "", m11818f7(str, c6293tt, str2), m11817g7(c6293tt), m11816h7(c6293tt), c6293tt.f32004v, c6293tt.f32000r, c6293tt.f31989E, m11815i7(str, c6293tt), C6729x.m3535c(c6478yt.f34201p, c6478yt.f34198b), ""), new xb0(this, lb0Var, abstractC3296a));
                return;
            } catch (Exception e) {
                cm0.m12439d("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = AbstractC3296a.class.getCanonicalName();
        String canonicalName2 = this.f22929a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        cm0.m12437f(sb.toString());
        throw new RemoteException();
    }

    @Override // p168r4.ib0
    /* renamed from: m */
    public final boolean mo10320m() {
        if (this.f22929a instanceof AbstractC3296a) {
            if (this.f22931d != null) {
                return true;
            }
            return false;
        }
        String canonicalName = AbstractC3296a.class.getCanonicalName();
        String canonicalName2 = this.f22929a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        cm0.m12437f(sb.toString());
        throw new RemoteException();
    }

    @Override // p168r4.ib0
    /* renamed from: n */
    public final Bundle mo10319n() {
        Object obj = this.f22929a;
        if (!(obj instanceof zzcoi)) {
            String canonicalName = zzcoi.class.getCanonicalName();
            String canonicalName2 = this.f22929a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            cm0.m12437f(sb.toString());
            return new Bundle();
        }
        return ((zzcoi) obj).getInterstitialAdapterInfo();
    }

    @Override // p168r4.ib0
    /* renamed from: o */
    public final void mo10318o() {
        if (this.f22929a instanceof AbstractC3296a) {
            InterfaceC3312q interfaceC3312q = this.f22936s;
            if (interfaceC3312q != null) {
                interfaceC3312q.m19192a((Context) BinderC3514b.m18740t0(this.f22932k));
                return;
            } else {
                cm0.m12440c("Can not show null mediated rewarded ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = AbstractC3296a.class.getCanonicalName();
        String canonicalName2 = this.f22929a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        cm0.m12437f(sb.toString());
        throw new RemoteException();
    }

    @Override // p168r4.ib0
    /* renamed from: o5 */
    public final void mo10317o5(InterfaceC3512a interfaceC3512a, qh0 qh0Var, List<String> list) {
        cm0.m12437f("Could not initialize rewarded video adapter.");
        throw new RemoteException();
    }

    @Override // p168r4.ib0
    /* renamed from: q6 */
    public final void mo10316q6(C6293tt c6293tt, String str, String str2) {
        Object obj = this.f22929a;
        if (obj instanceof AbstractC3296a) {
            mo10334a7(this.f22932k, c6293tt, str, new hc0((AbstractC3296a) obj, this.f22931d));
            return;
        }
        String canonicalName = AbstractC3296a.class.getCanonicalName();
        String canonicalName2 = this.f22929a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        cm0.m12437f(sb.toString());
        throw new RemoteException();
    }

    @Override // p168r4.ib0
    /* renamed from: r */
    public final Bundle mo10315r() {
        Object obj = this.f22929a;
        if (!(obj instanceof zzcoh)) {
            String canonicalName = zzcoh.class.getCanonicalName();
            String canonicalName2 = this.f22929a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            cm0.m12437f(sb.toString());
            return new Bundle();
        }
        return ((zzcoh) obj).zza();
    }

    @Override // p168r4.ib0
    /* renamed from: v */
    public final g30 mo10312v() {
        gc0 gc0Var = this.f22930b;
        if (gc0Var != null) {
            InterfaceC6980f m11224u = gc0Var.m11224u();
            if (m11224u instanceof h30) {
                return ((h30) m11224u).m10997b();
            }
            return null;
        }
        return null;
    }

    @Override // p168r4.ib0
    /* renamed from: w2 */
    public final void mo10311w2(InterfaceC3512a interfaceC3512a, C6293tt c6293tt, String str, String str2, lb0 lb0Var) {
        RemoteException remoteException;
        HashSet hashSet;
        Date date;
        Bundle bundle;
        Object obj = this.f22929a;
        if (!(obj instanceof MediationInterstitialAdapter) && !(obj instanceof AbstractC3296a)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = AbstractC3296a.class.getCanonicalName();
            String canonicalName3 = this.f22929a.getClass().getCanonicalName();
            int length = String.valueOf(canonicalName).length();
            StringBuilder sb = new StringBuilder(length + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            cm0.m12437f(sb.toString());
            throw new RemoteException();
        }
        cm0.m12442a("Requesting interstitial ad from adapter.");
        Object obj2 = this.f22929a;
        if (obj2 instanceof MediationInterstitialAdapter) {
            try {
                MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) obj2;
                List<String> list = c6293tt.f31998p;
                if (list != null) {
                    hashSet = new HashSet(list);
                } else {
                    hashSet = null;
                }
                long j = c6293tt.f31995b;
                if (j == -1) {
                    date = null;
                } else {
                    date = new Date(j);
                }
                wb0 wb0Var = new wb0(date, c6293tt.f31997k, hashSet, c6293tt.f32004v, m11816h7(c6293tt), c6293tt.f32000r, c6293tt.f31987C, c6293tt.f31989E, m11815i7(str, c6293tt));
                Bundle bundle2 = c6293tt.f32006x;
                if (bundle2 != null) {
                    bundle = bundle2.getBundle(mediationInterstitialAdapter.getClass().getName());
                } else {
                    bundle = null;
                }
                mediationInterstitialAdapter.requestInterstitialAd((Context) BinderC3514b.m18740t0(interfaceC3512a), new gc0(lb0Var), m11818f7(str, c6293tt, str2), wb0Var, bundle);
            } finally {
            }
        } else if (obj2 instanceof AbstractC3296a) {
            try {
                ((AbstractC3296a) obj2).loadInterstitialAd(new C3308m((Context) BinderC3514b.m18740t0(interfaceC3512a), "", m11818f7(str, c6293tt, str2), m11817g7(c6293tt), m11816h7(c6293tt), c6293tt.f32004v, c6293tt.f32000r, c6293tt.f31989E, m11815i7(str, c6293tt), this.f22938u), new bc0(this, lb0Var));
            } finally {
            }
        }
    }

    @Override // p168r4.ib0
    /* renamed from: y */
    public final ub0 mo10310y() {
        AbstractC3317v abstractC3317v;
        AbstractC3317v m11225t;
        Object obj = this.f22929a;
        if (obj instanceof MediationNativeAdapter) {
            gc0 gc0Var = this.f22930b;
            if (gc0Var != null && (m11225t = gc0Var.m11225t()) != null) {
                return new oc0(m11225t);
            }
            return null;
        } else if ((obj instanceof AbstractC3296a) && (abstractC3317v = this.f22935r) != null) {
            return new oc0(abstractC3317v);
        } else {
            return null;
        }
    }

    @Override // p168r4.ib0
    /* renamed from: G0 */
    public final void mo10344G0(InterfaceC3512a interfaceC3512a) {
        Context context = (Context) BinderC3514b.m18740t0(interfaceC3512a);
        Object obj = this.f22929a;
        if (obj instanceof InterfaceC3315t) {
            ((InterfaceC3315t) obj).m19191a(context);
        }
    }

    /* renamed from: f7 */
    public final Bundle m11818f7(String str, C6293tt c6293tt, String str2) {
        String str3;
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            str3 = "Server parameters: ".concat(valueOf);
        } else {
            str3 = new String("Server parameters: ");
        }
        cm0.m12442a(str3);
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    bundle2.putString(next, jSONObject.getString(next));
                }
                bundle = bundle2;
            }
            if (this.f22929a instanceof AdMobAdapter) {
                bundle.putString(AdMobAdapter.AD_JSON_PARAMETER, str2);
                if (c6293tt != null) {
                    bundle.putInt("tagForChildDirectedTreatment", c6293tt.f32000r);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            cm0.m12439d("", th);
            throw new RemoteException();
        }
    }
}
