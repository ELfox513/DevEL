package p220x3;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p185t3.C6738d;
import p228y3.C7409b;
/* renamed from: x3.i1 */
/* loaded from: classes.dex */
public final class C7272i1 implements Parcelable.Creator<C7269h1> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7269h1 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        Bundle bundle = null;
        C6738d[] c6738dArr = null;
        C7258e c7258e = null;
        int i = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m == 1) {
                bundle = C7409b.m1515b(parcel, m1498s);
            } else if (m1504m == 2) {
                c6738dArr = (C6738d[]) C7409b.m1507j(parcel, m1498s, C6738d.CREATOR);
            } else if (m1504m == 3) {
                i = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m != 4) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                c7258e = (C7258e) C7409b.m1511f(parcel, m1498s, C7258e.CREATOR);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C7269h1(bundle, c6738dArr, i, c7258e);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7269h1[] newArray(int i) {
        return new C7269h1[i];
    }
}
