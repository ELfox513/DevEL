package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.oi0 */
/* loaded from: classes2.dex */
public final class oi0 implements Parcelable.Creator<ni0> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ni0[] newArray(int i) {
        return new ni0[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ni0 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 1) {
                if (m1504m != 2) {
                    C7409b.m1492y(parcel, m1498s);
                } else {
                    str2 = C7409b.m1510g(parcel, m1498s);
                }
            } else {
                str = C7409b.m1510g(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new ni0(str, str2);
    }
}
