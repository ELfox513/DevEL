package p078h4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: h4.u */
/* loaded from: classes.dex */
public final class C4045u implements Parcelable.Creator<C4035k> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4035k[] newArray(int i) {
        return new C4035k[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4035k createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        C4034j c4034j = null;
        C4034j c4034j2 = null;
        long j = 0;
        long j2 = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 1) {
                if (m1504m != 2) {
                    if (m1504m != 3) {
                        if (m1504m != 4) {
                            C7409b.m1492y(parcel, m1498s);
                        } else {
                            c4034j2 = (C4034j) C7409b.m1511f(parcel, m1498s, C4034j.CREATOR);
                        }
                    } else {
                        c4034j = (C4034j) C7409b.m1511f(parcel, m1498s, C4034j.CREATOR);
                    }
                } else {
                    j2 = C7409b.m1495v(parcel, m1498s);
                }
            } else {
                j = C7409b.m1495v(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C4035k(j, j2, c4034j, c4034j2);
    }
}
