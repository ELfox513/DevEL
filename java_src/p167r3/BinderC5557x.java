package p167r3;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.auth.api.signin.C1408a;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import p026c4.C1059t;
import p158q3.C5411b;
/* renamed from: r3.x */
/* loaded from: classes.dex */
public final class BinderC5557x extends AbstractBinderC5554u {

    /* renamed from: a */
    public final Context f20320a;

    /* renamed from: n */
    public final void m13068n() {
        if (C1059t.m24725a(this.f20320a, Binder.getCallingUid())) {
            return;
        }
        int callingUid = Binder.getCallingUid();
        StringBuilder sb = new StringBuilder(52);
        sb.append("Calling UID ");
        sb.append(callingUid);
        sb.append(" is not Google Play services.");
        throw new SecurityException(sb.toString());
    }

    public BinderC5557x(Context context) {
        this.f20320a = context;
    }

    @Override // p167r3.InterfaceC5551r
    /* renamed from: m */
    public final void mo13069m() {
        m13068n();
        C5552s.m13076c(this.f20320a).m13078a();
    }

    @Override // p167r3.InterfaceC5551r
    /* renamed from: o */
    public final void mo13067o() {
        m13068n();
        C5536c m13100b = C5536c.m13100b(this.f20320a);
        GoogleSignInAccount m13099c = m13100b.m13099c();
        GoogleSignInOptions googleSignInOptions = GoogleSignInOptions.f7669w;
        if (m13099c != null) {
            googleSignInOptions = m13100b.m13098d();
        }
        C5411b m23049b = C1408a.m23049b(this.f20320a, googleSignInOptions);
        if (m13099c != null) {
            m23049b.m13324y();
        } else {
            m23049b.m13323z();
        }
    }
}
