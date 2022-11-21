package p168r4;

import android.app.Activity;
import android.os.RemoteException;
import p060f4.BinderC3514b;
/* renamed from: r4.iu */
/* loaded from: classes2.dex */
public final class C5886iu extends AbstractC6442xu<we0> {

    /* renamed from: b */
    public final /* synthetic */ Activity f25273b;

    /* renamed from: c */
    public final /* synthetic */ C6405wu f25274c;

    public C5886iu(C6405wu c6405wu, Activity activity) {
        this.f25274c = c6405wu;
        this.f25273b = activity;
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ we0 mo4977a() {
        C6405wu.m5574g(this.f25273b, "ad_overlay");
        return null;
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ we0 mo4975c(InterfaceC5778fw interfaceC5778fw) {
        return interfaceC5778fw.mo11346U(BinderC3514b.m18741L0(this.f25273b));
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ we0 mo4976b() {
        xf0 xf0Var;
        te0 te0Var;
        C6225rz.m7278a(this.f25273b);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30941W6)).booleanValue()) {
            try {
                return ve0.m6166f7(((ze0) gm0.m11109a(this.f25273b, "com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl", C5850hu.f24823a)).mo4279M(BinderC3514b.m18741L0(this.f25273b)));
            } catch (RemoteException | NullPointerException | fm0 e) {
                this.f25274c.f33329h = vf0.m6164c(this.f25273b.getApplicationContext());
                xf0Var = this.f25274c.f33329h;
                xf0Var.mo5332b(e, "ClientApiBroker.createAdOverlay");
                return null;
            }
        }
        te0Var = this.f25274c.f33327f;
        return te0Var.m6840c(this.f25273b);
    }
}
