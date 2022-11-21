package p088i5;

import android.os.Parcel;
import android.os.Parcelable;
import p185t3.C6734b;
import p220x3.C7295p0;
import p228y3.C7409b;
/* renamed from: i5.m */
/* loaded from: classes2.dex */
public final class C4139m implements Parcelable.Creator<C4138l> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C4138l createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        C6734b c6734b = null;
        C7295p0 c7295p0 = null;
        int i = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m == 1) {
                i = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m == 2) {
                c6734b = (C6734b) C7409b.m1511f(parcel, m1498s, C6734b.CREATOR);
            } else if (m1504m != 3) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                c7295p0 = (C7295p0) C7409b.m1511f(parcel, m1498s, C7295p0.CREATOR);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C4138l(i, c6734b, c7295p0);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C4138l[] newArray(int i) {
        return new C4138l[i];
    }
}
