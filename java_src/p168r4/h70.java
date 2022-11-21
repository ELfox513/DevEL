package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.h70 */
/* loaded from: classes2.dex */
public final class h70 implements Parcelable.Creator<g70> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ g70[] newArray(int i) {
        return new g70[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ g70 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        boolean z = false;
        String str = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 1) {
                if (m1504m != 2) {
                    if (m1504m != 3) {
                        if (m1504m != 4) {
                            C7409b.m1492y(parcel, m1498s);
                        } else {
                            str2 = C7409b.m1510g(parcel, m1498s);
                        }
                    } else {
                        i = C7409b.m1496u(parcel, m1498s);
                    }
                } else {
                    z = C7409b.m1503n(parcel, m1498s);
                }
            } else {
                str = C7409b.m1510g(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new g70(str, z, i, str2);
    }
}
