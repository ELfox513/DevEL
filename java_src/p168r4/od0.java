package p168r4;

import android.os.RemoteException;
import p041d3.InterfaceC3299d;
import p041d3.InterfaceC3312q;
import p184t2.C6702a;
/* renamed from: r4.od0 */
/* loaded from: classes2.dex */
public final class od0 implements InterfaceC3299d<InterfaceC3312q, Object> {

    /* renamed from: a */
    public final /* synthetic */ bd0 f28957a;

    /* renamed from: b */
    public final /* synthetic */ lb0 f28958b;

    /* renamed from: c */
    public final /* synthetic */ pd0 f28959c;

    public od0(pd0 pd0Var, bd0 bd0Var, lb0 lb0Var) {
        this.f28959c = pd0Var;
        this.f28957a = bd0Var;
        this.f28958b = lb0Var;
    }

    @Override // p041d3.InterfaceC3299d
    /* renamed from: a */
    public final void mo5392a(C6702a c6702a) {
        try {
            this.f28957a.mo4329F(c6702a.m3610d());
        } catch (RemoteException e) {
            cm0.m12439d("", e);
        }
    }
}
