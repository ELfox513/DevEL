package p220x3;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: x3.z0 */
/* loaded from: classes.dex */
public final class C7324z0 implements Parcelable.Creator<C7303s> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7303s createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m == 1) {
                i = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m == 2) {
                z = C7409b.m1503n(parcel, m1498s);
            } else if (m1504m == 3) {
                z2 = C7409b.m1503n(parcel, m1498s);
            } else if (m1504m == 4) {
                i2 = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m != 5) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                i3 = C7409b.m1496u(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C7303s(i, z, z2, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7303s[] newArray(int i) {
        return new C7303s[i];
    }
}
