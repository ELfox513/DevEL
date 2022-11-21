package p168r4;

import android.os.RemoteException;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import p024c2.EnumC1035a;
import p040d2.AbstractC3287e;
import p040d2.InterfaceC3285c;
import p040d2.InterfaceC3286d;
import p040d2.InterfaceC3290f;
/* renamed from: r4.mc0 */
/* loaded from: classes2.dex */
public final class mc0<NETWORK_EXTRAS extends InterfaceC3290f, SERVER_PARAMETERS extends AbstractC3287e> implements InterfaceC3285c, InterfaceC3286d {

    /* renamed from: a */
    public final lb0 f27570a;

    public mc0(lb0 lb0Var) {
        this.f27570a = lb0Var;
    }

    @Override // p040d2.InterfaceC3286d
    /* renamed from: a */
    public final void mo9413a(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, EnumC1035a enumC1035a) {
        String valueOf = String.valueOf(enumC1035a);
        StringBuilder sb = new StringBuilder(valueOf.length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error ");
        sb.append(valueOf);
        sb.append(".");
        cm0.m12442a(sb.toString());
        C6479yu.m4568a();
        if (!vl0.m6114n()) {
            cm0.m12434i("#008 Must be called on the main UI thread.", null);
            vl0.f32748b.post(new lc0(this, enumC1035a));
            return;
        }
        try {
            this.f27570a.mo5492W(nc0.m9124a(enumC1035a));
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p040d2.InterfaceC3285c
    /* renamed from: b */
    public final void mo9412b(MediationBannerAdapter<?, ?> mediationBannerAdapter, EnumC1035a enumC1035a) {
        cm0.m12442a("Adapter called onFailedToReceiveAd with error. ".concat(String.valueOf(enumC1035a)));
        C6479yu.m4568a();
        if (!vl0.m6114n()) {
            cm0.m12434i("#008 Must be called on the main UI thread.", null);
            vl0.f32748b.post(new kc0(this, enumC1035a));
            return;
        }
        try {
            this.f27570a.mo5492W(nc0.m9124a(enumC1035a));
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }
}
