package p088i5;

import android.os.Parcel;
import android.os.Parcelable;
import p220x3.C7287n0;
import p228y3.C7409b;
/* renamed from: i5.k */
/* loaded from: classes2.dex */
public final class C4137k implements Parcelable.Creator<C4136j> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C4136j createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        int i = 0;
        C7287n0 c7287n0 = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m == 1) {
                i = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m != 2) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                c7287n0 = (C7287n0) C7409b.m1511f(parcel, m1498s, C7287n0.CREATOR);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C4136j(i, c7287n0);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C4136j[] newArray(int i) {
        return new C4136j[i];
    }
}
