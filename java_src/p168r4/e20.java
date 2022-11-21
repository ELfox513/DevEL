package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.e20 */
/* loaded from: classes2.dex */
public final class e20 implements Parcelable.Creator<d20> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ d20[] newArray(int i) {
        return new d20[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ d20 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        C6446xy c6446xy = null;
        int i = 0;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        boolean z3 = false;
        int i4 = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 1:
                    i = C7409b.m1496u(parcel, m1498s);
                    break;
                case 2:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                case 3:
                    i2 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 4:
                    z2 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 5:
                    i3 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 6:
                    c6446xy = (C6446xy) C7409b.m1511f(parcel, m1498s, C6446xy.CREATOR);
                    break;
                case 7:
                    z3 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 8:
                    i4 = C7409b.m1496u(parcel, m1498s);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new d20(i, z, i2, z2, i3, c6446xy, z3, i4);
    }
}
