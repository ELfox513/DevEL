package p168r4;

import android.os.RemoteException;
import p041d3.AbstractC3317v;
import p041d3.InterfaceC3299d;
import p184t2.C6702a;
/* renamed from: r4.cc0 */
/* loaded from: classes2.dex */
public final class cc0 implements InterfaceC3299d<AbstractC3317v, Object> {

    /* renamed from: a */
    public final /* synthetic */ lb0 f21472a;

    /* renamed from: b */
    public final /* synthetic */ ec0 f21473b;

    public cc0(ec0 ec0Var, lb0 lb0Var) {
        this.f21473b = ec0Var;
        this.f21472a = lb0Var;
    }

    @Override // p041d3.InterfaceC3299d
    /* renamed from: a */
    public final void mo5392a(C6702a c6702a) {
        Object obj;
        try {
            obj = this.f21473b.f22929a;
            String canonicalName = obj.getClass().getCanonicalName();
            int m3613a = c6702a.m3613a();
            String m3611c = c6702a.m3611c();
            String m3612b = c6702a.m3612b();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 85 + String.valueOf(m3611c).length() + String.valueOf(m3612b).length());
            sb.append(canonicalName);
            sb.append("failed to load mediation ad: ErrorCode = ");
            sb.append(m3613a);
            sb.append(". ErrorMessage = ");
            sb.append(m3611c);
            sb.append(". ErrorDomain = ");
            sb.append(m3612b);
            cm0.m12442a(sb.toString());
            this.f21472a.mo5475u5(c6702a.m3610d());
            this.f21472a.mo5490Z6(c6702a.m3613a(), c6702a.m3611c());
            this.f21472a.mo5492W(c6702a.m3613a());
        } catch (RemoteException e) {
            cm0.m12439d("", e);
        }
    }
}
