package p168r4;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import p041d3.C3303h;
import p041d3.C3305j;
import p041d3.C3308m;
import p041d3.C3310o;
import p041d3.C3313r;
import p041d3.InterfaceC3307l;
import p041d3.InterfaceC3312q;
import p041d3.InterfaceC3320y;
import p059f3.C3510a;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p184t2.C6729x;
import p184t2.EnumC6703b;
/* renamed from: r4.pd0 */
/* loaded from: classes2.dex */
public final class pd0 extends dd0 {

    /* renamed from: a */
    public final RtbAdapter f29430a;

    /* renamed from: b */
    public InterfaceC3307l f29431b;

    /* renamed from: d */
    public InterfaceC3312q f29432d;

    /* renamed from: k */
    public String f29433k = "";

    public pd0(RtbAdapter rtbAdapter) {
        this.f29430a = rtbAdapter;
    }

    /* renamed from: i7 */
    public static final boolean m8345i7(C6293tt c6293tt) {
        if (c6293tt.f31999q) {
            return true;
        }
        C6479yu.m4568a();
        return vl0.m6117k();
    }

    @Override // p168r4.ed0
    /* renamed from: J0 */
    public final void mo8356J0(String str) {
        this.f29433k = str;
    }

    @Override // p168r4.ed0
    /* renamed from: d */
    public final rd0 mo8351d() {
        this.f29430a.getVersionInfo();
        return rd0.m7529X0(null);
    }

    @Override // p168r4.ed0
    /* renamed from: g */
    public final rd0 mo8349g() {
        this.f29430a.getSDKVersionInfo();
        return rd0.m7529X0(null);
    }

    @Override // p168r4.ed0
    /* renamed from: y5 */
    public final void mo8341y5(String str, String str2, C6293tt c6293tt, InterfaceC3512a interfaceC3512a, yc0 yc0Var, lb0 lb0Var) {
        mo8353T3(str, str2, c6293tt, interfaceC3512a, yc0Var, lb0Var, null);
    }

    /* renamed from: j7 */
    public static final String m8344j7(String str, C6293tt c6293tt) {
        String str2 = c6293tt.f31990F;
        try {
            return new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException unused) {
            return str2;
        }
    }

