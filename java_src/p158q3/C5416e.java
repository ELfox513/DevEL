package p158q3;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import p228y3.C7409b;
/* renamed from: q3.e */
/* loaded from: classes.dex */
public final class C5416e implements Parcelable.Creator<GoogleSignInAccount> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GoogleSignInAccount createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        String str6 = null;
        ArrayList arrayList = null;
        String str7 = null;
        String str8 = null;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 1:
                    i = C7409b.m1496u(parcel, m1498s);
                    break;
                case 2:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 3:
                    str2 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 4:
                    str3 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 5:
                    str4 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 6:
                    uri = (Uri) C7409b.m1511f(parcel, m1498s, Uri.CREATOR);
                    break;
                case 7:
                    str5 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 8:
                    j = C7409b.m1495v(parcel, m1498s);
                    break;
                case 9:
                    str6 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 10:
                    arrayList = C7409b.m1506k(parcel, m1498s, Scope.CREATOR);
                    break;
                case 11:
                    str7 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 12:
                    str8 = C7409b.m1510g(parcel, m1498s);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, j, str6, arrayList, str7, str8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GoogleSignInAccount[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
