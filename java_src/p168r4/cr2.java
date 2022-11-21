package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.cr2 */
/* loaded from: classes2.dex */
public final class cr2 implements Parcelable.Creator<br2> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ br2[] newArray(int i) {
        return new br2[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ br2 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 1:
                    i = C7409b.m1496u(parcel, m1498s);
                    break;
                case 2:
                    i2 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 3:
                    i3 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 4:
                    i4 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 5:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 6:
                    i5 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 7:
                    i6 = C7409b.m1496u(parcel, m1498s);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new br2(i, i2, i3, i4, str, i5, i6);
    }
}
