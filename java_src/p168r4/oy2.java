package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.oy2 */
/* loaded from: classes2.dex */
public final class oy2 implements Parcelable.Creator<ny2> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ny2[] newArray(int i) {
        return new ny2[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ny2 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        int i = 0;
        byte[] bArr = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 1) {
                if (m1504m != 2) {
                    C7409b.m1492y(parcel, m1498s);
                } else {
                    bArr = C7409b.m1514c(parcel, m1498s);
                }
            } else {
                i = C7409b.m1496u(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new ny2(i, bArr);
    }
}
