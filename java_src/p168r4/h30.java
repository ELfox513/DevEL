package p168r4;

import android.content.Context;
import android.os.RemoteException;
import p060f4.BinderC3514b;
import p184t2.C6726v;
import p202v2.C6975b;
import p202v2.InterfaceC6980f;
/* renamed from: r4.h30 */
/* loaded from: classes2.dex */
public final class h30 implements InterfaceC6980f {

    /* renamed from: a */
    public final g30 f24419a;

    /* renamed from: b */
    public final C6975b f24420b;

    /* renamed from: c */
    public final C6726v f24421c = new C6726v();

    /* renamed from: b */
    public final g30 m10997b() {
        return this.f24419a;
    }

    public h30(g30 g30Var) {
        Context context;
        this.f24419a = g30Var;
        C6975b c6975b = null;
        try {
            context = (Context) BinderC3514b.m18740t0(g30Var.mo9324l());
        } catch (RemoteException | NullPointerException e) {
            cm0.m12439d("", e);
            context = null;
        }
        if (context != null) {
            C6975b c6975b2 = new C6975b(context);
            try {
                if (true == this.f24419a.mo9326i0(BinderC3514b.m18741L0(c6975b2))) {
                    c6975b = c6975b2;
                }
            } catch (RemoteException e2) {
                cm0.m12439d("", e2);
            }
        }
        this.f24420b = c6975b;
    }

    @Override // p202v2.InterfaceC6980f
    /* renamed from: a */
    public final String mo2788a() {
        try {
            return this.f24419a.mo9331f();
        } catch (RemoteException e) {
            cm0.m12439d("", e);
            return null;
        }
    }
}
