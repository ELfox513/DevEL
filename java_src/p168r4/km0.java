package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.km0 */
/* loaded from: classes2.dex */
public final class km0 implements Parcelable.Creator<im0> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ im0[] newArray(int i) {
        return new im0[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ im0 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 2) {
                if (m1504m != 3) {
                    if (m1504m != 4) {
                        if (m1504m != 5) {
                            if (m1504m != 6) {
                                C7409b.m1492y(parcel, m1498s);
                            } else {
                                z2 = C7409b.m1503n(parcel, m1498s);
                            }
                        } else {
                            z = C7409b.m1503n(parcel, m1498s);
                        }
                    } else {
                        i2 = C7409b.m1496u(parcel, m1498s);
                    }
                } else {
                    i = C7409b.m1496u(parcel, m1498s);
                }
            } else {
                str = C7409b.m1510g(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new im0(str, i, i2, z, z2);
    }
}
