package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.bu */
/* loaded from: classes2.dex */
public final class C5628bu implements Parcelable.Creator<C5591au> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C5591au[] newArray(int i) {
        return new C5591au[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C5591au createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        long j = 0;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 1) {
                if (m1504m != 2) {
                    if (m1504m != 3) {
                        if (m1504m != 4) {
                            C7409b.m1492y(parcel, m1498s);
                        } else {
                            j = C7409b.m1495v(parcel, m1498s);
                        }
                    } else {
                        str = C7409b.m1510g(parcel, m1498s);
                    }
                } else {
                    i2 = C7409b.m1496u(parcel, m1498s);
                }
            } else {
                i = C7409b.m1496u(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C5591au(i, i2, str, j);
    }
}
