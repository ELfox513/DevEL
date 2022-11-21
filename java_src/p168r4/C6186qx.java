package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.qx */
/* loaded from: classes2.dex */
public final class C6186qx implements Parcelable.Creator<C6149px> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6149px[] newArray(int i) {
        return new C6149px[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6149px createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        int i = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            if (C7409b.m1504m(m1498s) != 2) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                i = C7409b.m1496u(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C6149px(i);
    }
}
