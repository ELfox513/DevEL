package p168r4;

import android.os.RemoteException;
import p024c2.EnumC1035a;
/* renamed from: r4.lc0 */
/* loaded from: classes2.dex */
public final class lc0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ EnumC1035a f27179a;

    /* renamed from: b */
    public final /* synthetic */ mc0 f27180b;

    public lc0(mc0 mc0Var, EnumC1035a enumC1035a) {
        this.f27180b = mc0Var;
        this.f27179a = enumC1035a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        lb0 lb0Var;
        try {
            lb0Var = this.f27180b.f27570a;
            lb0Var.mo5492W(nc0.m9124a(this.f27179a));
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }
}
