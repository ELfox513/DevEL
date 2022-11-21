package p185t3;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: t3.s */
/* loaded from: classes.dex */
public final class C6763s implements Parcelable.Creator<C6738d> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6738d createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        int i = 0;
        long j = -1;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m == 1) {
                str = C7409b.m1510g(parcel, m1498s);
            } else if (m1504m == 2) {
                i = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m != 3) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                j = C7409b.m1495v(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C6738d(str, i, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6738d[] newArray(int i) {
        return new C6738d[i];
    }
}
