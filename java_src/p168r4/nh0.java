package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.nh0 */
/* loaded from: classes2.dex */
public final class nh0 implements Parcelable.Creator<mh0> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ mh0[] newArray(int i) {
        return new mh0[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ mh0 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        C6293tt c6293tt = null;
        String str = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 2) {
                if (m1504m != 3) {
                    C7409b.m1492y(parcel, m1498s);
                } else {
                    str = C7409b.m1510g(parcel, m1498s);
                }
            } else {
                c6293tt = (C6293tt) C7409b.m1511f(parcel, m1498s, C6293tt.CREATOR);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new mh0(c6293tt, str);
    }
}
