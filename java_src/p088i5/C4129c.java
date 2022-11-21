package p088i5;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: i5.c */
/* loaded from: classes2.dex */
public final class C4129c implements Parcelable.Creator<C4128b> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C4128b createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        int i = 0;
        Intent intent = null;
        int i2 = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m == 1) {
                i = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m == 2) {
                i2 = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m != 3) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                intent = (Intent) C7409b.m1511f(parcel, m1498s, Intent.CREATOR);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C4128b(i, i2, intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C4128b[] newArray(int i) {
        return new C4128b[i];
    }
}
