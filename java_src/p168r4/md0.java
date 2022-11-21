package p168r4;

import android.os.RemoteException;
import p041d3.AbstractC3317v;
import p041d3.InterfaceC3299d;
import p184t2.C6702a;
/* renamed from: r4.md0 */
/* loaded from: classes2.dex */
public final class md0 implements InterfaceC3299d<AbstractC3317v, Object> {

    /* renamed from: a */
    public final /* synthetic */ yc0 f27582a;

    /* renamed from: b */
    public final /* synthetic */ lb0 f27583b;

    public md0(pd0 pd0Var, yc0 yc0Var, lb0 lb0Var) {
        this.f27582a = yc0Var;
        this.f27583b = lb0Var;
    }

    @Override // p041d3.InterfaceC3299d
    /* renamed from: a */
    public final void mo5392a(C6702a c6702a) {
        try {
            this.f27582a.mo4763F(c6702a.m3610d());
        } catch (RemoteException e) {
            cm0.m12439d("", e);
        }
    }
}
