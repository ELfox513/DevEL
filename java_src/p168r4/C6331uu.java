package p168r4;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import p060f4.BinderC3514b;
/* renamed from: r4.uu */
/* loaded from: classes2.dex */
public final class C6331uu extends AbstractC6442xu<InterfaceC6074nw> {

    /* renamed from: b */
    public final /* synthetic */ Context f32391b;

    /* renamed from: c */
    public final /* synthetic */ C6405wu f32392c;

    public C6331uu(C6405wu c6405wu, Context context) {
        this.f32392c = c6405wu;
        this.f32391b = context;
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ InterfaceC6074nw mo4977a() {
        C6405wu.m5574g(this.f32391b, "mobile_ads_settings");
        return new BinderC6113oy();
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ InterfaceC6074nw mo4976b() {
        xf0 xf0Var;
        InterfaceC6074nw c5999lw;
        C5780fy c5780fy;
        C6225rz.m7278a(this.f32391b);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30941W6)).booleanValue()) {
            try {
                IBinder m8650b2 = ((C6111ow) gm0.m11109a(this.f32391b, "com.google.android.gms.ads.ChimeraMobileAdsSettingManagerCreatorImpl", C6294tu.f32022a)).m8650b2(BinderC3514b.m18741L0(this.f32391b), 213806000);
                if (m8650b2 == null) {
                    return null;
                }
                IInterface queryLocalInterface = m8650b2.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
                if (queryLocalInterface instanceof InterfaceC6074nw) {
                    c5999lw = (InterfaceC6074nw) queryLocalInterface;
                } else {
                    c5999lw = new C5999lw(m8650b2);
                }
                return c5999lw;
            } catch (RemoteException | NullPointerException | fm0 e) {
                this.f32392c.f33329h = vf0.m6164c(this.f32391b);
                xf0Var = this.f32392c.f33329h;
                xf0Var.mo5332b(e, "ClientApiBroker.getMobileAdsSettingsManager");
                return null;
            }
        }
        c5780fy = this.f32392c.f33324c;
        return c5780fy.m11331c(this.f32391b);
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ InterfaceC6074nw mo4975c(InterfaceC5778fw interfaceC5778fw) {
        return interfaceC5778fw.mo11345b4(BinderC3514b.m18741L0(this.f32391b), 213806000);
    }
}
