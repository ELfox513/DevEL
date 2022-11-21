package p168r4;

import android.content.Context;
import android.os.RemoteException;
import p060f4.BinderC3514b;
/* renamed from: r4.mu */
/* loaded from: classes2.dex */
public final class C6034mu extends AbstractC6442xu<ke0> {

    /* renamed from: b */
    public final /* synthetic */ Context f27874b;

    /* renamed from: c */
    public final /* synthetic */ fb0 f27875c;

    public C6034mu(C6405wu c6405wu, Context context, fb0 fb0Var) {
        this.f27874b = context;
        this.f27875c = fb0Var;
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ ke0 mo4977a() {
        return null;
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ ke0 mo4976b() {
        try {
            return ((ne0) gm0.m11109a(this.f27874b, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl", C5997lu.f27374a)).mo9118Q0(BinderC3514b.m18741L0(this.f27874b), this.f27875c, 213806000);
        } catch (RemoteException | NullPointerException | fm0 unused) {
            return null;
        }
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ ke0 mo4975c(InterfaceC5778fw interfaceC5778fw) {
        return interfaceC5778fw.mo11348O3(BinderC3514b.m18741L0(this.f27874b), this.f27875c, 213806000);
    }
}
