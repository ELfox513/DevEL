package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.al0 */
/* loaded from: classes2.dex */
public final class al0 implements Parcelable.Creator<zk0> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zk0[] newArray(int i) {
        return new zk0[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zk0 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        String str2 = null;
        C6478yt c6478yt = null;
        C6293tt c6293tt = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 1) {
                if (m1504m != 2) {
                    if (m1504m != 3) {
                        if (m1504m != 4) {
                            C7409b.m1492y(parcel, m1498s);
                        } else {
                            c6293tt = (C6293tt) C7409b.m1511f(parcel, m1498s, C6293tt.CREATOR);
                        }
                    } else {
                        c6478yt = (C6478yt) C7409b.m1511f(parcel, m1498s, C6478yt.CREATOR);
                    }
                } else {
                    str2 = C7409b.m1510g(parcel, m1498s);
                }
            } else {
                str = C7409b.m1510g(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new zk0(str, str2, c6478yt, c6293tt);
    }
}
