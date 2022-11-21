package p088i5;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import p185t3.C6734b;
import p213w4.BinderC7179b;
import p213w4.C7180c;
/* renamed from: i5.e */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC4131e extends BinderC7179b implements InterfaceC4132f {
    public AbstractBinderC4131e() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // p213w4.BinderC7179b
    /* renamed from: L0 */
    public final boolean mo2223L0(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 3:
                C6734b c6734b = (C6734b) C7180c.m2222a(parcel, C6734b.CREATOR);
                C4128b c4128b = (C4128b) C7180c.m2222a(parcel, C4128b.CREATOR);
                break;
            case 4:
                Status status = (Status) C7180c.m2222a(parcel, Status.CREATOR);
                break;
            case 5:
            default:
                return false;
            case 6:
                Status status2 = (Status) C7180c.m2222a(parcel, Status.CREATOR);
                break;
            case 7:
                Status status3 = (Status) C7180c.m2222a(parcel, Status.CREATOR);
                GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) C7180c.m2222a(parcel, GoogleSignInAccount.CREATOR);
                break;
            case 8:
                mo2596b5((C4138l) C7180c.m2222a(parcel, C4138l.CREATOR));
                break;
            case 9:
                C4134h c4134h = (C4134h) C7180c.m2222a(parcel, C4134h.CREATOR);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
