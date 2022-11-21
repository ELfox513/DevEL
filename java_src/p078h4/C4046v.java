package p078h4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: h4.v */
/* loaded from: classes.dex */
public final class C4046v implements Parcelable.Creator<C4047w> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4047w[] newArray(int i) {
        return new C4047w[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4047w createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        int i = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 1) {
                if (m1504m != 2) {
                    if (m1504m != 3) {
                        if (m1504m != 4) {
                            C7409b.m1492y(parcel, m1498s);
                        } else {
                            str3 = C7409b.m1510g(parcel, m1498s);
                        }
                    } else {
                        str2 = C7409b.m1510g(parcel, m1498s);
                    }
                } else {
                    str = C7409b.m1510g(parcel, m1498s);
                }
            } else {
                i = C7409b.m1496u(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C4047w(i, str, str2, str3);
    }
}
