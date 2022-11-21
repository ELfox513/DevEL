package p168r4;

import android.os.RemoteException;
import p041d3.InterfaceC3299d;
import p041d3.InterfaceC3312q;
import p184t2.C6702a;
/* renamed from: r4.dc0 */
/* loaded from: classes2.dex */
public final class dc0 implements InterfaceC3299d<InterfaceC3312q, Object> {

    /* renamed from: a */
    public final /* synthetic */ lb0 f22220a;

    /* renamed from: b */
    public final /* synthetic */ ec0 f22221b;

    public dc0(ec0 ec0Var, lb0 lb0Var) {
        this.f22221b = ec0Var;
        this.f22220a = lb0Var;
    }

    @Override // p041d3.InterfaceC3299d
    /* renamed from: a */
    public final void mo5392a(C6702a c6702a) {
        Object obj;
        try {
            obj = this.f22221b.f22929a;
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
            this.f22220a.mo5475u5(c6702a.m3610d());
            this.f22220a.mo5490Z6(c6702a.m3613a(), c6702a.m3611c());
            this.f22220a.mo5492W(c6702a.m3613a());
        } catch (RemoteException e) {
            cm0.m12439d("", e);
        }
    }
}
