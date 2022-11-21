package p158q3;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import p167r3.C5533a;
import p228y3.C7409b;
/* renamed from: q3.g */
/* loaded from: classes.dex */
public final class C5418g implements Parcelable.Creator<GoogleSignInOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GoogleSignInOptions createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        ArrayList arrayList = null;
        Account account = null;
        String str = null;
        String str2 = null;
        ArrayList arrayList2 = null;
        String str3 = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 1:
                    i = C7409b.m1496u(parcel, m1498s);
                    break;
                case 2:
                    arrayList = C7409b.m1506k(parcel, m1498s, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) C7409b.m1511f(parcel, m1498s, Account.CREATOR);
                    break;
                case 4:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                case 5:
                    z2 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 6:
                    z3 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 7:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 8:
                    str2 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 9:
                    arrayList2 = C7409b.m1506k(parcel, m1498s, C5533a.CREATOR);
                    break;
                case 10:
                    str3 = C7409b.m1510g(parcel, m1498s);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new GoogleSignInOptions(i, arrayList, account, z, z2, z3, str, str2, arrayList2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GoogleSignInOptions[] newArray(int i) {
        return new GoogleSignInOptions[i];
    }
}
