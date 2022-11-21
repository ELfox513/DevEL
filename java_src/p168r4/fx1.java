package p168r4;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import p185t3.C6734b;
import p235z2.C7601t;
/* renamed from: r4.fx1 */
/* loaded from: classes2.dex */
public final class fx1 extends jx1 {
    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: o0 */
    public final void mo1947o0(Bundle bundle) {
        synchronized (this.f26169b) {
            if (!this.f26171k) {
                this.f26171k = true;
                try {
                    this.f26173q.m4738h0().mo11167t5(this.f26172p, new gx1(this));
                } catch (RemoteException | IllegalArgumentException unused) {
                    this.f26168a.m6085f(new yx1(1));
                } catch (Throwable th) {
                    C7601t.m935h().m9056k(th, "RemoteAdRequestClientTask.onConnected");
                    this.f26168a.m6085f(new yx1(1));
                }
            }
        }
    }

    @Override // p168r4.jx1, p220x3.AbstractC7246c.InterfaceC7248b
    /* renamed from: t0 */
    public final void mo1940t0(C6734b c6734b) {
        cm0.m12442a("Cannot connect to remote service, fallback to local instance.");
        this.f26168a.m6085f(new yx1(1));
    }

    public fx1(Context context) {
        this.f26173q = new yf0(context, C7601t.m925r().m26396a(), this, this);
    }
}
