package p167r3;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r3.d */
/* loaded from: classes.dex */
public final class C5537d implements Parcelable.Creator<C5533a> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C5533a createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        int i = 0;
        Bundle bundle = null;
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
                bundle = C7409b.m1515b(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C5533a(i, i2, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C5533a[] newArray(int i) {
        return new C5533a[i];
    }
}
