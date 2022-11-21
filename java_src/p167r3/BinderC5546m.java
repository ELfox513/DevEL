package p167r3;

import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import p158q3.C5414c;
/* renamed from: r3.m */
/* loaded from: classes.dex */
public final class BinderC5546m extends BinderC5538e {

    /* renamed from: a */
    public final /* synthetic */ C5543j f20313a;

    public BinderC5546m(C5543j c5543j) {
        this.f20313a = c5543j;
    }

    @Override // p167r3.BinderC5538e, p167r3.InterfaceC5553t
    /* renamed from: J2 */
    public final void mo13072J2(GoogleSignInAccount googleSignInAccount, Status status) {
        if (googleSignInAccount != null) {
            C5552s.m13076c(this.f20313a.f20310r).m13077b(this.f20313a.f20311s, googleSignInAccount);
        }
        this.f20313a.m23029h(new C5414c(googleSignInAccount, status));
    }
}
