package p220x3;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: x3.j1 */
/* loaded from: classes.dex */
public final class C7276j1 implements Parcelable.Creator<C7258e> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7258e createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        C7303s c7303s = null;
        int[] iArr = null;
        int[] iArr2 = null;
        boolean z = false;
        boolean z2 = false;
        int i = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 1:
                    c7303s = (C7303s) C7409b.m1511f(parcel, m1498s, C7303s.CREATOR);
                    break;
                case 2:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                case 3:
                    z2 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 4:
                    iArr = C7409b.m1513d(parcel, m1498s);
                    break;
                case 5:
                    i = C7409b.m1496u(parcel, m1498s);
                    break;
                case 6:
                    iArr2 = C7409b.m1513d(parcel, m1498s);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C7258e(c7303s, z, z2, iArr, i, iArr2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7258e[] newArray(int i) {
        return new C7258e[i];
    }
}
