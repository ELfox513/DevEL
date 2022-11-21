package p220x3;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import p228y3.C7409b;
/* renamed from: x3.o0 */
/* loaded from: classes.dex */
public final class C7291o0 implements Parcelable.Creator<C7287n0> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7287n0 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        Account account = null;
        GoogleSignInAccount googleSignInAccount = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m == 1) {
                i = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m == 2) {
                account = (Account) C7409b.m1511f(parcel, m1498s, Account.CREATOR);
            } else if (m1504m == 3) {
                i2 = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m != 4) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                googleSignInAccount = (GoogleSignInAccount) C7409b.m1511f(parcel, m1498s, GoogleSignInAccount.CREATOR);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C7287n0(i, account, i2, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7287n0[] newArray(int i) {
        return new C7287n0[i];
    }
}
