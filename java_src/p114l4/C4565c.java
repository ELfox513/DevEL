package p114l4;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: l4.c */
/* loaded from: classes.dex */
public final class C4565c implements Parcelable.Creator<C4563a> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4563a[] newArray(int i) {
        return new C4563a[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4563a createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        String str2 = null;
        Uri uri = null;
        Uri uri2 = null;
        Uri uri3 = null;
        long j = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 1:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 2:
                    str2 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 3:
                    j = C7409b.m1495v(parcel, m1498s);
                    break;
                case 4:
                    uri = (Uri) C7409b.m1511f(parcel, m1498s, Uri.CREATOR);
                    break;
                case 5:
                    uri2 = (Uri) C7409b.m1511f(parcel, m1498s, Uri.CREATOR);
                    break;
                case 6:
                    uri3 = (Uri) C7409b.m1511f(parcel, m1498s, Uri.CREATOR);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C4563a(str, str2, j, uri, uri2, uri3);
    }
}
