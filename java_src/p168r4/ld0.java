package p168r4;

import android.os.RemoteException;
import p041d3.InterfaceC3299d;
import p041d3.InterfaceC3307l;
import p184t2.C6702a;
/* renamed from: r4.ld0 */
/* loaded from: classes2.dex */
public final class ld0 implements InterfaceC3299d<InterfaceC3307l, Object> {

    /* renamed from: a */
    public final /* synthetic */ vc0 f27186a;

    /* renamed from: b */
    public final /* synthetic */ lb0 f27187b;

    /* renamed from: c */
    public final /* synthetic */ pd0 f27188c;

    public ld0(pd0 pd0Var, vc0 vc0Var, lb0 lb0Var) {
        this.f27188c = pd0Var;
        this.f27186a = vc0Var;
        this.f27187b = lb0Var;
    }

    @Override // p041d3.InterfaceC3299d
    /* renamed from: a */
    public final void mo5392a(C6702a c6702a) {
        try {
            this.f27186a.mo6171F(c6702a.m3610d());
        } catch (RemoteException e) {
            cm0.m12439d("", e);
        }
    }
}
