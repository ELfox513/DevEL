package p168r4;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import p041d3.AbstractC3317v;
import p041d3.InterfaceC3304i;
import p041d3.InterfaceC3309n;
import p041d3.InterfaceC3311p;
import p184t2.C6702a;
import p184t2.C6726v;
import p202v2.InterfaceC6980f;
import p220x3.C7297q;
/* renamed from: r4.gc0 */
/* loaded from: classes2.dex */
public final class gc0 implements InterfaceC3304i, InterfaceC3309n, InterfaceC3311p {

    /* renamed from: a */
    public final lb0 f23959a;

    /* renamed from: b */
    public AbstractC3317v f23960b;

    /* renamed from: c */
    public InterfaceC6980f f23961c;

    public gc0(lb0 lb0Var) {
        this.f23959a = lb0Var;
    }

    /* renamed from: t */
    public final AbstractC3317v m11225t() {
        return this.f23960b;
    }

    /* renamed from: u */
    public final InterfaceC6980f m11224u() {
        return this.f23961c;
    }

    @Override // p041d3.InterfaceC3304i
    /* renamed from: a */
    public final void mo11244a(MediationBannerAdapter mediationBannerAdapter) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        cm0.m12442a("Adapter called onAdClosed.");
        try {
            this.f23959a.mo5487d();
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3311p
    /* renamed from: b */
    public final void mo11243b(MediationNativeAdapter mediationNativeAdapter) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        cm0.m12442a("Adapter called onAdOpened.");
        try {
            this.f23959a.mo5482j();
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3309n
    /* renamed from: c */
    public final void mo11242c(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(".");
        cm0.m12442a(sb.toString());
        try {
            this.f23959a.mo5492W(i);
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3311p
    /* renamed from: d */
    public final void mo11241d(MediationNativeAdapter mediationNativeAdapter, InterfaceC6980f interfaceC6980f) {
        String str;
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        String valueOf = String.valueOf(interfaceC6980f.mo2788a());
        if (valueOf.length() != 0) {
            str = "Adapter called onAdLoaded with template id ".concat(valueOf);
        } else {
            str = new String("Adapter called onAdLoaded with template id ");
        }
        cm0.m12442a(str);
        this.f23961c = interfaceC6980f;
        try {
            this.f23959a.mo5484h();
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3304i
    /* renamed from: e */
    public final void mo11240e(MediationBannerAdapter mediationBannerAdapter) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        cm0.m12442a("Adapter called onAdClicked.");
        try {
            this.f23959a.mo5488c();
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3311p
    /* renamed from: f */
    public final void mo11239f(MediationNativeAdapter mediationNativeAdapter, AbstractC3317v abstractC3317v) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        cm0.m12442a("Adapter called onAdLoaded.");
        this.f23960b = abstractC3317v;
        if (!(mediationNativeAdapter instanceof AdMobAdapter)) {
            C6726v c6726v = new C6726v();
            c6726v.m3547b(new vb0());
            if (abstractC3317v != null && abstractC3317v.m19162r()) {
                abstractC3317v.m19184G(c6726v);
            }
        }
        try {
            this.f23959a.mo5484h();
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3311p
    /* renamed from: g */
    public final void mo11238g(MediationNativeAdapter mediationNativeAdapter) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        cm0.m12442a("Adapter called onAdClosed.");
        try {
            this.f23959a.mo5487d();
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3304i
    /* renamed from: h */
    public final void mo11237h(MediationBannerAdapter mediationBannerAdapter) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        cm0.m12442a("Adapter called onAdLoaded.");
        try {
            this.f23959a.mo5484h();
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3304i
    /* renamed from: i */
    public final void mo11236i(MediationBannerAdapter mediationBannerAdapter, C6702a c6702a) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        int m3613a = c6702a.m3613a();
        String m3611c = c6702a.m3611c();
        String m3612b = c6702a.m3612b();
        StringBuilder sb = new StringBuilder(String.valueOf(m3611c).length() + 97 + String.valueOf(m3612b).length());
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(m3613a);
        sb.append(". ErrorMessage: ");
        sb.append(m3611c);
        sb.append(". ErrorDomain: ");
        sb.append(m3612b);
        cm0.m12442a(sb.toString());
        try {
            this.f23959a.mo5475u5(c6702a.m3610d());
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3311p
    /* renamed from: j */
    public final void mo11235j(MediationNativeAdapter mediationNativeAdapter) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        AbstractC3317v abstractC3317v = this.f23960b;
        if (this.f23961c == null) {
            if (abstractC3317v == null) {
                cm0.m12434i("#007 Could not call remote method.", null);
                return;
            } else if (!abstractC3317v.m19168l()) {
                cm0.m12442a("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        cm0.m12442a("Adapter called onAdClicked.");
        try {
            this.f23959a.mo5488c();
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3304i
    /* renamed from: k */
    public final void mo11234k(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        cm0.m12442a("Adapter called onAppEvent.");
        try {
            this.f23959a.mo5491Z5(str, str2);
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3309n
    /* renamed from: l */
    public final void mo11233l(MediationInterstitialAdapter mediationInterstitialAdapter, C6702a c6702a) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        int m3613a = c6702a.m3613a();
        String m3611c = c6702a.m3611c();
        String m3612b = c6702a.m3612b();
        StringBuilder sb = new StringBuilder(String.valueOf(m3611c).length() + 97 + String.valueOf(m3612b).length());
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(m3613a);
        sb.append(". ErrorMessage: ");
        sb.append(m3611c);
        sb.append(". ErrorDomain: ");
        sb.append(m3612b);
        cm0.m12442a(sb.toString());
        try {
            this.f23959a.mo5475u5(c6702a.m3610d());
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3311p
    /* renamed from: m */
    public final void mo11232m(MediationNativeAdapter mediationNativeAdapter, C6702a c6702a) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        int m3613a = c6702a.m3613a();
        String m3611c = c6702a.m3611c();
        String m3612b = c6702a.m3612b();
        StringBuilder sb = new StringBuilder(String.valueOf(m3611c).length() + 97 + String.valueOf(m3612b).length());
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(m3613a);
        sb.append(". ErrorMessage: ");
        sb.append(m3611c);
        sb.append(". ErrorDomain: ");
        sb.append(m3612b);
        cm0.m12442a(sb.toString());
        try {
            this.f23959a.mo5475u5(c6702a.m3610d());
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3309n
    /* renamed from: n */
    public final void mo11231n(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        cm0.m12442a("Adapter called onAdLoaded.");
        try {
            this.f23959a.mo5484h();
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3304i
    /* renamed from: o */
    public final void mo11230o(MediationBannerAdapter mediationBannerAdapter) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        cm0.m12442a("Adapter called onAdOpened.");
        try {
            this.f23959a.mo5482j();
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3309n
    /* renamed from: p */
    public final void mo11229p(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        cm0.m12442a("Adapter called onAdClosed.");
        try {
            this.f23959a.mo5487d();
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3311p
    /* renamed from: q */
    public final void mo11228q(MediationNativeAdapter mediationNativeAdapter, InterfaceC6980f interfaceC6980f, String str) {
        if (interfaceC6980f instanceof h30) {
            try {
                this.f23959a.mo5489b7(((h30) interfaceC6980f).m10997b(), str);
                return;
            } catch (RemoteException e) {
                cm0.m12434i("#007 Could not call remote method.", e);
                return;
            }
        }
        cm0.m12437f("Unexpected native custom template ad type.");
    }

    @Override // p041d3.InterfaceC3311p
    /* renamed from: r */
    public final void mo11227r(MediationNativeAdapter mediationNativeAdapter) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        AbstractC3317v abstractC3317v = this.f23960b;
        if (this.f23961c == null) {
            if (abstractC3317v == null) {
                cm0.m12434i("#007 Could not call remote method.", null);
                return;
            } else if (!abstractC3317v.m19167m()) {
                cm0.m12442a("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        cm0.m12442a("Adapter called onAdImpression.");
        try {
            this.f23959a.mo5483i();
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p041d3.InterfaceC3309n
    /* renamed from: s */
    public final void mo11226s(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        cm0.m12442a("Adapter called onAdOpened.");
        try {
            this.f23959a.mo5482j();
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }
}
