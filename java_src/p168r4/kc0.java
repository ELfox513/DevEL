package p168r4;

import android.os.RemoteException;
import p024c2.EnumC1035a;
/* renamed from: r4.kc0 */
/* loaded from: classes2.dex */
public final class kc0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ EnumC1035a f26366a;

    /* renamed from: b */
    public final /* synthetic */ mc0 f26367b;

    public kc0(mc0 mc0Var, EnumC1035a enumC1035a) {
        this.f26367b = mc0Var;
        this.f26366a = enumC1035a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        lb0 lb0Var;
        try {
            lb0Var = this.f26367b.f27570a;
            lb0Var.mo5492W(nc0.m9124a(this.f26366a));
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }
}