    @Override // p168r4.ed0
    /* renamed from: G4 */
    public final void mo8357G4(String str, String str2, C6293tt c6293tt, InterfaceC3512a interfaceC3512a, vc0 vc0Var, lb0 lb0Var) {
        try {
            this.f29430a.loadRtbInterstitialAd(new C3308m((Context) BinderC3514b.m18740t0(interfaceC3512a), str, m8347h7(str2), m8348g7(c6293tt), m8345i7(c6293tt), c6293tt.f32004v, c6293tt.f32000r, c6293tt.f31989E, m8344j7(str2, c6293tt), this.f29433k), new ld0(this, vc0Var, lb0Var));
        } catch (Throwable th) {
            cm0.m12439d("Adapter failed to render interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // p168r4.ed0
    /* renamed from: K1 */
    public final void mo8355K1(String str, String str2, C6293tt c6293tt, InterfaceC3512a interfaceC3512a, sc0 sc0Var, lb0 lb0Var, C6478yt c6478yt) {
        try {
            this.f29430a.loadRtbBannerAd(new C3303h((Context) BinderC3514b.m18740t0(interfaceC3512a), str, m8347h7(str2), m8348g7(c6293tt), m8345i7(c6293tt), c6293tt.f32004v, c6293tt.f32000r, c6293tt.f31989E, m8344j7(str2, c6293tt), C6729x.m3537a(c6478yt.f34201p, c6478yt.f34198b, c6478yt.f34197a), this.f29433k), new jd0(this, sc0Var, lb0Var));
        } catch (Throwable th) {
            cm0.m12439d("Adapter failed to render banner ad.", th);
            throw new RemoteException();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p168r4.ed0
    /* renamed from: T0 */
    public final void mo8354T0(InterfaceC3512a interfaceC3512a, String str, Bundle bundle, Bundle bundle2, C6478yt c6478yt, hd0 hd0Var) {
        char c;
        EnumC6703b enumC6703b;
        try {
            nd0 nd0Var = new nd0(this, hd0Var);
            RtbAdapter rtbAdapter = this.f29430a;
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
                            if (c == 4) {
                                enumC6703b = EnumC6703b.NATIVE;
                            } else {
                                throw new IllegalArgumentException("Internal Error");
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
            C3305j c3305j = new C3305j(enumC6703b, bundle2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(c3305j);
            rtbAdapter.collectSignals(new C3510a((Context) BinderC3514b.m18740t0(interfaceC3512a), arrayList, bundle, C6729x.m3537a(c6478yt.f34201p, c6478yt.f34198b, c6478yt.f34197a)), nd0Var);
        } catch (Throwable th) {
            cm0.m12439d("Error generating signals for RTB", th);
            throw new RemoteException();
        }
    }

    @Override // p168r4.ed0
    /* renamed from: T3 */
    public final void mo8353T3(String str, String str2, C6293tt c6293tt, InterfaceC3512a interfaceC3512a, yc0 yc0Var, lb0 lb0Var, d20 d20Var) {
        try {
            this.f29430a.loadRtbNativeAd(new C3310o((Context) BinderC3514b.m18740t0(interfaceC3512a), str, m8347h7(str2), m8348g7(c6293tt), m8345i7(c6293tt), c6293tt.f32004v, c6293tt.f32000r, c6293tt.f31989E, m8344j7(str2, c6293tt), this.f29433k, d20Var), new md0(this, yc0Var, lb0Var));
        } catch (Throwable th) {
            cm0.m12439d("Adapter failed to render native ad.", th);
            throw new RemoteException();
        }
    }

    @Override // p168r4.ed0
    /* renamed from: a4 */
    public final void mo8352a4(String str, String str2, C6293tt c6293tt, InterfaceC3512a interfaceC3512a, bd0 bd0Var, lb0 lb0Var) {
        try {
            this.f29430a.loadRtbRewardedAd(new C3313r((Context) BinderC3514b.m18740t0(interfaceC3512a), str, m8347h7(str2), m8348g7(c6293tt), m8345i7(c6293tt), c6293tt.f32004v, c6293tt.f32000r, c6293tt.f31989E, m8344j7(str2, c6293tt), this.f29433k), new od0(this, bd0Var, lb0Var));
        } catch (Throwable th) {
            cm0.m12439d("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // p168r4.ed0
    /* renamed from: f */
    public final InterfaceC6000lx mo8350f() {
        RtbAdapter rtbAdapter = this.f29430a;
        if (rtbAdapter instanceof InterfaceC3320y) {
            try {
                return ((InterfaceC3320y) rtbAdapter).getVideoController();
            } catch (Throwable th) {
                cm0.m12439d("", th);
            }
        }
        return null;
    }

    /* renamed from: g7 */
    public final Bundle m8348g7(C6293tt c6293tt) {
        Bundle bundle;
        Bundle bundle2 = c6293tt.f32006x;
        if (bundle2 != null && (bundle = bundle2.getBundle(this.f29430a.getClass().getName())) != null) {
            return bundle;
        }
        return new Bundle();
    }

    @Override // p168r4.ed0
    /* renamed from: i6 */
    public final void mo8346i6(String str, String str2, C6293tt c6293tt, InterfaceC3512a interfaceC3512a, sc0 sc0Var, lb0 lb0Var, C6478yt c6478yt) {
        try {
            this.f29430a.loadRtbInterscrollerAd(new C3303h((Context) BinderC3514b.m18740t0(interfaceC3512a), str, m8347h7(str2), m8348g7(c6293tt), m8345i7(c6293tt), c6293tt.f32004v, c6293tt.f32000r, c6293tt.f31989E, m8344j7(str2, c6293tt), C6729x.m3537a(c6478yt.f34201p, c6478yt.f34198b, c6478yt.f34197a), this.f29433k), new kd0(this, sc0Var, lb0Var));
        } catch (Throwable th) {
            cm0.m12439d("Adapter failed to render interscroller ad.", th);
            throw new RemoteException();
        }
    }

    @Override // p168r4.ed0
    /* renamed from: s0 */
    public final boolean mo8343s0(InterfaceC3512a interfaceC3512a) {
        InterfaceC3307l interfaceC3307l = this.f29431b;
        if (interfaceC3307l != null) {
            try {
                interfaceC3307l.m19193a((Context) BinderC3514b.m18740t0(interfaceC3512a));
                return true;
            } catch (Throwable th) {
                cm0.m12439d("", th);
                return true;
            }
        }
        return false;
    }

    @Override // p168r4.ed0
    /* renamed from: u3 */
    public final boolean mo8342u3(InterfaceC3512a interfaceC3512a) {
        InterfaceC3312q interfaceC3312q = this.f29432d;
        if (interfaceC3312q != null) {
            try {
                interfaceC3312q.m19192a((Context) BinderC3514b.m18740t0(interfaceC3512a));
                return true;
            } catch (Throwable th) {
                cm0.m12439d("", th);
                return true;
            }
        }
        return false;
    }

    @Override // p168r4.ed0
    /* renamed from: z1 */
    public final void mo8340z1(String str, String str2, C6293tt c6293tt, InterfaceC3512a interfaceC3512a, bd0 bd0Var, lb0 lb0Var) {
        try {
            this.f29430a.loadRtbRewardedInterstitialAd(new C3313r((Context) BinderC3514b.m18740t0(interfaceC3512a), str, m8347h7(str2), m8348g7(c6293tt), m8345i7(c6293tt), c6293tt.f32004v, c6293tt.f32000r, c6293tt.f31989E, m8344j7(str2, c6293tt), this.f29433k), new od0(this, bd0Var, lb0Var));
        } catch (Throwable th) {
            cm0.m12439d("Adapter failed to render rewarded interstitial ad.", th);
            throw new RemoteException();
        }
    }

    /* renamed from: h7 */
    public static final Bundle m8347h7(String str) {
        String str2;
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            str2 = "Server parameters: ".concat(valueOf);
        } else {
            str2 = new String("Server parameters: ");
        }
        cm0.m12437f(str2);
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
                return bundle2;
            }
            return bundle;
        } catch (JSONException e) {
            cm0.m12439d("", e);
            throw new RemoteException();
        }
    }
}
