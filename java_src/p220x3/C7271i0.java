package p220x3;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: x3.i0 */
/* loaded from: classes.dex */
public final class C7271i0 implements Parcelable.Creator<C7286n> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7286n createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        String str2 = null;
        long j = 0;
        long j2 = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
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
                    j = C7409b.m1495v(parcel, m1498s);
                    break;
                case 5:
                    j2 = C7409b.m1495v(parcel, m1498s);
                    break;
                case 6:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 7:
                    str2 = C7409b.m1510g(parcel, m1498s);
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
        return new C7286n(i, i2, i3, j, j2, str, str2, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7286n[] newArray(int i) {
        return new C7286n[i];
    }
}
