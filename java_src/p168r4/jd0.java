package p168r4;

import android.os.RemoteException;
import p041d3.InterfaceC3299d;
import p041d3.InterfaceC3302g;
import p184t2.C6702a;
/* renamed from: r4.jd0 */
/* loaded from: classes2.dex */
public final class jd0 implements InterfaceC3299d<InterfaceC3302g, Object> {

    /* renamed from: a */
    public final /* synthetic */ sc0 f26006a;

    /* renamed from: b */
    public final /* synthetic */ lb0 f26007b;

    public jd0(pd0 pd0Var, sc0 sc0Var, lb0 lb0Var) {
        this.f26006a = sc0Var;
        this.f26007b = lb0Var;
    }

    @Override // p041d3.InterfaceC3299d
    /* renamed from: a */
    public final void mo5392a(C6702a c6702a) {
        try {
            this.f26006a.mo7178F(c6702a.m3610d());
        } catch (RemoteException e) {
            cm0.m12439d("", e);
        }
    }
}
