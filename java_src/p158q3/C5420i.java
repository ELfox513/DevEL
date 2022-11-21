package p158q3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.SignInAccount;
import p228y3.C7409b;
/* renamed from: q3.i */
/* loaded from: classes.dex */
public final class C5420i implements Parcelable.Creator<SignInAccount> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInAccount[] newArray(int i) {
        return new SignInAccount[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInAccount createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = "";
        GoogleSignInAccount googleSignInAccount = null;
        String str2 = "";
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 4) {
                if (m1504m != 7) {
                    if (m1504m != 8) {
                        C7409b.m1492y(parcel, m1498s);
                    } else {
                        str2 = C7409b.m1510g(parcel, m1498s);
                    }
                } else {
                    googleSignInAccount = (GoogleSignInAccount) C7409b.m1511f(parcel, m1498s, GoogleSignInAccount.CREATOR);
                }
            } else {
                str = C7409b.m1510g(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new SignInAccount(str, googleSignInAccount, str2);
    }
}
