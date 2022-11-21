package p168r4;

import android.os.RemoteException;
import p041d3.InterfaceC3299d;
import p041d3.InterfaceC3302g;
import p184t2.C6702a;
/* renamed from: r4.ac0 */
/* loaded from: classes2.dex */
public final class ac0 implements InterfaceC3299d<InterfaceC3302g, Object> {

    /* renamed from: a */
    public final /* synthetic */ lb0 f20454a;

    /* renamed from: b */
    public final /* synthetic */ ec0 f20455b;

    public ac0(ec0 ec0Var, lb0 lb0Var) {
        this.f20455b = ec0Var;
        this.f20454a = lb0Var;
    }

    @Override // p041d3.InterfaceC3299d
    /* renamed from: a */
    public final void mo5392a(C6702a c6702a) {
        Object obj;
        try {
            obj = this.f20455b.f22929a;
            String canonicalName = obj.getClass().getCanonicalName();
            int m3613a = c6702a.m3613a();
            String m3611c = c6702a.m3611c();
            String m3612b = c6702a.m3612b();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 87 + String.valueOf(m3611c).length() + String.valueOf(m3612b).length());
            sb.append(canonicalName);
            sb.append("failed to loaded mediation ad: ErrorCode = ");
            sb.append(m3613a);
            sb.append(". ErrorMessage = ");
            sb.append(m3611c);
            sb.append(". ErrorDomain = ");
            sb.append(m3612b);
            cm0.m12442a(sb.toString());
            this.f20454a.mo5475u5(c6702a.m3610d());
            this.f20454a.mo5490Z6(c6702a.m3613a(), c6702a.m3611c());
            this.f20454a.mo5492W(c6702a.m3613a());
        } catch (RemoteException e) {
            cm0.m12439d("", e);
        }
    }
}
