package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.t70 */
/* loaded from: classes2.dex */
public final class t70 implements Parcelable.Creator<s70> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ s70[] newArray(int i) {
        return new s70[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ s70 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 1) {
                if (m1504m != 2) {
                    if (m1504m != 3) {
                        if (m1504m != 1000) {
                            C7409b.m1492y(parcel, m1498s);
                        } else {
                            i = C7409b.m1496u(parcel, m1498s);
                        }
                    } else {
                        i3 = C7409b.m1496u(parcel, m1498s);
                    }
                } else {
                    str = C7409b.m1510g(parcel, m1498s);
                }
            } else {
                i2 = C7409b.m1496u(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new s70(i, i2, str, i3);
    }
}
