package p220x3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import p228y3.C7409b;
/* renamed from: x3.y */
/* loaded from: classes.dex */
public final class C7321y implements Parcelable.Creator<C7309u> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7309u createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m == 1) {
                i = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m != 2) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                arrayList = C7409b.m1506k(parcel, m1498s, C7286n.CREATOR);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C7309u(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7309u[] newArray(int i) {
        return new C7309u[i];
    }
}
