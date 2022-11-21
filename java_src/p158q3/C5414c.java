package p158q3;

import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import p194u3.InterfaceC6909l;
/* renamed from: q3.c */
/* loaded from: classes.dex */
public class C5414c implements InterfaceC6909l {

    /* renamed from: a */
    public Status f20096a;

    /* renamed from: b */
    public GoogleSignInAccount f20097b;

    /* renamed from: a */
    public GoogleSignInAccount m13321a() {
        return this.f20097b;
    }

    @Override // p194u3.InterfaceC6909l
    public Status getStatus() {
        return this.f20096a;
    }

    public C5414c(GoogleSignInAccount googleSignInAccount, Status status) {
        this.f20097b = googleSignInAccount;
        this.f20096a = status;
    }
}
