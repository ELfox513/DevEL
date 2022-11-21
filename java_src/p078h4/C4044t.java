package p078h4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: h4.t */
/* loaded from: classes.dex */
public final class C4044t implements Parcelable.Creator<C4034j> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4034j[] newArray(int i) {
        return new C4034j[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4034j createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        long j = 0;
        long j2 = 0;
        int i = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 1) {
                if (m1504m != 2) {
                    if (m1504m != 3) {
                        C7409b.m1492y(parcel, m1498s);
                    } else {
                        j2 = C7409b.m1495v(parcel, m1498s);
                    }
                } else {
                    j = C7409b.m1495v(parcel, m1498s);
                }
            } else {
                i = C7409b.m1496u(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C4034j(i, j, j2);
    }
}
