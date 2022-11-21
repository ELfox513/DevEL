package p168r4;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import p060f4.BinderC3514b;
/* renamed from: r4.su */
/* loaded from: classes2.dex */
public final class C6257su extends AbstractC6442xu<InterfaceC6221rv> {

    /* renamed from: b */
    public final /* synthetic */ Context f31513b;

    /* renamed from: c */
    public final /* synthetic */ String f31514c;

    /* renamed from: d */
    public final /* synthetic */ fb0 f31515d;

    /* renamed from: e */
    public final /* synthetic */ C6405wu f31516e;

    public C6257su(C6405wu c6405wu, Context context, String str, fb0 fb0Var) {
        this.f31516e = c6405wu;
        this.f31513b = context;
        this.f31514c = str;
        this.f31515d = fb0Var;
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ InterfaceC6221rv mo4977a() {
        C6405wu.m5574g(this.f31513b, "native_ad");
        return new BinderC5964ky();
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ InterfaceC6221rv mo4976b() {
        xf0 xf0Var;
        InterfaceC6221rv c6147pv;
        C6182qt c6182qt;
        C6225rz.m7278a(this.f31513b);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30941W6)).booleanValue()) {
            try {
                IBinder m6993b2 = ((C6258sv) gm0.m11109a(this.f31513b, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl", C6220ru.f30688a)).m6993b2(BinderC3514b.m18741L0(this.f31513b), this.f31514c, this.f31515d, 213806000);
                if (m6993b2 == null) {
                    return null;
                }
                IInterface queryLocalInterface = m6993b2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                if (queryLocalInterface instanceof InterfaceC6221rv) {
                    c6147pv = (InterfaceC6221rv) queryLocalInterface;
                } else {
                    c6147pv = new C6147pv(m6993b2);
                }
                return c6147pv;
            } catch (RemoteException | NullPointerException | fm0 e) {
                this.f31516e.f33329h = vf0.m6164c(this.f31513b);
                xf0Var = this.f31516e.f33329h;
                xf0Var.mo5332b(e, "ClientApiBroker.createAdLoaderBuilder");
                return null;
            }
        }
        c6182qt = this.f31516e.f33323b;
        return c6182qt.m7680c(this.f31513b, this.f31514c, this.f31515d);
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ InterfaceC6221rv mo4975c(InterfaceC5778fw interfaceC5778fw) {
        return interfaceC5778fw.mo11342m1(BinderC3514b.m18741L0(this.f31513b), this.f31514c, this.f31515d, 213806000);
    }
}
