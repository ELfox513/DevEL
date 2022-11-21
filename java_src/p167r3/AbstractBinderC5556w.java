package p167r3;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import p204v4.BinderC7064c;
import p204v4.C7066e;
/* renamed from: r3.w */
/* loaded from: classes.dex */
public abstract class AbstractBinderC5556w extends BinderC7064c implements InterfaceC5553t {
    public AbstractBinderC5556w() {
        super("com.google.android.gms.auth.api.signin.internal.ISignInCallbacks");
    }

    @Override // p204v4.BinderC7064c
    /* renamed from: j0 */
    public final boolean mo2576j0(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 101:
                mo13072J2((GoogleSignInAccount) C7066e.m2573a(parcel, GoogleSignInAccount.CREATOR), (Status) C7066e.m2573a(parcel, Status.CREATOR));
                break;
            case 102:
                mo13070l1((Status) C7066e.m2573a(parcel, Status.CREATOR));
                break;
            case 103:
                mo13071X1((Status) C7066e.m2573a(parcel, Status.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
