package p168r4;

import android.os.RemoteException;
/* renamed from: r4.jo2 */
/* loaded from: classes2.dex */
public final class jo2 extends cx2 {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC6517zv f26086a;

    /* renamed from: b */
    public final /* synthetic */ ko2 f26087b;

    public jo2(ko2 ko2Var, InterfaceC6517zv interfaceC6517zv) {
        this.f26087b = ko2Var;
        this.f26086a = interfaceC6517zv;
    }

    @Override // p168r4.cx2
    /* renamed from: v */
    public final void mo5376v() {
        uo1 uo1Var;
        uo1Var = this.f26087b.f26502k;
        if (uo1Var != null) {
            try {
                this.f26086a.mo4070c();
            } catch (RemoteException e) {
                cm0.m12434i("#007 Could not call remote method.", e);
            }
        }
    }
}
